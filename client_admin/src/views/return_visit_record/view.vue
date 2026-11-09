<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_name') || $check_field('add','pet_name') || $check_field('set','pet_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物名称" prop="pet_name">
					<el-input id="pet_name" v-model="form['pet_name']" placeholder="请输入宠物名称"
							  v-if="user_group === '管理员' || (form['return_visit_record_id'] && $check_field('set','pet_name')) || (!form['return_visit_record_id'] && $check_field('add','pet_name'))" :disabled="disabledObj['pet_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','pet_name')">{{form['pet_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_sex') || $check_field('add','pet_sex') || $check_field('set','pet_sex')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物性别" prop="pet_sex">
					<el-input id="pet_sex" v-model="form['pet_sex']" placeholder="请输入宠物性别"
							  v-if="user_group === '管理员' || (form['return_visit_record_id'] && $check_field('set','pet_sex')) || (!form['return_visit_record_id'] && $check_field('add','pet_sex'))" :disabled="disabledObj['pet_sex_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','pet_sex')">{{form['pet_sex']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_age') || $check_field('add','pet_age') || $check_field('set','pet_age')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物年龄" prop="pet_age">
					<el-input id="pet_age" v-model="form['pet_age']" placeholder="请输入宠物年龄"
							  v-if="user_group === '管理员' || (form['return_visit_record_id'] && $check_field('set','pet_age')) || (!form['return_visit_record_id'] && $check_field('add','pet_age'))" :disabled="disabledObj['pet_age_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','pet_age')">{{form['pet_age']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','adopter') || $check_field('add','adopter') || $check_field('set','adopter')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="领养人" prop="adopter">
						<el-select v-if="user_group === '管理员' || (form['return_visit_record_id'] && $check_field('set','adopter')) || (!form['return_visit_record_id'] && $check_field('add','adopter'))" id="adopter" v-model="form['adopter']" :disabled="disabledObj['adopter_isDisabled']">
							<el-option v-for="o in list_user_adopter" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','adopter')" id="adopter" v-model="form['adopter']" :disabled="true">
							<el-option v-for="o in list_user_adopter" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','return_visit_photos') || $check_field('add','return_visit_photos') || $check_field('set','return_visit_photos')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="回访照片" prop="return_visit_photos">
					<el-upload :disabled="disabledObj['return_visit_photos_isDisabled']" id="return_visit_photos" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_return_visit_photos"
						:show-file-list="false" v-if="user_group === '管理员' || (form['return_visit_record_id'] && $check_field('set','return_visit_photos')) || (!form['return_visit_record_id'] && $check_field('add','return_visit_photos'))">
						<img v-if="form['return_visit_photos']" :src="$fullUrl(form['return_visit_photos'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','return_visit_photos')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['return_visit_photos'])" :preview-src-list="[$fullUrl(form['return_visit_photos'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','return_visit_description') || $check_field('add','return_visit_description') || $check_field('set','return_visit_description')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="回访描述" prop="return_visit_description">
					<el-input type="textarea" id="return_visit_description" v-model="form['return_visit_description']" placeholder="请输入回访描述"
						v-if="user_group === '管理员' || (form['return_visit_record_id'] && $check_field('set','return_visit_description')) || (!form['return_visit_record_id'] && $check_field('add','return_visit_description'))" :disabled="disabledObj['return_visit_description_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','return_visit_description')">{{form['return_visit_description']}}</div>
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
				field: "return_visit_record_id",
				url_add: "~/api/return_visit_record/add?",
				url_set: "~/api/return_visit_record/set?",
				url_get_obj: "~/api/return_visit_record/get_obj?",
				url_upload: "~/api/return_visit_record/upload?",

				query: {
					"return_visit_record_id": 0,
				},

				form: {
					"pet_name":'', // 宠物名称
					"pet_sex":'', // 宠物性别
					"pet_age":'', // 宠物年龄
					"adopter": 0, // 领养人
					"return_visit_photos":'', // 回访照片
					"return_visit_description":'', // 回访描述
					"return_visit_record_id": 0, // ID

				},
				disabledObj:{
					"pet_name_isDisabled": false,
					"pet_sex_isDisabled": false,
					"pet_age_isDisabled": false,
					"adopter_isDisabled": false,
					"return_visit_photos_isDisabled": false,
					"return_visit_description_isDisabled": false,
				},
				// 用户列表
				list_user_adopter: [],

			}
		},
		methods: {
			/**
			 * 获取普通用户用户列表
			 */
			async get_list_user_adopter() {
                // if(this.user_group !== "管理员" && this.form["adopter"] === 0) {
                //     this.form["adopter"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=普通用户");
                if(json.result && json.result.list){
                    this.list_user_adopter = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			get_user_adopter(id){
				var obj = this.list_user_adopter.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			/**
			 * 上传回访照片
			 * @param {Object} param图片参数
			 */
			upload_return_visit_photos(param){
				this.uploadFile(param.file, "return_visit_photos");
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				// 获取缓存数据附加
				form = $.db.get("form");
				$.push(this.form ,form);
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
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/return_visit_record/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/return_visit_record/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/return_visit_record/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/return_visit_record/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/return_visit_record/view','get');
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
			this.get_list_user_adopter();
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
