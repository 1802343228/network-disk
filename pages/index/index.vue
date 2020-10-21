<template>
	<view>
		<nav-bar>
			<text slot="left" class="font-md ml-3">首页</text>
			<template slot="right">
				<view style="width: 60rpx;height: 60rpx;"
				 class="flex align-center justify-center bg-light rounded-circle mr-3">
					<text class="iconfont icon-zengjia"></text>
				</view>
				<view style="width: 60tpx;height: 60rpx;"
				 class="flex align-center justify-center bg-light rounded-circle mr-3">
					<text class="iconfont icon-gengduo"></text>
				</view>
			</template>
		</nav-bar>
		<view class="bg-info" style="height: 1000px;">123</view>
	</view>
</template>

<script>
	import navBar from '../../components/common/nav-bar.vue';
	export default {
		components: {
			navBar
		},
		data() {
			return {
			}
		},
		onLoad() {

		},
		methods: {

		}
	}
</script>

<style lang="scss" scoped>

</style>
