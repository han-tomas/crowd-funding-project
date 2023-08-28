<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
.carousel-item {
	width: 100%;
	height: 540px;
}
.carousel-inner {
	margin: 0px 0px 20px 0px;
}
table, tr, td{
	border:none;
}
td {
	padding: 2px;
}
.questionIcon {
	display: block;
	margin-left: 4px;
	font-size: 16px;
	transform: scale(1);
	transition: transform .3s ease-out;
	width: 1em;
	height: 1em;
	fill: currentColor;
	justify-content: center;
}
</style>
</head>
<body>
	<div class="main_home">
		<!-- Carousel -->
		<div id="demo" class="carousel slide" data-bs-ride="carousel">
	
			<!-- Indicators/dots -->
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
					class="active"></button>
				<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
				<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
			</div>
	
			<!-- The slideshow/carousel -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="../images/crowd-banner01.jpg" class="d-block w-100">
				</div>
				<div class="carousel-item">
					<img src="../images/crowd-banner02.jpg" class="d-block w-100">
				</div>
				<div class="carousel-item">
					<img src="../images/crowd-banner03.jpg" class="d-block w-100">
				</div>
			</div>
	
			<!-- Left and right controls/icons -->
			<button class="carousel-control-prev" type="button"
				data-bs-target="#demo" data-bs-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#demo" data-bs-slide="next">
				<span class="carousel-control-next-icon"></span>
			</button>
		</div>
		<div class="row" style="padding:40px 80px 40px 80px">
			<div class="col-lg-8">
				<div class="row" style="padding-left:">
				<div class="mb-3">
					<h2 style="display:inline;">취향 맞춤 프로젝트</h2>
					<span style="float:right;">
					<svg viewBox="0 0 40 40" id="tooltip-target-1" focusable="false" role="presentation" class="questionIcon" aria-hidden="true"><path fill="none" d="M0 0h40v40H0z"></path><path d="M20 39a19 19 0 1 1 19-19 19.06 19.06 0 0 1-19 19zm0-36a17 17 0 1 0 17 17A17 17 0 0 0 20 3z"></path><path d="M24.34 10A5.75 5.75 0 0 0 20 8.33a5.7 5.7 0 0 0-6 6h2a3.7 3.7 0 0 1 4-4 3.7 3.7 0 0 1 4 4A4.29 4.29 0 0 1 22 18l-.7.6a6.51 6.51 0 0 0-2.3 5.7h2c0-1.9 0-2.6 1.7-4.3l.6-.5a6.28 6.28 0 0 0 2.7-5.2 5.73 5.73 0 0 0-1.66-4.3zM20 26.87a1.8 1.8 0 1 0 0 3.6 1.8 1.8 0 1 0 0-3.6z"></path></svg>
					</span>
						<b-tooltip target="tooltip-target-1" triggers="hover">
							서포터님들의 취향을 분석하여<br> 맞춤 프로젝트를 추천합니다
						</b-tooltip>
					</div>
				<div class="col-md-4" v-for="fvo in fund_list">
					<div class="thumbnail" style="width: 100%;">
						<a :href="'../fund/fund_detail_before.do?wfno='+fvo.wfno">
							<img :src="fvo.mainimg" class="store_poster" :style="{ width: '100%', height: getWidthDependentHeight(fvo.mainimg) + 'px' }">
							<div class="caption">
								<p style="font-size: 16px; margin:2px 0px 2px 0px; height: 50px;">{{fvo.ftitle}}</p>
								<p style="font-size: 12px; margin:2px 0px 2px 0px; color:gray;">{{fvo.fcname}} | {{fvo.makername}}</p>
								<div class="progress" style="height:3px;">
								  <div class="progress-bar" :style="{ width: fvo.achieve_rate + '%' }" style="background-color:#a6d8ce;"></div>
								</div> 
								<p style="font-size: 12px; display: flex; justify-content: space-between; align-items: center;">
									<span style="color:gray;"><strong style="color:#a6d8ce; font-size:16px;">{{fvo.achieve_rate}}%</strong>·{{fvo.cum_amount | numberWithCommas}}원</span>
									<span style="color:gray;">{{getRemainingDays(fvo.strendday)}}일 남음</span>
								</p>
							</div>
						</a>
					</div>
				</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="row">
					<h2>실시간 랭킹</h2>
					<table class="table">
						<tr><td>
							<table class="table"  v-for="(frvo, index) in fund_rank_list" :key="index">
								<tr>
									<td width="5%" rowspan="2"><h3>{{ index+1 }}</h3></td>
									<td width="70%" style="font-size: 16px;">{{frvo.ftitle}}</td>
									<td width="25%" rowspan="2">
										<img :src="frvo.mainimg" class="store_poster" :style="{ width: '100%', height: getWidthDependentHeightMini(frvo.mainimg) + 'px' }">
									</td>
								</tr>
								<tr>
									<td width="70%" style="font-size: 12px;"><span style="color:#a6d8ce">{{frvo.achieve_rate}}%</span>&nbsp;<span>{{frvo.fcname}}</span></td>
								</tr>
							</table>
						</td></tr>
					</table>
				</div>
			</div>
		</div>
		<!-- <div style="height: 10px;"></div>
		<div class="row">
			<div class="text-center">
				<ul class="pagination">
					<li v-if="startPage>1"><a href="#" @click="prev()">&lt;</a></li>
					<li v-for="i in range(startPage, endPage)" :class="i==curpage?'active':''"><a href="#" @click="selectPage(i)">{{i}}</a></li>
					<li v-if="endPage<totalpage"><a href="#"  @click="next()">&gt;</a></li>
				</ul>
			</div>
		</div> -->
	</div>
	<script>
		new Vue({
			el:'.main_home',
			data:{
				fund_list:[],
				fund_rank_list:[]
			},
			mounted:function(){
				this.send()
			},
			methods:{
				send:function(){
					axios.get("../main/fund_list_vue.do").then(response=>{
						console.log(response.data)
						this.fund_list = response.data
					}).catch(error=>{
						console.log(error.response)
					})
					axios.get("../main/fund_rank_list_vue.do").then(response=>{
						console.log(response.data)
						this.fund_rank_list = response.data
					}).catch(error=>{
						console.log(error.response)
					})
				},
				getRemainingDays:function(endDate) {
		            const now = new Date();
		            const end = new Date(endDate);
		            
					// 한 달 뒤의 날짜를 구하기 위해 월을 1 증가시킴
		           	end.setMonth(end.getMonth() + 1);
		            const timeDiff = end - now;
		            const daysDiff = Math.ceil(timeDiff / (1000 * 3600 * 24));
		            return daysDiff;
		        },
		        getWidthDependentHeight(imageUrl) {
		            // 여기서 이미지의 너비에 따라 높이를 조정하는 로직을 구현합니다.
		            // 예를 들어 이미지의 원본 너비와 높이 정보를 가져와서 비율을 유지하면서 조정할 수 있습니다.
		            // 이 예시에서는 간단히 가로 너비의 절반을 높이로 사용하도록 설정했습니다.
		            return window.innerHeight * 0.25; // 여기서의 로직을 실제 이미지 정보에 맞게 변경하세요.
				},
		        getWidthDependentHeightMini(imageUrl) {
		            // 여기서 이미지의 너비에 따라 높이를 조정하는 로직을 구현합니다.
		            // 예를 들어 이미지의 원본 너비와 높이 정보를 가져와서 비율을 유지하면서 조정할 수 있습니다.
		            // 이 예시에서는 간단히 가로 너비의 절반을 높이로 사용하도록 설정했습니다.
		            return window.innerHeight * 0.1; // 여기서의 로직을 실제 이미지 정보에 맞게 변경하세요.
				}
				/* range:function(start, end) {
					let arr = []
					let length = end-start
					for (let i=0; i<length; i++) {
						arr[i] = start
						start++
					}
					return arr
				},
				selectPage:function(page) {
					this.curpage = page
					this.send()
				},
				prev:function() {
					this.curpage = this.startPage-1 
					this.send()
				},
				next:function() {
					this.curpage = this.endPage+1
					this.send()
				} */
			},
			filters: {
		        numberWithCommas: function (value) {
		            // 숫자에 쉼표 추가 함수 정의
		            return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		        }
		    }
		})
	</script>
</body>
</html>