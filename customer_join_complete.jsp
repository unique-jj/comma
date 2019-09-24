<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="Content-Script-Type" content="text/javascript"/>
    <meta http-equiv="Content-Style-Type" content="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>고객 가입완료</title>

    <script type="text/javascript" src="common/js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="common/js/jquery-ui.js"></script>
    <script type="text/javascript" src="common/js/common.js"></script>

    <!-- base -->
    <link rel="stylesheet" type="text/css" href="common/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="common/css/font.css">
    <link rel="stylesheet" type="text/css" href="common/css/layout.css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="common/bootstrap/css/bootstrap.css">
    <script src="common/bootstrap/js/bootstrap.min.js"></script>


</head>

<body onload="loadPage();">

<!-- Layout 시작 -->
<article class="join tablet container-fluid">
    <article class="join_contents visible-xs visible-sm visible-lg">

        <!-- 회원가입 타이틀 -->
        <section class="title_wrap">
            <div class="title">JOIN US</div>
            <ul class="title_stage col-xs-12 col-sm-12">
                <li>약관동의</li>
                <span></span>
                <li>정보입력</li>
                <span></span>
                <li class="active">가입완료</li>
            </ul>
        </section>
        <!-- //회원가입 타이틀 -->


        <!-- 컨텐츠영역 -->
        <section class="join_complete">
            <img src="/common/image/join_complete.png" alt="회원가입완료페이지">
            <div class="join_com_title">환영합니다</div>
            <div class="join_com_des">LUSH SPA 회원 가입을 축하드립니다.</div>
            <div class="join_com_des2">러쉬스파에서 다양한 서비스를<br>경험하실 수 있습니다.</div>
        </section>
        <!-- //컨텐츠영역 -->



        </form>
    </article>
</article>
<!-- Layout 종료 -->

<!-- JavaScript 시작 -->
<script type="application/javascript">
    /**
     *  페이지 초기 로드시 호출됨
     */
    function loadPage(){
        // 기본 호출
        setHtml();
    }

    /**
     *  각종 이벤트 및 유동적 HTML 요소  처리
     */
    function setHtml(){

        //agreement toggle
        $('.nav-stacked > li > a').click(function (e) {
            e.preventDefault();
            //e.stopPropagation();
            $(this).children(".glyphicon").toggleClass('glyphicon-minus');
        });

    }

</script>
<!-- JavaScript 종료 -->
</body>
</html>