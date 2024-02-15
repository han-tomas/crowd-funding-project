<p align="center">
 <img src = "https://github.com/http-kjs/SecondProject/assets/124488773/eb762893-79fd-4569-bbf5-2f0108d33c6f">
</p>
<p align="right">
 <a href="https://ten-pond-80a.notion.site/ff46870bf6d54c4f888509d44df234d2?pvs=4">'같이 펀딩' 포트폴리오 바로가기</a>
</p>
  
## 📚목차  
  
1. [소개](#소개)
2. [개발 목표](#개발-목표)
3. [모델링 ERD & 플로우차트](#모델링-erd--플로우차트)
4. [담당 역할](#담당-역할)
5. [개별 소스](#개별-소스)

---  
### 👋소개  
<p align="center">
 <img src = "https://github.com/http-kjs/SecondProject/assets/124488773/68306584-5c07-4c63-97ef-b814485c3632" height="400px", width="1200px">
</p>  
  
**개발 인원 :** *<span style = "color:gray">5명</span>*  
**개발 기간 :** *<span style = "color:gray">2023 / 07 / 31 ~ 2023 / 08 / 29</span>*  
<br>
**사용자들이 메이커가 되어 다양한 카테고리의 상품을 직접 등록하고, 다른 사용자들에 의해 펀딩 금액이 메이커가 설정한 만족도를 달성하면 상품 판매가 이루어지는 서비스를 구현한 프로젝트입니다.**  
<br>
**상세 설명 :** ['같이펀딩' 포트폴리오로 이동](https://ten-pond-80a.notion.site/ff46870bf6d54c4f888509d44df234d2?pvs=4)

---  
### 📃모델링 ERD & 플로우차트
<details>
  <summary>모델링 ERD 보기</summary>
  <img src = "https://github.com/http-kjs/SecondProject/assets/124488773/5698c01e-7663-432e-b192-ec09eb23ed2e">
</details>  
<details>
  <summary>플로우차트 보기</summary>
  <img src = "https://github.com/http-kjs/SecondProject/assets/124488773/df3cf033-13ef-4e5a-92e1-874f5a75d1c7">
</details>
  
---
### 🧑담당 역할
<details>
  <summary>요구사항 분석</summary>
  <img src = "https://github.com/http-kjs/SecondProject/assets/124488773/eb5a6c5e-c90e-483b-a23b-cb6d4eeb7f20"><br>
 <img src = "https://github.com/http-kjs/SecondProject/assets/124488773/70dba641-3090-4b50-8338-ef3078d01a9d">
</details>  
  
1. **메이커 페이지**
2. **판매 상품(프로젝트) 등록/수정/삭제**
3. **판매 공지사항 게시판(새소식) CRUD**
4. **고객 문의 사항**  

---  
### 👨‍💻개별 소스  

<details>
  <summary>VO</summary>
  <ul>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/vo/FundVO.java">FundVO</a>: 펀딩 상품 등록 관련</li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/vo/RewardVO.java">RewardVO</a>: 펀딩 상품 옵션 관련</li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/vo/StoreVO.java">StoreVO</a>: 스토어 상품 관련</li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/vo/StoreRewardVO.java">StoreRewarVO</a>: 스토어 상품 옵션 관련</li>
      <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/vo/NewsVO.java">NewsVO</a>: 새소식 관련</li>
  <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/vo/PageVO.java">PageVO</a>: 페이지네이션 관련</li>
  <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/vo/QnAVO.java">QnAVO</a>: 고객 문의사항 관련</li>
  <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/vo/ReplyVO.java">ReplyVO</a>: 문의 답변</li>
 </ul>
 
</details> 
<details>
  <summary>DAO</summary>
  <ul>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/dao/FundDAO.java">FundDAO</a>: 메이커 관련</li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/dao/StoreDAO.java">StoreDAO</a>: 스토어 관련</li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/dao/QnADAO.java">QnADAO</a>: 고객문의</li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/dao/ReplyDAO.java">ReplyDAO</a>: 문의 답변</li>
 </ul> 
</details> 
<details>
  <summary>Controller</summary>
  <ul>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/web/MakerpageController.java">MakerpageController</a></li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/web/MakerpageRestController.java">MakerpageRestController</a></li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/web/StoreController.java">StoreController</a></li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/web/StoreRestController.java">StoreRestController</a></li>
 </ul> 
</details> 
<details>
  <summary>Mapper</summary>
  <ul>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/mapper/FundMapper.java">FundMapper</a></li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/mapper/fund-mapper.xml">fund-mapper</a>:MyBatis 이용</li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/mapper/StoreMapper.java">StoreMapper</a></li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/mapper/store-mapper.xml">store-mapper</a>:MyBatis 이용</li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/mapper/QnAMapper.java">QnAMapper</a></li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/mapper/qna-mapper.xml">qna-mapper</a>:MyBatis 이용</li>
   <li><a href="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/mapper/ReplyMapper.java">ReplyMapper</a></li>
 </ul> 
  
</details> 
<details>
 <summary>task(Scheduling)</summary>
 <ul>
   <li>
      <a href ="https://github.com/han-tomas/crowd-funding-project/blob/master/CrowdProject/src/main/java/com/sist/task/ScheduledTask.java">ScheduledTask.java</a>
   </li>
 </ul> 
</details>
<details>
  <summary>View</summary>
  <ul>
   <li><a href ="https://github.com/han-tomas/crowd-funding-project/tree/master/CrowdProject/src/main/webapp/WEB-INF/makerpage">메이커 페이지</a></li>
   <li><a href ="https://github.com/han-tomas/crowd-funding-project/tree/master/CrowdProject/src/main/webapp/WEB-INF/store">스토어 페이지</a></li>
   <li><a href ="https://github.com/han-tomas/crowd-funding-project/tree/master/CrowdProject/src/main/webapp/WEB-INF/fund">펀딩 상품 상세</a></li>
  </ul>  
</details> 
