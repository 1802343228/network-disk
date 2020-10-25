<template>
	<view>
		<view class="p-3 flex align-center">
			<image
				src="https://avatars3.githubusercontent.com/u/59445871?s=460&u=da5694544e03959d2e2c54ea5b2a29c67174cbcc&v=4"
				style="width: 120rpx;height: 120rpx;"
				class="rounded-circle flex-shrink mr-3"
			></image>
			<view class="flex-1 flex flex-column text-muted font">
				<view class="flex align-end">
					<text class="font-lg text-dark mr-2">{{user.nickname || user.username}}</text>
					{{user.sex}}
				</view>
				<text class="text-ellipsis">{{user.desc || '暂无描述..'}}</text>
			</view>
		</view>
		<view class="bg-light" style="height: 20rpx;"></view>
		<view class="p-3">
			<progress class="mb-3" percent="40" active stroke-width="3" />
			<view class="flex align-center justify-between font">
				<text class="text-light-muted">总：{{user.total_size | bytesToSize}}</text>
				<text class="text-warning">已用：{{970 | bytesToSize}}</text>
			</view>
		</view>
		<view class="bg-light" style="height: 20rpx;"></view>
		<view class="flex justify-between p-3">
			<text class="text-muted font">设置</text>
			<image src="../../static/jiantou.png" mode="" style="width:40rpx;height: 40rpx;"></image>
		</view>
		<view
		class="position-fixed fixed-bottom bg-main text-white flex align-center justify-center font-md py-2 rounded-circle"
		hover-class="bg-main-hover"
		@click="logout"
		>退出登录</view>
	</view>
</template>

<script>
	import {mapState} from 'vuex';
export default {
	data() {
		return {};
	},
	computed:{
		//mapstate是vuex的辅助函数，生成计算属性
		...mapState({
			user:state => state.user
		}),
		progress() {
			if(this.user.total_size === 0){
				return 0;
			}
			return(this.user.user_size / this.user.total_size)*100;
		}
	},
	onShow(){
		this.getSized();
	},
	methods: {
		getSized() {
			this.$H.get('/getsize',{token:true}).then(res => {
				this.$store.dispatch('updateSize',res);
			});
		},
		logout() {
			this.$store.dispatch('logout').then(res=>{
				uni.showToast({
					title:'退出成功',
					icon:'none'
				});
			});
		}
	},
	filters:{
		bytesToSize(bytes) {
			if(bytes === 0) return '0KB';
			var k = 1000,
			sizes = ['KB','MB','GB','TB','PB','EB','ZB','YB'],
			i = Math.floor(Math.log(bytes)/ Math.log(k)) ;
			
			return (bytes/Math.pow(k,i)).toPrecision(3)+' '+sizes[i];
		}
	},
	onLoad() {
		console.log(this.$store.state.user)
	}
};
</script>

<style></style>