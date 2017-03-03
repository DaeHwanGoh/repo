<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h3>DOM 제어</h3>
- html() : innerHTML , val() : value
<hr/>
<span id="sp">text</span> <input type="text" id="t" />
<hr />
<button id="html">html()</button>|<button id="val">val()</button>
<script>
	$("#html").click(function(){
		window.alert($("#sp").html());
		$("#sp").html("텍스트");
	});
	$("#val").dblclick(function(){
		window.alert($("#t").val());
		$("#t").val("");
	});	
</script>
<hr/>
- attr , prop  
<hr/>
<textarea rows="3" cols="30" id="sample"></textarea>
<hr/>
<button id="attr">attr</button>|<button id="prop">prop</button>
<hr/>
<script>
	$("#attr").click(function() {
		var r = $("#sample").attr("rows");
		console.log($("#sample").attr("id"));
		$("#sample").attr("id", "abcd"); //이렇게 해주면 속성 이름이 sample에서 abcd로 바뀐다.
		$("#sample").attr("cols", 50);
		console.log(r);
		console.log($("#sample").attr("disabled"));
	});
	
	$("#prop").click(function() { //attribute는 value가 의미있는 애들, prop은 true, false같이 키고 끄는게 의미있는 애들. 차이점 확실히 알기.
		console.log($("#sample").prop("disabled"));
		$("#sample").prop("disabled", true);
	});

</script>









