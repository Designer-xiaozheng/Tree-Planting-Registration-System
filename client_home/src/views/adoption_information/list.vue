<template>
	<div class="diy_list page_adoption_information" id="adoption_information_list">
		<div class="warp">
			<div class="container diy_list_container">
				<div class="diy_list_title">
					<div class="col">
						<span class="title">领养信息列表</span>
					</div>
				</div>
				<div class="row diy_list_search">
					<div class="col">
						<!-- 搜索栏 -->
						<div class="view">							
							<span class="diy_list_search_title">关键字搜索：</span>
							<b-form-input size="sm" class="mr-sm-2" placeholder="宠物状态搜索" v-model="query['pet_status']" />
							<b-form-input size="sm" class="mr-sm-2" placeholder="宠物名称搜索" v-model="query['pet_name']" />
							<b-form-input size="sm" class="mr-sm-2" placeholder="宠物种类搜索" v-model="query['pet_species']" />
							<b-form-input size="sm" class="mr-sm-2" placeholder="宠物性别搜索" v-model="query['pet_sex']" />
							<b-button size="sm" @click="search()" >
								<b-icon icon="search"/>
							</b-button>
						</div>
						<!-- /搜索栏 -->
					</div>
				</div>
				<div class="diy_list_select_box">
					<span class="diy_list_select_title">下拉搜索：</span>
						<div class="diy_list_dropdown_box">
						<div class="col">
							<!-- 筛选 -->
							<div class="view">
								<b-dropdown :text="title" variant="outline-dark" left>
									<b-dropdown-item @click="filter_set('全部','pet_status')">全部</b-dropdown-item>
										<b-dropdown-item v-for="(o,i) in list_pet_status" @click="filter_set(o,'pet_status')" >
										{{ o }}
										</b-dropdown-item>
								</b-dropdown>
								<b-dropdown text="宠物种类" variant="outline-dark" left>
									<b-dropdown-item @click="filter_set('全部','pet_species')">全部</b-dropdown-item>
										<b-dropdown-item v-for="(o, i) in list_pet_species" :key="i" @click="filter_set(o['pet_species'],'pet_species')" >
												{{ o['pet_species'] }}
										</b-dropdown-item>
								</b-dropdown>
								<b-dropdown :text="title" variant="outline-dark" left>
									<b-dropdown-item @click="filter_set('全部','pet_sex')">全部</b-dropdown-item>
										<b-dropdown-item v-for="(o,i) in list_pet_sex" @click="filter_set(o,'pet_sex')" >
										{{ o }}
										</b-dropdown-item>
								</b-dropdown>
							</div>
							<!-- /筛选 -->
						</div>
					</div>
					<div class="diy_list_sort_box">
						<div class="col">
							<!-- 排序 -->
							<div class="view">
								<b-dropdown text="排序" variant="outline-dark" left>
										<b-dropdown-item v-for="(o, i) in list_sort" :key="i" @click="set_sort(o)" >
												{{ o.name }}
										</b-dropdown-item>
								</b-dropdown>
							</div>
							<!--/排序 -->
						</div>
					</div>
				</div>
				<div class="row diy_list_box">
					<div class="col">
						<!-- 列表 -->
						<list_adoption_information :list="list" />
						<!-- /列表 -->
					</div>
				</div>
				<div class="row diy_list_page_box">
					<div class="col overflow-auto flex_cc">
						<!-- 分页器 -->
						<diy_pager v-model="query['page']" :size="query['size']" :count="count" v-on:toPage="toPage" v-on:toSize="toSize" ></diy_pager>
						<!-- /分页器 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import list_adoption_information from "@/components/diy/list_adoption_information.vue";
	import diy_pager from "@/components/diy/diy_pager";
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		components: {
			diy_pager,
			list_adoption_information
		},
		data() {
			return {
				url_get_list: "~/api/adoption_information/get_list?like=0",

				// 查询条件
				query: {
					keyword: "",
					page: 1,
					size: 10,
					"pet_status": "", // 宠物状态
					"pet_name": "", // 宠物名称
					"pet_species": "", // 宠物种类
					"pet_sex": "", // 宠物性别
				},

				// 排序内容
				list_sort: [{
						name: "创建时间从高到低",
						value: "`create_time` desc",
					},
					{
						name: "创建时间从低到高",
						value: "`create_time` asc",
					},
					{
						name: "更新时间从高到低",
						value: "`update_time` desc",
					},
					{
						name: "更新时间从低到高",
						value: "`update_time` asc",
					},
					{
						name: "宠物状态正序",
						value: "`pet_status` asc",
					},
					{
						name: "宠物状态倒序",
						value: "`pet_status` desc",
					},
					{
						name: "宠物名称正序",
						value: "`pet_name` asc",
					},
					{
						name: "宠物名称倒序",
						value: "`pet_name` desc",
					},
					{
						name: "宠物种类正序",
						value: "`pet_species` asc",
					},
					{
						name: "宠物种类倒序",
						value: "`pet_species` desc",
					},
					{
						name: "宠物性别正序",
						value: "`pet_sex` asc",
					},
					{
						name: "宠物性别倒序",
						value: "`pet_sex` desc",
					},
				],
				// 宠物状态列表
				"list_pet_status": ['待领养','已被领养'],
				// 宠物种类列表
				"list_pet_species": [],
				// 宠物性别列表
				"list_pet_sex": ['公','母'],
			}
		},
		methods: {
			/**
			 * 筛选选择
			 */
			filter_set(o,key) {
			    if (o == "全部") {
			        this.query[key] = "";
			    } else {
			        this.query[key] = o;
			    }
			    this.search();
			},

			/**
			 * 排序
			 */
			set_sort(o) {
			    this.query.orderby = o.value;
			    this.search();
			},
			/**
			 * 获取宠物种类列表
			 */
			async get_list_pet_species() {
				var json = await this.$get("~/api/classification_management/get_list?");
				if (json.result) {
					this.list_pet_species = json.result.list;
				} else if (json.error) {
					console.log(json.error);
				}
			},

			/**
			 * 筛选
			 */
			filter_pet_status(o) {
				if (o == "全部") {
					this.query["pet_status"] = "";
				} else {
					this.query["pet_status"] = o;
				}
				this.search();
			},
			filter_pet_species(o) {
				if (o == "全部") {
					this.query["pet_species"] = "";
				} else {
					this.query["pet_species"] = o;
				}
				this.search();
			},
			filter_pet_sex(o) {
				if (o == "全部") {
					this.query["pet_sex"] = "";
				} else {
					this.query["pet_sex"] = o;
				}
				this.search();
			},

			/**
			 * 重置
			 */
			reset() {
				this.query.pet_status = ""
				this.query.pet_name = ""
				this.query.pet_species = ""
				this.query.pet_sex = ""
				this.search();
			},

			// 返回条数
			toSize(i){
				this.query.size = i;
				this.first();
			},

			// 返回页数
			toPage(i){
				this.query.page = i;
				this.first();
			},
		},
		computed: {
		},
		created() {
			/**
			 * 获取宠物种类列表
			 */
			this.get_list_pet_species();
		}
	}
</script>

<style>
</style>
