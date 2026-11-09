<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_name') || $check_field('add','pet_name') || $check_field('set','pet_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物名称" prop="pet_name">
					<el-input id="pet_name" v-model="form['pet_name']" placeholder="请输入宠物名称"
							  v-if="user_group === '管理员' || (form['adoption_record_id'] && $check_field('set','pet_name')) || (!form['adoption_record_id'] && $check_field('add','pet_name'))" :disabled="disabledObj['pet_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','pet_name')">{{form['pet_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_sex') || $check_field('add','pet_sex') || $check_field('set','pet_sex')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物性别" prop="pet_sex">
					<el-input id="pet_sex" v-model="form['pet_sex']" placeholder="请输入宠物性别"
							  v-if="user_group === '管理员' || (form['adoption_record_id'] && $check_field('set','pet_sex')) || (!form['adoption_record_id'] && $check_field('add','pet_sex'))" :disabled="disabledObj['pet_sex_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','pet_sex')">{{form['pet_sex']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','pet_age') || $check_field('add','pet_age') || $check_field('set','pet_age')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="宠物年龄" prop="pet_age">
					<el-input id="pet_age" v-model="form['pet_age']" placeholder="请输入宠物年龄"
							  v-if="user_group === '管理员' || (form['adoption_record_id'] && $check_field('set','pet_age')) || (!form['adoption_record_id'] && $check_field('add','pet_age'))" :disabled="disabledObj['pet_age_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','pet_age')">{{form['pet_age']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','adopter') || $check_field('add','adopter') || $check_field('set','adopter')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="领养人" prop="adopter">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_adopter(form['adopter']) }}
							<!--<el-input id="business_name" v-model="form['adopter']" placeholder="请输入领养人"-->
							<!--v-if="user_group === '管理员' || (form['adoption_record_id'] && $check_field('set','adopter')) || (!form['adoption_record_id'] && $check_field('add','adopter'))" :disabled="disabledObj['adopter_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','adopter')">{{form['adopter']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['adoption_record_id'] && $check_field('set','adopter')) || (!form['adoption_record_id'] && $check_field('add','adopter'))" id="adopter" v-model="form['adopter']" :disabled="disabledObj['adopter_isDisabled']">
								<el-option v-for="o in list_user_adopter" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','adopter')" id="adopter" v-model="form['adopter']" :disabled="true">
								<el-option v-for="o in list_user_adopter" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="adopter" v-model="form['adopter']" :disabled="disabledObj['adopter_isDisabled']">
							<el-option v-for="o in list_user_adopter" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','contact_number') || $check_field('add','contact_number') || $check_field('set','contact_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="联系电话" prop="contact_number">
					<el-input id="contact_number" v-model="form['contact_number']" placeholder="请输入联系电话" type="tel"
						v-if="user_group === '管理员' || (form['adoption_record_id'] && $check_field('set','contact_number')) || (!form['adoption_record_id'] && $check_field('add','contact_number'))">
					</el-input>
					<div v-else-if="$check_field('get','contact_number')">{{form['contact_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','adoption_status') || $check_field('add','adoption_status') || $check_field('set','adoption_status')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="领养状态" prop="adoption_status">
					<el-select id="adoption_status" v-model="form['adoption_status']"
						v-if="user_group === '管理员' || (form['adoption_record_id'] && $check_field('set','adoption_status')) || (!form['adoption_record_id'] && $check_field('add','adoption_status'))">
						<el-option v-for="o in list_adoption_status" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','adoption_status')">{{form['adoption_status']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','return_visit_status') || $check_field('add','return_visit_status') || $check_field('set','return_visit_status')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="回访状态" prop="return_visit_status">
					<el-select id="return_visit_status" v-model="form['return_visit_status']"
						v-if="user_group === '管理员' || (form['adoption_record_id'] && $check_field('set','return_visit_status')) || (!form['adoption_record_id'] && $check_field('add','return_visit_status'))">
						<el-option v-for="o in list_return_visit_status" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','return_visit_status')">{{form['return_visit_status']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','reasons_for_adoption') || $check_field('add','reasons_for_adoption') || $check_field('set','reasons_for_adoption')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="领养原由" prop="reasons_for_adoption">
					<el-input type="textarea" id="reasons_for_adoption" v-model="form['reasons_for_adoption']" placeholder="请输入领养原由"
						v-if="user_group === '管理员' || (form['adoption_record_id'] && $check_field('set','reasons_for_adoption')) || (!form['adoption_record_id'] && $check_field('add','reasons_for_adoption'))" :disabled="disabledObj['reasons_for_adoption_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','reasons_for_adoption')">{{form['reasons_for_adoption']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','reply_message') || $check_field('add','reply_message') || $check_field('set','reply_message')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="回复信息" prop="reply_message">
					<el-input type="textarea" id="reply_message" v-model="form['reply_message']" placeholder="请输入回复信息"
						v-if="user_group === '管理员' || (form['adoption_record_id'] && $check_field('set','reply_message')) || (!form['adoption_record_id'] && $check_field('add','reply_message'))" :disabled="disabledObj['reply_message_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','reply_message')">{{form['reply_message']}}</div>
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
				field: "adoption_record_id",
				url_add: "~/api/adoption_record/add?",
				url_set: "~/api/adoption_record/set?",
				url_get_obj: "~/api/adoption_record/get_obj?",
				url_upload: "~/api/adoption_record/upload?",

				query: {
					"adoption_record_id": 0,
				},

				form: {
					"pet_name":'', // 宠物名称
					"pet_sex":'', // 宠物性别
					"pet_age":'', // 宠物年龄
					"adopter": 0, // 领养人
					"contact_number":'', // 联系电话
					"adoption_status":'', // 领养状态
					"return_visit_status":'', // 回访状态
					"reasons_for_adoption":'', // 领养原由
					"reply_message":'', // 回复信息
					"adoption_record_id": 0, // ID

				},
				disabledObj:{
					"pet_name_isDisabled": false,
					"pet_sex_isDisabled": false,
					"pet_age_isDisabled": false,
					"adopter_isDisabled": false,
					"contact_number_isDisabled": false,
					"adoption_status_isDisabled": false,
					"return_visit_status_isDisabled": false,
					"reasons_for_adoption_isDisabled": false,
					"reply_message_isDisabled": false,
				},
				// 用户列表
				list_user_adopter: [],
				// 用户组
				group_user_adopter: "",
				//领养状态选项列表
				list_adoption_status: ['同意','拒绝'],
				//回访状态选项列表
				list_return_visit_status: ['未回访','已回访'],

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
			/**
			 * 获取普通用户用户组
			 */
			async get_group_user_adopter() {
				this.form["adopter"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=普通用户");
				if(json.result && json.result.obj){
					this.group_user_adopter = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_adopter(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_adopter.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
						for (let key in _this.form) {
							arrForm.push(key)
						}
						for (var i=0;i<arr.length;i++){
							for (var j=0;j<arrForm.length;j++){
								if (arr[i]===arrForm[j]){
									if (arr[i]!=="adopter") {
										_this.form[arrForm[j]] = res.result.obj[arr[i]]
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
										break;
									}else {
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
									}
								}
							}
						}
					}
				});
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
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				// 获取缓存数据附加
				form = $.db.get("form");
				$.push(this.form ,form);
				/**
				* 请求列表前
				* @param {Object} param
				*/
				var user_group = this.user.user_group;
				if (user_group !== "管理员") {
					switch (user_group) {
						case "领养人":
							if(param["adopter"] > 0){
								param["adopter"] = this.user.user_id;
							}
							break;
					}
				}
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
					bl = this.$check_action('/adoption_record/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/adoption_record/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/adoption_record/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/adoption_record/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/adoption_record/view','get');
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
			this.get_group_user_adopter();
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
