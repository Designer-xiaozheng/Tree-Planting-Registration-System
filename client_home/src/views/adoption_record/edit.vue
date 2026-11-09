<template>
	<div class="diy_edit page_adoption_record" id="adoption_record_edit">
		<div class='warp'>
			<div class='container'>
				<div class='row diy_edit_content_box'>
					<div v-if="$check_field('set','pet_name') || $check_field('add','pet_name') || $check_field('get','pet_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>宠物名称:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_pet_name" v-model="form['pet_name']" placeholder="请输入宠物名称" v-if="(form['pet_name'] && $check_field('set','pet_name')) || (!form['pet_name'] && $check_field('add','pet_name'))"  :disabled="disabledObj['pet_name_isDisabled']"/>
							<span v-else-if="$check_field('get','pet_name')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','pet_sex') || $check_field('add','pet_sex') || $check_field('get','pet_sex')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>宠物性别:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_pet_sex" v-model="form['pet_sex']" placeholder="请输入宠物性别" v-if="(form['pet_sex'] && $check_field('set','pet_sex')) || (!form['pet_sex'] && $check_field('add','pet_sex'))"  :disabled="disabledObj['pet_sex_isDisabled']"/>
							<span v-else-if="$check_field('get','pet_sex')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','pet_age') || $check_field('add','pet_age') || $check_field('get','pet_age')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>宠物年龄:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_pet_age" v-model="form['pet_age']" placeholder="请输入宠物年龄" v-if="(form['pet_age'] && $check_field('set','pet_age')) || (!form['pet_age'] && $check_field('add','pet_age'))"  :disabled="disabledObj['pet_age_isDisabled']"/>
							<span v-else-if="$check_field('get','pet_age')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','adopter') || $check_field('add','adopter') || $check_field('get','adopter')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>领养人:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_adopter" :disabled="disabledObj['adopter_isDisabled']" v-model="form['adopter']" v-if="(form['adopter'] && $check_field('set','adopter')) || (!form['adopter'] && $check_field('add','adopter'))" >
								<option v-for="o in list_user_adopter" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','adopter')">{{ form['adopter'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','contact_number') || $check_field('add','contact_number') || $check_field('get','contact_number')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>联系电话:
							</span>
						</div>
						<!-- 手机 -->
						<div class="diy_field diy_phone">
							<input type="tel" id="form_contact_number" v-model="form['contact_number']" placeholder="请输入联系电话" v-if="(form['contact_number'] && $check_field('set','contact_number')) || (!form['contact_number'] && $check_field('add','contact_number'))" :disabled="disabledObj['contact_number_isDisabled']" />
							<span v-else-if="$check_field('get','contact_number')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','adoption_status') || $check_field('add','adoption_status') || $check_field('get','adoption_status')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>领养状态:
							</span>
						</div>
						<!-- 选项 -->
						<div class="diy_field diy_down">
							<select id="form_adoption_status" v-model="form['adoption_status']" v-if="(form['adoption_status'] && $check_field('set','adoption_status')) || (!form['adoption_status'] && $check_field('add','adoption_status'))" >
								<option v-for="o in list_adoption_status" :value="o">
									{{o}}
								</option>
							</select>
							<span v-else-if="$check_field('get','adoption_status')">{{ form['adoption_status'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','return_visit_status') || $check_field('add','return_visit_status') || $check_field('get','return_visit_status')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>回访状态:
							</span>
						</div>
						<!-- 选项 -->
						<div class="diy_field diy_down">
							<select id="form_return_visit_status" v-model="form['return_visit_status']" v-if="(form['return_visit_status'] && $check_field('set','return_visit_status')) || (!form['return_visit_status'] && $check_field('add','return_visit_status'))" >
								<option v-for="o in list_return_visit_status" :value="o">
									{{o}}
								</option>
							</select>
							<span v-else-if="$check_field('get','return_visit_status')">{{ form['return_visit_status'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','reasons_for_adoption') || $check_field('add','reasons_for_adoption') || $check_field('get','reasons_for_adoption')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>领养原由:
							</span>
						</div>
						<!-- 多文本 -->
						<div class="diy_field diy_desc">
							<textarea id="form_reasons_for_adoption" v-model="form['reasons_for_adoption']" v-if="(form['reasons_for_adoption'] && $check_field('set','reasons_for_adoption')) || (!form['reasons_for_adoption'] && $check_field('add','reasons_for_adoption'))" :disabled="disabledObj['reasons_for_adoption_isDisabled']" />
							<span v-else-if="$check_field('get','reasons_for_adoption')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','reply_message') || $check_field('add','reply_message') || $check_field('get','reply_message')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>回复信息:
							</span>
						</div>
						<!-- 多文本 -->
						<div class="diy_field diy_desc">
							<textarea id="form_reply_message" v-model="form['reply_message']" v-if="(form['reply_message'] && $check_field('set','reply_message')) || (!form['reply_message'] && $check_field('add','reply_message'))" :disabled="disabledObj['reply_message_isDisabled']" />
							<span v-else-if="$check_field('get','reply_message')">{{ form[''] }}</span>
						</div>
					</div>
				</div>
				<div class="diy_edit_submit_box row">
					<div class="col-12">
						<div class="btn_box">
							<button class="btn_submit" @click="submit()">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import mixin from "@/mixins/page.js";
	export default {
		mixins: [mixin],
		components: {},
		data() {
			return {
				url_get_obj: "~/api/adoption_record/get_obj?",
				url_add: "~/api/adoption_record/add?",
				url_set: "~/api/adoption_record/set?",

				// 登录权限
				oauth: {
					"signIn": true,
					"user_group": []
				},

				// 查询条件
				query: {
					"pet_name": "",
					"pet_sex": "",
					"pet_age": "",
					"adopter": 0,
					"contact_number": "",
					"adoption_status": "",
					"return_visit_status": "",
					"reasons_for_adoption": "",
					"reply_message": "",
					"adoption_record_id": 0,
				},

				obj: {
					"pet_name":'', // 宠物名称
					"pet_sex":'', // 宠物性别
					"pet_age":'', // 宠物年龄
					"adopter": 0, // 领养人
					"contact_number":'', // 联系电话
					"adoption_status":'', // 领养状态
					"return_visit_status":'', // 回访状态
					"reasons_for_adoption":'', // 领养原由
					"reply_message":'', // 回复信息
					"adoption_record_id": 0,
				},

				// 表单字段
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
					"adoption_record_id": 0,

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
				//领养状态选项列表
				list_adoption_status: ['同意','拒绝'],
				//回访状态选项列表
				list_return_visit_status: ['未回访','已回访'],

				// ID字段
				field: "adoption_record_id",
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
			async get_user_session_adopter(){
				var _this = this;
				var json = await this.$get("~/api/user_group/get_obj?name=普通用户");
				if(json.result && json.result.obj){
					var source_table = json.result.obj.source_table;
					var user_id = _this.$store.state.user.user_id;
					if (user_id){
						var url = "~/api/"+source_table+"/get_obj?"
						this.$get(url, {"user_id":_this.$store.state.user.user_id}, function(res) {
							if (res.result && res.result.obj) {
								var arr = []
								for (let key in res.result.obj) {
									arr.push(key)
								}
								var arrForm = []
								for (let key in _this.form) {
									arrForm.push(key)
								}
								_this.form["adopter"] = user_id
								_this.disabledObj['adopter' + '_isDisabled'] = true
								for (var i=0;i<arr.length;i++){
									for (var j=0;j<arrForm.length;j++){
										if (arr[i]===arrForm[j]){
											if (arr[i]!=="adopter") {
												_this.form[arrForm[j]] = res.result.obj[arr[i]]
												_this.disabledObj[arrForm[j] + '_isDisabled'] = true
												break;
											}
										}
									}
								}
							}
						});
					}
				}
				else if(json.error){
					console.error(json.error);
				}
			},

			/**
			 * 修改文件
			 * @param { Object } files 上传文件对象
			 * @param { String } str 表单的属性名
			 */
			change_file(files, str) {
				var form = new FormData();
				form.append("file", files[0]);
				this.$post("~/api/adoption_record/upload?", form, (res) => {
					if (res.result) {
						this.form[str] = res.result.url;
					} else if (res.error) {
						this.$toast(res.error.message);
					}
				});
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_before(param){
				var form = $.db.get("form");
				if (form) {
					this.obj = $.push(this.obj ,form);
					this.form = $.push(this.form ,form);
				}
				var arr = []
				for (let key in form) {
					arr.push(key)
				}
				for (var i=0;i<arr.length;i++){
					this.disabledObj[arr[i] + '_isDisabled'] = true
				}
				return param;
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json ,func){
				var form = $.db.get("form");
				var obj = Object.assign({} ,form ,this.obj);
				if (form) {
					this.obj = $.push(this.obj ,obj);
				}
				if (form) {
					this.form = $.push(this.form ,form);
				}
				if(func){
					func(json);
				}
			},

		},
		created() {
			this.get_user_session_adopter();
			this.get_list_user_adopter();
		}
	}
</script>

<style>
</style>
