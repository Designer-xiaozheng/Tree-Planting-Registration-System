<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>
				<!-- 文章搜索结果 -->
			  <list_result_search
				:list="result_article"
				title="宠物知识"
				source_table="article"
			  ></list_result_search>
				<!-- 论坛搜索结果 -->
			  <list_result_search
				:list="result_forum"
				title="交流中心"
				source_table="forum"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ordinary_users/list', 'get')"
				:list="result_ordinary_users_full_name"
				title="普通用户姓名"
				source_table="ordinary_users"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ordinary_users/list', 'get')"
				:list="result_ordinary_users_gender"
				title="普通用户性别"
				source_table="ordinary_users"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/adoption_information/list', 'get')"
				:list="result_adoption_information_pet_status"
				title="领养信息宠物状态"
				source_table="adoption_information"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/adoption_information/list', 'get')"
				:list="result_adoption_information_pet_name"
				title="领养信息宠物名称"
				source_table="adoption_information"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/adoption_information/list', 'get')"
				:list="result_adoption_information_pet_species"
				title="领养信息宠物种类"
				source_table="adoption_information"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/adoption_information/list', 'get')"
				:list="result_adoption_information_pet_sex"
				title="领养信息宠物性别"
				source_table="adoption_information"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/adoption_record/list', 'get')"
				:list="result_adoption_record_pet_name"
				title="领养记录宠物名称"
				source_table="adoption_record"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/adoption_record/list', 'get')"
				:list="result_adoption_record_adoption_status"
				title="领养记录领养状态"
				source_table="adoption_record"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/adoption_record/list', 'get')"
				:list="result_adoption_record_return_visit_status"
				title="领养记录回访状态"
				source_table="adoption_record"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/return_visit_record/list', 'get')"
				:list="result_return_visit_record_pet_name"
				title="回访记录宠物名称"
				source_table="return_visit_record"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/classification_management/list', 'get')"
				:list="result_classification_management_pet_species"
				title="分类管理宠物种类"
				source_table="classification_management"
			  ></list_result_search>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
	  "result_article": [],
	  "result_forum": [],
			"result_ordinary_users_full_name":[],
			"result_ordinary_users_gender":[],
			"result_adoption_information_pet_status":[],
			"result_adoption_information_pet_name":[],
			"result_adoption_information_pet_species":[],
			"result_adoption_information_pet_sex":[],
			"result_adoption_record_pet_name":[],
			"result_adoption_record_adoption_status":[],
			"result_adoption_record_return_visit_status":[],
			"result_return_visit_record_pet_name":[],
			"result_classification_management_pet_species":[],
	};
  },
  methods: {
	/**
	 * 获取文章
	 */
	get_article() {
	  this.$get("~/api/article/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_article = json.result.list;
		}
	  });
	},
	/**
	 * 获取交流中心
	 */
	get_forum() {
	  this.$get("~/api/forum/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_forum = json.result.list;
		}
	  });
	},
	/**
	 * 获取full_name
	 */
	get_ordinary_users_full_name(){
		this.$get("~/api/ordinary_users/get_list?like=0", { page: 1, size: 10, "full_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_ordinary_users_full_name = json.result.list;
			result_ordinary_users_full_name.map(o => o.title = o['full_name'])
	  			this.result_ordinary_users_full_name = result_ordinary_users_full_name
		 	}
		});
	},
	/**
	 * 获取gender
	 */
	get_ordinary_users_gender(){
		this.$get("~/api/ordinary_users/get_list?like=0", { page: 1, size: 10, "gender": this.query.word }, (json) => {
		  if (json.result) {
			var result_ordinary_users_gender = json.result.list;
			result_ordinary_users_gender.map(o => o.title = o['gender'])
	  			this.result_ordinary_users_gender = result_ordinary_users_gender
		 	}
		});
	},
	/**
	 * 获取pet_status
	 */
	get_adoption_information_pet_status(){
		this.$get("~/api/adoption_information/get_list?like=0", { page: 1, size: 10, "pet_status": this.query.word }, (json) => {
		  if (json.result) {
			var result_adoption_information_pet_status = json.result.list;
			result_adoption_information_pet_status.map(o => o.title = o['pet_status'])
	  			this.result_adoption_information_pet_status = result_adoption_information_pet_status
		 	}
		});
	},
	/**
	 * 获取pet_name
	 */
	get_adoption_information_pet_name(){
		this.$get("~/api/adoption_information/get_list?like=0", { page: 1, size: 10, "pet_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_adoption_information_pet_name = json.result.list;
			result_adoption_information_pet_name.map(o => o.title = o['pet_name'])
	  			this.result_adoption_information_pet_name = result_adoption_information_pet_name
		 	}
		});
	},
	/**
	 * 获取pet_species
	 */
	get_adoption_information_pet_species(){
		this.$get("~/api/adoption_information/get_list?like=0", { page: 1, size: 10, "pet_species": this.query.word }, (json) => {
		  if (json.result) {
			var result_adoption_information_pet_species = json.result.list;
			result_adoption_information_pet_species.map(o => o.title = o['pet_species'])
	  			this.result_adoption_information_pet_species = result_adoption_information_pet_species
		 	}
		});
	},
	/**
	 * 获取pet_sex
	 */
	get_adoption_information_pet_sex(){
		this.$get("~/api/adoption_information/get_list?like=0", { page: 1, size: 10, "pet_sex": this.query.word }, (json) => {
		  if (json.result) {
			var result_adoption_information_pet_sex = json.result.list;
			result_adoption_information_pet_sex.map(o => o.title = o['pet_sex'])
	  			this.result_adoption_information_pet_sex = result_adoption_information_pet_sex
		 	}
		});
	},
	/**
	 * 获取pet_name
	 */
	get_adoption_record_pet_name(){
		this.$get("~/api/adoption_record/get_list?like=0", { page: 1, size: 10, "pet_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_adoption_record_pet_name = json.result.list;
			result_adoption_record_pet_name.map(o => o.title = o['pet_name'])
	  			this.result_adoption_record_pet_name = result_adoption_record_pet_name
		 	}
		});
	},
	/**
	 * 获取adoption_status
	 */
	get_adoption_record_adoption_status(){
		this.$get("~/api/adoption_record/get_list?like=0", { page: 1, size: 10, "adoption_status": this.query.word }, (json) => {
		  if (json.result) {
			var result_adoption_record_adoption_status = json.result.list;
			result_adoption_record_adoption_status.map(o => o.title = o['adoption_status'])
	  			this.result_adoption_record_adoption_status = result_adoption_record_adoption_status
		 	}
		});
	},
	/**
	 * 获取return_visit_status
	 */
	get_adoption_record_return_visit_status(){
		this.$get("~/api/adoption_record/get_list?like=0", { page: 1, size: 10, "return_visit_status": this.query.word }, (json) => {
		  if (json.result) {
			var result_adoption_record_return_visit_status = json.result.list;
			result_adoption_record_return_visit_status.map(o => o.title = o['return_visit_status'])
	  			this.result_adoption_record_return_visit_status = result_adoption_record_return_visit_status
		 	}
		});
	},
	/**
	 * 获取pet_name
	 */
	get_return_visit_record_pet_name(){
		this.$get("~/api/return_visit_record/get_list?like=0", { page: 1, size: 10, "pet_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_return_visit_record_pet_name = json.result.list;
			result_return_visit_record_pet_name.map(o => o.title = o['pet_name'])
	  			this.result_return_visit_record_pet_name = result_return_visit_record_pet_name
		 	}
		});
	},
	/**
	 * 获取pet_species
	 */
	get_classification_management_pet_species(){
		this.$get("~/api/classification_management/get_list?like=0", { page: 1, size: 10, "pet_species": this.query.word }, (json) => {
		  if (json.result) {
			var result_classification_management_pet_species = json.result.list;
			result_classification_management_pet_species.map(o => o.title = o['pet_species'])
	  			this.result_classification_management_pet_species = result_classification_management_pet_species
		 	}
		});
	},

  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
	this.get_article();
	this.get_forum();
		this.get_ordinary_users_full_name();
		this.get_ordinary_users_gender();
		this.get_adoption_information_pet_status();
		this.get_adoption_information_pet_name();
		this.get_adoption_information_pet_species();
		this.get_adoption_information_pet_sex();
		this.get_adoption_record_pet_name();
		this.get_adoption_record_adoption_status();
		this.get_adoption_record_return_visit_status();
		this.get_return_visit_record_pet_name();
		this.get_classification_management_pet_species();
  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_article();
	  this.get_forum();
	  this.get_ordinary_users_full_name();
	  this.get_ordinary_users_gender();
	  this.get_adoption_information_pet_status();
	  this.get_adoption_information_pet_name();
	  this.get_adoption_information_pet_species();
	  this.get_adoption_information_pet_sex();
	  this.get_adoption_record_pet_name();
	  this.get_adoption_record_adoption_status();
	  this.get_adoption_record_return_visit_status();
	  this.get_return_visit_record_pet_name();
	  this.get_classification_management_pet_species();
	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
