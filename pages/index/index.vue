<template>
	<view>
		<nav-bar>
			<text slot="left" class="font-md ml-3">首页</text>
			<template slot="right">
				<view style="width: 60rpx;height: 60rpx;"
				 class="flex align-center justify-center bg-light rounded-circle ml-5">
					<text class="iconfont icon-zengjia"></text>
				</view>
				<view style="width: 60tpx;height: 60rpx;"
				 class="flex align-center justify-center bg-light rounded-circle  ml-3">
					<text class="iconfont icon-gengduo"></text>
				</view>
			</template>
		</nav-bar>
		<view class="px-3 py-2">
			<view class="position-relative">
				<view 
				style="height: 70rpx;width: 70rpx;position: absolute;top: 0;left: 0;"
				class="flex align-center justify-center text-light-muted"
				>
				<text class="iconfont icon-sousuo"></text>
				</view>
				<input style="height: 70rpx;padding-left: 70rpx;"
				type="text"
				 class="bg-light font-md rounded-circle" 
				 placeholder="搜索网盘文件" />
			</view>
		</view>
		<!-- <view style="width: 700rpx;background-color: #F1F1F1;" class="m-auto flex rounded-circle mt-2">
			<uni-icons class="ml-2" color="#999999" size="20" type="search" />
			<input class="m-1" placeholder="搜索网盘文件" />
		</view> -->
		<!-- <uni-search-bar></uni-search-bar> -->
	</view>
</template>

<script>
	import navBar from '../../components/common/nav-bar.vue';
	export default {
		components: {
			navBar,
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
