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
    <title>고객 약관동의</title>

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
                <li class="active">약관동의</li>
                <span></span>
                <li>정보입력</li>
                <span></span>
                <li>가입완료</li>
            </ul>
        </section>
        <!-- //회원가입 타이틀 -->

        <form name="inputForm" id="inputForm" action="">
            <!-- 전체동의영역 -->
            <section class="agreement_top">
                <p class="des">이용약관, 판매약관, 개인정보 수집 및 이용, 마케팅 제공(선택)에 모두 동의 합니다.</p>
                <!-- 버튼 영역 -->
                <section class="btn_wrap">
                    <button type="button" class="box_type01 white center_box">모두 확인, 동의합니다</button>
                </section>
                <!-- //버튼 영역 -->
            </section>
            <!-- //전체동의영역 -->

            <!-- 컨텐츠영역 -->
            <section class="agreement_con col-sm-12 col-xs-12">
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default checkbox">
                        <div class="panel-heading">
                            <input type="checkbox" id="checkbox1">
                            <label for="checkbox1"><a data-toggle="collapse" data-parent="#accordion"  class="agree_toggle collapsed" href="#collapse1">이용 약관 (필수)</a></label>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse">
                            <div class="panel-body">이용약관</div>
                        </div>
                    </div>
                    <div class="panel panel-default checkbox">
                        <div class="panel-heading">
                            <input type="checkbox" id="checkbox2">
                            <label for="checkbox2"><a data-toggle="collapse" data-parent="#accordion"  class="agree_toggle collapsed" href="#collapse2">이용 약관 (필수)</a></label>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body">이용약관</div>
                        </div>
                    </div>
                    <div class="panel panel-default checkbox">
                        <div class="panel-heading">
                            <input type="checkbox" id="checkbox3">
                            <label for="checkbox3"><a data-toggle="collapse" data-parent="#accordion"  class="agree_toggle collapsed" href="#collapse3">이용 약관 (필수)</a></label>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse">
                            <div class="panel-body">이용약관</div>
                        </div>
                    </div>


                    <div class="panel panel-default checkbox gray_line">
                        <div class="panel-heading">
                            <input type="checkbox" id="checkbox4">
                            <label for="checkbox4"><a data-toggle="collapse" data-parent="#accordion"  class="agree_toggle p40 collapsed" href="#collapse4">마케팅 제공 활용 동의 (선택)</a></label>
                        </div>
                        <div id="collapse4" class="panel-collapse collapse">
                            <div class="panel-body">마케팅 제공 활용 동의 (선택)</div>
                        </div>

                        <div class="choose_marketing">
                            <div class="box">
                                <input type="checkbox" id="checkbox5">
                                <label for="checkbox5">SMS</label>
                            </div>
                            <div class="box">
                                <input type="checkbox" id="checkbox6">
                                <label for="checkbox6">E-MAIL</label>
                            </div>
                        </div>
                    </div>


                </div>
            </section>
            <!-- //컨텐츠영역 -->

            <!-- 버튼 영역 -->
            <section class="btn_wrap agreement_bot">
                <button type="button" class="box_type01 deep_gray center_box">동의하기</button>
            </section>
            <!-- //버튼 영역 -->
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