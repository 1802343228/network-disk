import Vue from 'vue'
import App from './App'
import $H from './common/request.js'
Vue.prototype.$H = $H
//引入全局Vuex并挂载在Vue原型上
import store from './store/index.js'
Vue.prototype.$store  = store

Vue.config.productionTip = false

Vue.prototype.authMethod = (callback) => {
	if(!store.state.token) {
		uni.showToast({
			title:'请先登录',
			icon:'none'
		});
		return uni.navigateTo({
			url:'/pages/login/login',
		});
	}
	callback()
}

App.mpType = 'app'

const app = new Vue({
	store,
    ...App
})

app.$mount()
