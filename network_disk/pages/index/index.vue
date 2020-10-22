<template>
	<view>
		<nav-bar>
			<template v-if="checkCount === 0">
			<text slot="left" class="font-md ml-3">首页</text>
			<template slot="right">
				<view style="width: 60rpx;height: 60rpx;" class="flex align-center justify-center bg-light rounded-circle ml-5"><text class="iconfont icon-zengjia"></text></view>
				<view style="width: 60tpx;height: 60rpx;" class="flex align-center justify-center bg-light rounded-circle  ml-3"><text class="iconfont icon-gengduo"></text></view>
			</template>
			</template>
			
			<template v-else>
				<view slot = 'left' class="font-md ml-3 text-primary" @click="handleCheckAll(false)">取消</view>
				<text class="font-md font-weight-bold"> 已选中{{checkCount}}</text>
				<view slot='right' class="font-md ml-5 text-primary" @click="handleCheckAll(true)">全选</view>
			</template>
		</nav-bar>
		<view class="px-3 py-2">
			<view class="position-relative">
				<view style="height: 70rpx;width: 70rpx;position: absolute;top: 0;left: 0;" class="flex align-center justify-center text-light-muted">
					<text class="iconfont icon-sousuo"></text>
				</view>
				<input style="height: 70rpx;padding-left: 70rpx;" type="text" class="bg-light font-md rounded-circle" placeholder="搜索网盘文件" />
			</view>
		</view>
			<f-list v-for="(item, index) in list" :key="index" :item="item" :index="index" @select="select"></f-list>
	</view>
</template>

<script>
import navBar from '../../components/common/nav-bar.vue';
import fList from '../../components/common/f-list.vue';
export default {
	components: {
		navBar,
		fList
	},
	data() {
		return {
			list: []
		};
	},
	onLoad: function() {
		uni.request({
			url:'http://localhost:7001/list',
			method:'GET',
			success:res => {
				this.list = res.data.data
				console.log(this.list[0].type)
			}
		})
	},
	methods: {
		select(e) {
			this.list[e.index].checked = e.value
		},
		//全选/取消全选
		handleCheckAll(checked) {
			this.list.forEach(item => {
				item.checked = checked;
			})
		}
	},
	computed: {
		//选中列表
		checkList() {
			return this.list.filter(item => item.checked);
		},
		//选中数量
		checkCount() {
			return this.checkList.length
		}
	}
};
</script>

<style lang="scss" scoped></style>
