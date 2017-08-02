<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=divice-width">
<title>반응형 웹</title>
<style type="text/css">
	body { background-color:  gray;}
	/* 너비가 960px이면 초록색으로 변경  */
	@media screen and (max-width:960px){
	    body { background-color:  green;}
	}
	@media screen and (max-width:500px){
	    body { background-color:  yellow;}
	}
	@media screen and (max-width:320px){
	    body { background-color:  orange;}
	}
</style>
</head>
<body>
<%-- 
   미디어 쿼리 : 사용자가 어떤 미디어를 사용하느냐에 따라 
                 사이트 형태가 바뀌도록 css를 작성하는 방법
   미디어 쿼리는 @media 속성을 사용해서 특정 미디어에서 
   어떤  css를 적용할 것 인지 지정해 줌  
   
   @media screen and (min-width: 200px) and (max-width: 320px){적용 내용}
    => 미디어 유형은 screen  이면서 최소너비가 200px이고 최대너비가 360px인 경우
     
     미디어 유형
     all => 모든 미디어
     tv => 음성과 영상이 동시 출력되는 미디어
     print => 인쇄장치
     aural => 화면을 읽어서 소리로 출력해 주는 장치
     braille => 점자 표시 장치
     handheld  => 패드(PDA)처럼 손에 들고 다니는 장치
     projection => 프로젝트
     
     뷰포트 : 실제 웹 문서 내용이 화면에 보여지는 영역
             width, height, min, max
             min-width(최소너비), 
--%>
</body>
</html>










