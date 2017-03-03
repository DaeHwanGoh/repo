<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h2>jQuery DOM Traversing</h2>
-태그$("태그명")나, 클래스이름$(".클래스명"), 아이디명$("#아이디명")로 접근 가능
<br/>
<c:forTokens var="tk" items="가위,바위,보" delims=",">
	<button>${tk }</button>
</c:forTokens>
<!-- 
	태그명이나.. 클래스이름으로 서칭이 되면.. 여러개가 나옴. each
 -->
 
 <c:forEach var="i" begin="1" end="10">
 	<input type="checkbox"	class="chk"/>목록 .${i } <br/>
 </c:forEach>
 <input type="text" readonly value="아무말이나" id="t"/>
 <hr/>
 <button id="bt">클릭</button>
<script>
	$("button").each(function(){ //배열로 나온 태그를 일괄처리를 하고 싶을 때 each를 사용
		console.log(this);
	//this.innerHTML="안녕";
// 	$(this).html("음...");
		this.disabled=true; 
		// 그냥 this를 쓰면 script로 처리
	});
	$(".chk").each(function(){
// 		this.checked=true; 
// 		$(this).checked=true; <--에러 this를 jQuery로 바꾸면 이렇게 안되고 prop으로 세팅해야됨.
		$(this).prop("checked", true);
	})
	$("#bt").prop("disabled" ,false); //prop은 속성을 껐다 켰다 하는 함수.  .prop("disabled")만 쓰면 disabled의 상태가 나옴.
	//jQuery는 인자를 비우면 getter 인자를 적어주면 setter ex) .html()
	$("#t").prop("readonly", false); //prop으로 제어되는 효과는.. [checked, disable, selected, readonly]
	$("#bt").click(function(){
		var cnt=0;
		$(".chk").each(function(){
			cnt++;
			if($(this).prop("checked")){
				$(this).prop("checked",false);
			} else {
				$(this).prop("checked",true);
			}
		});
		window.alert(cnt);
	});
	
</script>


