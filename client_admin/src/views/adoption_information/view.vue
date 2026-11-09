<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','title_name') || $check_field('add','title_name') || $check_field('set','title_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="标题名称" prop="title_name">
					<el-input id="title_name" v-model="form['title_name']" placeholder="请输入标题名称"
							  v-if="user_group === '管理员' || (form['adoption_information_id'] && $check_field('set','title_name')) || (!form['adoption_information_id'] && $check_field('add','title_name'))" :disabled="disabledObj['title_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','title_name')">{{form['title_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','release_time') || $check_field('add','release_time') || $check_field('set','release_time')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="发布时间" prop="release_time">
					<el-date-picker :disabled="disabledObj['release_time_isDisabled']" v-if="user_group === '管理员' || (form['adoption_information_id'] && $check_field('set','release_time')) || (!form['adoption_information_id'] && $check_field('add','release_time'))" id="release_time"
						v-model="form['release_time']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','release_time')">{{form['release_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_status') || $check_field('add','pet_status') || $check_field('set','pet_status')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物状态" prop="pet_status">
					<el-select id="pet_status" v-model="form['pet_status']"
						v-if="user_group === '管理员' || (form['adoption_information_id'] && $check_field('set','pet_status')) || (!form['adoption_information_id'] && $check_field('add','pet_status'))">
						<el-option v-for="o in list_pet_status" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','pet_status')">{{form['pet_status']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_name') || $check_field('add','pet_name') || $check_field('set','pet_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物名称" prop="pet_name">
					<el-input id="pet_name" v-model="form['pet_name']" placeholder="请输入宠物名称"
							  v-if="user_group === '管理员' || (form['adoption_information_id'] && $check_field('set','pet_name')) || (!form['adoption_information_id'] && $check_field('add','pet_name'))" :disabled="disabledObj['pet_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','pet_name')">{{form['pet_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_species') || $check_field('add','pet_species') || $check_field('set','pet_species')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物种类" prop="pet_species">
					<el-select id="pet_species" v-model="form['pet_species']"
						v-if="user_group === '管理员' || (form['adoption_information_id'] && $check_field('set','pet_species')) || (!form['adoption_information_id'] && $check_field('add','pet_species'))">
						<el-option v-for="o in list_pet_species" :key="o['pet_species']" :label="o['pet_species']"
							:value="o['pet_species']">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','pet_species')">{{form['pet_species']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_sex') || $check_field('add','pet_sex') || $check_field('set','pet_sex')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物性别" prop="pet_sex">
					<el-select id="pet_sex" v-model="form['pet_sex']"
						v-if="user_group === '管理员' || (form['adoption_information_id'] && $check_field('set','pet_sex')) || (!form['adoption_information_id'] && $check_field('add','pet_sex'))">
						<el-option v-for="o in list_pet_sex" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','pet_sex')">{{form['pet_sex']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_age') || $check_field('add','pet_age') || $check_field('set','pet_age')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物年龄" prop="pet_age">
					<el-input id="pet_age" v-model="form['pet_age']" placeholder="请输入宠物年龄"
							  v-if="user_group === '管理员' || (form['adoption_information_id'] && $check_field('set','pet_age')) || (!form['adoption_information_id'] && $check_field('add','pet_age'))" :disabled="disabledObj['pet_age_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','pet_age')">{{form['pet_age']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_pictures') || $check_field('add','pet_pictures') || $check_field('set','pet_pictures')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物图片" prop="pet_pictures">
					<el-upload :disabled="disabledObj['pet_pictures_isDisabled']" id="pet_pictures" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_pet_pictures"
						:show-file-list="false" v-if="user_group === '管理员' || (form['adoption_information_id'] && $check_field('set','pet_pictures')) || (!form['adoption_information_id'] && $check_field('add','pet_pictures'))">
						<img v-if="form['pet_pictures']" :src="$fullUrl(form['pet_pictures'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','pet_pictures')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['pet_pictures'])" :preview-src-list="[$fullUrl(form['pet_pictures'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','detailed_information') || $check_field('add','detailed_information') || $check_field('set','detailed_information')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="详细信息" prop="detailed_information">
					<el-input type="textarea" id="detailed_information" v-model="form['detailed_information']" placeholder="请输入详细信息"
						v-if="user_group === '管理员' || (form['adoption_information_id'] && $check_field('set','detailed_information')) || (!form['adoption_information_id'] && $check_field('add','detailed_information'))" :disabled="disabledObj['detailed_information_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','detailed_information')">{{form['detailed_information']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','remark_information') || $check_field('add','remark_information') || $check_field('set','remark_information')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="备注信息" prop="remark_information">
					<el-input type="textarea" id="remark_information" v-model="form['remark_information']" placeholder="请输入备注信息"
						v-if="user_group === '管理员' || (form['adoption_information_id'] && $check_field('set','remark_information')) || (!form['adoption_information_id'] && $check_field('add','remark_information'))" :disabled="disabledObj['remark_information_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','remark_information')">{{form['remark_information']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "adoption_information_id",
				url_add: "~/api/adoption_information/add?",
				url_set: "~/api/adoption_information/set?",
				url_get_obj: "~/api/adoption_information/get_obj?",
				url_upload: "~/api/adoption_information/upload?",

				query: {
					"adoption_information_id": 0,
				},

				form: {
					"title_name":'', // 标题名称
					"release_time":'', // 发布时间
					"pet_status":'', // 宠物状态
					"pet_name":'', // 宠物名称
					"pet_species":'', // 宠物种类
					"pet_sex":'', // 宠物性别
					"pet_age":'', // 宠物年龄
					"pet_pictures":'', // 宠物图片
					"detailed_information":'', // 详细信息
					"remark_information":'', // 备注信息
					"adoption_information_id": 0, // ID

				},
				disabledObj:{
					"title_name_isDisabled": false,
					"release_time_isDisabled": false,
					"pet_status_isDisabled": false,
					"pet_name_isDisabled": false,
					"pet_species_isDisabled": false,
					"pet_sex_isDisabled": false,
					"pet_age_isDisabled": false,
					"pet_pictures_isDisabled": false,
					"detailed_information_isDisabled": false,
					"remark_information_isDisabled": false,
				},
				//宠物状态选项列表
				list_pet_status: ['待领养','已被领养'],
				//宠物种类选项列表
				list_pet_species: [],
				//宠物性别选项列表
				list_pet_sex: ['公','母'],

			}
		},
		methods: {
			/**
			 * 获取宠物种类列表
			 */
			async get_list_pet_species() {
				var json = await this.$get("~/api/classification_management/get_list?");
				if(json.result && json.result.list){
					this.list_pet_species = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			/**
			 * 上传宠物图片
			 * @param {Object} param图片参数
			 */
			upload_pet_pictures(param){
				this.uploadFile(param.file, "pet_pictures");
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
        if (this.form["release_time"].indexOf("-")===-1){
          this.form["release_time"] = this.$toTime(parseInt(this.form["release_time"]),"yyyy-MM-dd")
        }
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
				if(parseInt(this.form["release_time"]) > 9999){
					this.form["release_time"] = this.$toTime(parseInt(this.form["release_time"]),"yyyy-MM-dd")
				}

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/adoption_information/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/adoption_information/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/adoption_information/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/adoption_information/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/adoption_information/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
			this.get_list_pet_species();
		}
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
