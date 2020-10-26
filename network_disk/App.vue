<script>
	export default {
		onLaunch:function(){
		console.log('APP Launch')
		this.$store.dispatch('initUser');
		this.$store.dispatch('initList');
		},
		onShow: function() {
			console.log('App Show')
			if(this.$store.state.user) {
				console.log("onshowwwwwwwww")
				this.$store.dispatch('getShareUrl');
			}
		},
		onHide: function() {
			console.log('App Hide')
		}
	}
</script>

<style>
	/*每个页面公共css */
	/* 引入官方样式库 */
	@import url("/common/uni.css");
	/* 引入自定义图标 */
	@import url("./common/icon.css");
	/* 自定义样式库 */
	@import url("./common/free.css");
	/* 引入公共样式 */
	@import url("./common/common.css");
</style>
