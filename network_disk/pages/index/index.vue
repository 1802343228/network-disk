<template>
	<view>
		<nav-bar>
			<template v-if="checkCount === 0">
				<text slot="left" class="font-md ml-3">首页</text>
				<template slot="right">
					<view style="width: 60rpx;height: 60rpx;" class="flex align-center justify-center bg-light rounded-circle ml-5">
						<text class="iconfont icon-zengjia"></text>
					</view>
					<view style="width: 60tpx;height: 60rpx;" class="flex align-center justify-center bg-light rounded-circle  ml-3">
						<text class="iconfont icon-gengduo"></text>
					</view>
				</template>
			</template>

			<template v-else>
				<view slot="left" class="font-md ml-3 text-primary" @click="handleCheckAll(false)">取消</view>
				<text class="font-md font-weight-bold">已选中{{ checkCount }}</text>
				<view slot="right" class="font-md ml-5 text-primary" @click="handleCheckAll(true)">全选</view>
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

		<!-- 底部操作条 -->
		<!-- 选中个数大于0才会出现操作条 -->
		<view v-if="checkCount > 0">
			<!-- 这里要留一定高度，因为底部操作条需要被固定在底部，并空出底部tabbar高度的地方 -->
			<view style="height: 115rpx;"></view>
			<view style="height: 115rpx;" class="flex align-center bg-primary text-white fixed-bottom">
				<view
					class="flex-1 flex flex-column align-center justify-center"
					style="line-height: 1.5;"
					v-for="(item, index) in actions"
					:key="index"
					hover-class="bg-hover-primary"
					@click="handleBottomEvent(item)"
				>
					<text class="iconfont" :class="item.icon"></text>
					{{ item.name }}
				</view>
			</view>
		</view>
	<f-dialog ref="dialog">是否删除选中的文件?</f-dialog>
	</view>
</template>

<script>
import navBar from '../../components/common/nav-bar.vue';
import fList from '../../components/common/f-list.vue';
import fDialog from '@/components/common/f-dialog.vue';
export default {
	components: {
		navBar,
		fList,
		fDialog
	},
	data() {
		return {
			list: []
		};
	},
	onLoad: function() {
		uni.request({
			url: 'http://localhost:7001/list',
			method: 'GET',
			success: res => {
				this.list = res.data.data;
				console.log(this.list[0].type);
			}
		});
	},
	methods: {
		select(e) {
			this.list[e.index].checked = e.value;
		},
		//全选/取消全选
		handleCheckAll(checked) {
			this.list.forEach(item => {
				item.checked = checked;
			});
		},
		handleBottomEvent(item) {
			switch (item.name) {
				case '删除':
					this.$refs.dialog.open(close => {
						close();
						console.log('删除文件');
						console.log(this.checkList);
					});
					break;
				default:
					break;
			}
		}
	},
	computed: {
		//选中列表
		checkList() {
			return this.list.filter(item => item.checked);
		},
		//选中数量
		checkCount() {
			return this.checkList.length;
		},
		//操作菜单
		actions() {
			if (this.checkCount > 1) {
				return [
					{
						icon: 'icon-xiazai',
						name: '下载'
					},
					{
						icon: 'icon-shanchu',
						name: '删除'
					}
				];
			}
			return [
				{
					icon: 'icon-xiazai',
					name: '下载'
				},
				{
					icon: 'icon-fenxiang-1',
					name: '分享'
				},
				{
					icon: 'icon-shanchu',
					name: '删除'
				},
				{
					icon: 'icon-chongmingming',
					name: '重命名'
				}
			];
		}
	}
};
</script>

<style lang="scss" scoped></style>
