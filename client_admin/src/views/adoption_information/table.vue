<template>
	<el-main class="bg">
		<el-form label-position="right" :model="query" class="form p_4" label-width="120">
			<el-row>
				<el-col :xs="24" :sm="24" :lg="8">
					<el-form-item label="宠物状态">
						<el-select v-model="query.pet_status">
                            <el-option v-for="o in list_pet_status" :key="o" :label="o"
                            	:value="o">
                            </el-option>
						</el-select>
					</el-form-item>
				</el-col>
				<el-col :xs="24" :sm="24" :lg="8">
					<el-form-item label="宠物名称">
						<el-input v-model="query.pet_name"></el-input>
					</el-form-item>
				</el-col>
				<el-col :xs="24" :sm="24" :lg="8">
					<el-form-item label="宠物种类">
						<el-select v-model="query.pet_species">
							<el-option v-for="o in list_pet_species" :key="o.pet_species" :label="o.pet_species"
								:value="o.pet_species">
							</el-option>
						</el-select>
					</el-form-item>
				</el-col>
				<el-col :xs="24" :sm="24" :lg="8">
					<el-form-item label="宠物性别">
						<el-select v-model="query.pet_sex">
                            <el-option v-for="o in list_pet_sex" :key="o" :label="o"
                            	:value="o">
                            </el-option>
						</el-select>
					</el-form-item>
				</el-col>

				<el-col :xs="24" :sm="10" :lg="8">
					<el-form-item>
						<el-button type="primary" @click="search()">查询</el-button>
						<el-button @click="reset()" style="margin-right: 74px;">重置</el-button>
						<router-link v-if="user_group == '管理员' || $check_action('/adoption_information/table','add') || $check_action('/adoption_information/view','add')" class="el-button el-button--default el-button--primary" to="./view?">添加
						</router-link>
						<el-button v-if="user_group == '管理员' || $check_action('/adoption_information/table','del') || $check_action('/adoption_information/view','del')" class="" type="danger" @click="delInfo()">删除</el-button>
					</el-form-item>
				</el-col>

			</el-row>
		</el-form>
		<el-table :data="list" @selection-change="selectionChange" @sort-change="$sortChange" style="width: 100%" id="dataTable">
			<el-table-column fixed type="selection" tooltip-effect="dark" width="55">
			</el-table-column>
			<el-table-column prop="title_name" label="标题名称"
				v-if="user_group == '管理员' || $check_field('get','title_name')" min-width="200">
			</el-table-column>
			<el-table-column prop="release_time" label="发布时间"
				v-if="user_group == '管理员' || $check_field('get','release_time')" min-width="200">
                <template slot-scope="scope">
                	{{ $toTime(scope.row["release_time"],"yyyy-MM-dd") }}
                </template>
			</el-table-column>
			<el-table-column prop="pet_status" label="宠物状态"
				v-if="user_group == '管理员' || $check_field('get','pet_status')" min-width="200">
			</el-table-column>
			<el-table-column prop="pet_name" label="宠物名称"
				v-if="user_group == '管理员' || $check_field('get','pet_name')" min-width="200">
			</el-table-column>
			<el-table-column prop="pet_species" label="宠物种类"
				v-if="user_group == '管理员' || $check_field('get','pet_species')" min-width="200">
			</el-table-column>
			<el-table-column prop="pet_sex" label="宠物性别"
				v-if="user_group == '管理员' || $check_field('get','pet_sex')" min-width="200">
			</el-table-column>
			<el-table-column prop="pet_age" label="宠物年龄"
				v-if="user_group == '管理员' || $check_field('get','pet_age')" min-width="200">
			</el-table-column>
			<el-table-column prop="pet_pictures" label="宠物图片"
				v-if="user_group == '管理员' || $check_field('get','pet_pictures')" min-width="200">
				<template slot-scope="scope">
					<el-image style="width: 100px; height: 100px" :src="$fullUrl(scope.row['pet_pictures'])"
						:preview-src-list="[$fullUrl(scope.row['pet_pictures'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</template>
			</el-table-column>
			<el-table-column prop="detailed_information" label="详细信息"
				v-if="user_group == '管理员' || $check_field('get','detailed_information')" min-width="200">
			</el-table-column>
			<el-table-column prop="remark_information" label="备注信息"
				v-if="user_group == '管理员' || $check_field('get','remark_information')" min-width="200">
			</el-table-column>

            <el-table-column sortable prop="create_time" label="创建时间" min-width="200">
                <template slot-scope="scope">
                	{{ $toTime(scope.row["create_time"],"yyyy-MM-dd hh:mm:ss") }}
                </template>
            </el-table-column>

			<el-table-column sortable prop="update_time" label="更新时间" min-width="200">
                <template slot-scope="scope">
                	{{ $toTime(scope.row["update_time"],"yyyy-MM-dd hh:mm:ss") }}
                </template>
			</el-table-column>
			<el-table-column fixed="right" label="操作" min-width="120" v-if="user_group == '管理员' || $check_action('/adoption_information/table','set') || $check_action('/adoption_information/view','set') || $check_action('/adoption_information/view','get') || $check_action('/领养/table','add') || $check_action('/领养/view','add')" >


				<template slot-scope="scope">
					<router-link class="el-button el-button--small is-plain el-button--success" style="margin: 5px !important;"
					v-if="user_group == '管理员' || $check_action('/adoption_information/table','set') || $check_action('/adoption_information/view','set') || $check_action('/adoption_information/view','get')"
						:to="'./view?' + field + '=' + scope.row[field]"
						 size="small">
						<span>详情</span>
					</router-link>
					<router-link v-if="user_group == '管理员' || $check_comment('/adoption_information/table')" class="el-button el-button--small is-plain el-button--primary"
								 :to="'../comment/table?size=10&page=1&source_table=adoption_information&source_field=' + field + '&source_id=' + scope.row[field]" size="small">
						查看评论
					</router-link>
				</template>
			</el-table-column>

		</el-table>

		<!-- 分页器 -->
		<div class="mt text_center">
			<el-pagination @size-change="handleSizeChange" @current-change="handleCurrentChange"
				:current-page="query.page" :page-sizes="[7, 10, 30, 100]" :page-size="query.size"
				layout="total, sizes, prev, pager, next, jumper" :total="count">
			</el-pagination>
		</div>
		<!-- /分页器 -->

		<div class="modal_wrap" v-if="showModal">
			<div class="modal_box">
				<!-- <div class="modal_box_close" @click="closeModal">X</div> -->
				<p class="modal_box_title">重要提醒</p>
				<p class="modal_box_text">当前有数据达到预警值！</p>
				<div class="btn_box">
					<span @click="closeModal">取消</span>
					<span @click="closeModal">确定</span>
				</div>
			</div>
		</div>


	</el-main>
</template>
<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				// 弹框
				showModal: false,
				// 获取数据地址
				url_get_list: "~/api/adoption_information/get_list?like=0",
				url_del: "~/api/adoption_information/del?",

				// 字段ID
				field: "adoption_information_id",

				// 查询
				query: {
					"size": 7,
					"page": 1,
					"pet_status": "",
					"pet_name": "",
					"pet_species": "",
					"pet_sex": "",
					"login_time": "",
					"create_time": "",
					"orderby": `create_time desc`
				},
				// 数据
				list: [],
				// 宠物状态列表
				list_pet_status: ['待领养','已被领养'],
				// 宠物种类列表
				list_pet_species: [],
				// 宠物性别列表
				list_pet_sex: ['公','母'],
			}
		},
		methods: {
			// 关闭弹框
			closeModal(){
				this.showModal = false;
				},
			/**
			 * 获取宠物种类列表
			 */
			async get_list_pet_species() {
				var json = await this.$get("~/api/classification_management/get_list?");
				if(json.result){
					this.list_pet_species = json.result.list;
				}else if (json.error){
					console.log(json.error);
				}
			},

			open_tip() {
				const h = this.$createElement;

				var message = "";
				var list = this.list;

				var ifs = [ ];
				for (var n = 0; n < ifs.length; n++) {
					var o = ifs[n];
					for (var i = 0; i < list.length; i++) {
						var lt = list[i];
						if (o.type == "数内") {
							if ((o.start || o.start === 0) && (o.end || o.end === 0)) {
								if (lt[o.factor] > o.start && lt[o.factor] < o.end) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.start || o.start === 0) {
								if (lt[o.factor] > o.start) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.end || o.end === 0) {
								if (lt[o.factor] < o.end) {
									o["idx"] = o["idx"] + 1;
								}
							}
						} else if (o.type == "数外") {
							if ((o.start || o.start === 0) && (o.end || o.end === 0)) {
								if (lt[o.factor] < o.start || lt[o.factor] > o.end) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.start || o.start === 0) {
								if (lt[o.factor] < o.start) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.end || o.end === 0) {
								if (lt[o.factor] > o.end) {
									o["idx"] = o["idx"] + 1;
								}
							}
						} else if (o.type == "日内") {
							if ((o.start) && (o.end)) {
								if (lt[o.factor] > o.start && lt[o.factor] < o.end) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.start) {
								if (lt[o.factor] < o.start) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.end) {
								if (lt[o.factor] > o.end) {
									o["idx"] = o["idx"] + 1;
								}
							}
						} else if (o.type == "日外") {
							if (o.start && o.end) {
								if (lt[o.factor] < o.start || lt[o.factor] > o.end) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.start) {
								if (lt[o.factor] < o.start) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.end) {
								if (lt[o.factor] > o.end) {
									o["idx"] = o["idx"] + 1;
								}
							}
						}
					}

					if (o["idx"]) {
						message += o.title;
						if (o["type"] == "数内") {
							if (o.start || o.start === 0) {
								message += "大于" + o.start;
							}
							if ((o.start || o.start === 0) && (o.end || o.end === 0)) {
								message += "并且";
							}
							if (o.end || o.end === 0) {
								message += "小于" + o.end;
							}
						} else if (o["type"] == "数外") {
							if (o.start || o.start === 0) {
								message += "小于" + o.start;
							}
							if ((o.start || o.start === 0) || (o.end || o.end === 0)) {
								message += "或者";
							}
							if (o.end || o.end === 0) {
								message += "大于" + o.end;
							}
						} else if (o["type"] == "日内") {
							if (o.start) {
								message += "在" + o.start + "之后";
							}
							if (o.start && o.end) {
								message += "并且";
							}
							if (o.end) {
								message += "在" + o.end + "之前";
							}
						} else if (o["type"] == "日外") {
							if (o.start) {
								message += "在" + o.start + "之前";
							}
							if (o.start || o.end) {
								message += "或者";
							}
							if (o.end) {
								message += "在" + o.end + "之后";
							}
						}
						message += "的有" + o["idx"] + "条";
					}
				}

				if (message) {
					message += "，需要处理、请尽快处理。";
					this.showModal = true;
					// this.$notify({
					// 	title: '提醒',
					// 	dangerouslyUseHTMLString: true,
					// 	message: h('i', {
					// 		style: 'color: teal'
					// 	}, message)
					// });
				}
			},
			deleteRow(index, rows) {
				rows.splice(index, 1);
			}

		},
		created() {
			// 初始化宠物种类列表
			this.get_list_pet_species();
			setTimeout(() => {
				this.open_tip();
			}, 1000)
		}
	}
</script>

<style type="text/css">
	.bg {
		background: white;
	}

	.form.p_4 {
		padding: 1rem;
	}

	.form .el-input {
		width: initial;
	}

	.mt {
		margin-top: 1rem;
	}

	.text_center {
		text-align: center;
	}

	.float-right {
		float: right;
	}


	.modal_wrap{
		width: 100vw;
		height: 100vh;
		position: fixed;
		top: 0;
		left: 0;
		background: rgba(0,0,0,0.5);
		z-index: 9999999999;
	}
	.modal_wrap .modal_box{
		width: 400px;
		height: 200px;
		background: url("../../assets/modal_bg.jpg") no-repeat center;
		background-size: cover;
		position: absolute;
		top: 50%;
		left: 50%;
		margin-left: -200px;
		margin-top: -100px;
		border-radius: 10px;
		}
	.modal_wrap .modal_box .modal_box_close{
		font-size: 20px;
		position: absolute;
		top: 10px;
		right: 10px;
		cursor: pointer;
		}
	.modal_wrap .modal_box .modal_box_title{
	  text-align: center;
    font-size: 18px;
    margin: 16px auto;
    color: #fff;
    border-bottom: 1px solid rgba(117, 116, 116,0.5);
    padding-bottom: 16px;
    width: 356px;
		}
	.modal_wrap .modal_box .modal_box_text{
			text-align: center;
		font-size: 15px;
		color: #fff;
		margin-top: 25px;
		}
	.modal_wrap .modal_box .btn_box{
		display: flex;
		flex-direction: row;
		justify-content: center;
		margin-top: 42px;
		}
			.modal_wrap .modal_box .btn_box span{
				display: inline-block;
				width: 80px;
				height: 30px;
				line-height: 30px;
				text-align: center;
				border: 1px solid #ccc;
				font-size: 14px;
				cursor: pointer;
				color: #fff;
			}
	.modal_wrap .modal_box .btn_box span:nth-child(2){
		background: #409EFF;
		color: #fff;
		border-color: #409EFF;
		margin-left: 15px;
	}
</style>
