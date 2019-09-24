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
    <title>고객 회원가입</title>

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
                <li class="active">정보입력</li>
                <span></span>
                <li>가입완료</li>
            </ul>
        </section>
        <!-- //회원가입 타이틀 -->

        <!-- 컨텐츠영역 -->
        <section class="join_complete">
            <form name="inputForm" id="inputForm" action="">
                <!-- 필수사항 -->
                <section class="essential_info">
                    <div class="sub_title">필수사항</div>
                    <div class="essential_input_section">
                        <div class="input_type--full check_input">
                            <input type="text" name="ID" id="ID" placeholder="아이디" maxlength="20" autocomplete="off">
                            <input type="button" value="ID중복체크" class="box_type01 gray_box" id="idCheck">
                            <i class="id_check"></i> <i></i>
                            <p class="input_message"></p>
                        </div>
                        <div class="input_type--full check_input">
                            <input type="password" name="PASSWD" id="PASSWD" placeholder="비밀번호" maxlength="30" autocomplete="off">
                            <i class="pw_check"></i>
                            <p class="input_message"></p>
                        </div>
                        <div class="input_type--full check_input">
                            <input type="password" name="checkpw" id="checkpw" placeholder="비밀번호 확인">
                            <i class="pw_check"></i>
                            <p class="input_message"></p>
                        </div>
                        <div class="input_type--full check_input">
                            <input type="text" name="NAME" id="NAME" placeholder="이름">
                            <p class="input_message"></p>
                        </div>
                        <div class="input_type--full check_input">
                            <div class="select_btn">
                                <div class="select">
                                    <p>성별<i></i></p>
                                </div>
                                <ul class="select_view" id="PHONE_NO1">
                                    <li>여자</li>
                                    <li>남자</li>
                                </ul>
                            </div>
                        </div>
                        <div class="input_type--small birth">
                            <div class="select_btn">
                                <div class="select">
                                    <p>휴대전화<i></i></p>
                                </div>
                                <ul class="select_view" id="PHONE_NO1">
                                    <li>010</li>
                                    <li>011</li>
                                    <li>018</li>
                                </ul>
                            </div>
                            <input type="text" name="PHONE_NO2" id="PHONE_NO2" maxlength="4" class="next_tab" autocomplete="off">
                            <input type="text" name="PHONE_NO3" id="PHONE_NO3" maxlength="4" class="next_tab last" autocomplete="off">
                            <p class="input_message"></p>
                        </div>
                        <div class="input_type--half">
                            <input type="text" id="EMAIL1" name="EMAIL1" placeholder="이메일" autocomplete="off">
                            <input type="text" id="EMAIL2" name="EMAIL2" placeholder="직접입력" autocomplete="off" class="right_half input_select">
                            <div class="select_btn right_half input_select_btn">
                                <div class="select main_select">
                                    <p><i></i></p>
                                </div>
                                <ul class="select_view mail_view" id="selectEmail">
                                    <li>naver.com</li>
                                    <li>daum.net</li>
                                </ul>
                            </div>
                            <p class="input_message"></p>
                        </div>
                    </div>
                </section>
                <!-- //필수사항 -->

                <!-- 선택 입력항목 -->
                <section class="choice_info">
                    <div class="sub_title">선택 사항</div>
                    <div class="input_type--small">
                        <div class="select_btn">
                            <div class="select">
                                <p>생년<i></i></p>
                            </div>
                            <ul class="select_view" id="PHONE_NO1">
                                <li>1988</li>
                                <li>1987</li>
                                <li>1986</li>
                            </ul>
                        </div>
                        <div class="select_btn">
                            <div class="select">
                                <p>월<i></i></p>
                            </div>
                            <ul class="select_view" id="PHONE_NO1">
                                <li>12</li>
                                <li>11</li>
                                <li>10</li>
                            </ul>
                        </div>
                        <div class="select_btn m0">
                            <div class="select">
                                <p>일<i></i></p>
                            </div>
                            <ul class="select_view" id="PHONE_NO1">
                                <li>30</li>
                                <li>29</li>
                                <li>28</li>
                            </ul>
                        </div>
                        <p class="input_message"></p>
                    </div>
                    <div class="input_type--small address">
                        <input type="text" placeholder="주소"> <button type="button" class="box_type01 gray_box center_box">우편번호 검색</button>
                    </div>
                    <div class="input_type--full check_input">
                        <input type="text" name="NAME" id="NAME">
                        <p class="input_message"></p>
                    </div>
                </section>

                <section class="join_btn_widget join_write_btn">
                    <input type="reset" value="초기화하기" class="box_type01 gray_box">
                    <button type="button" class="box_type01 gray_box center_box">취소하기</button>
                    <button type="button" class="box_type01 indigo_box submit_btn" id="save">저장하기</button>
                </section>
                <!-- //선택 입력항목 -->
            </form>
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