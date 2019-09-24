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
    <title>사용자 회원가입</title>

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
<article class="join pc container-fluid">
    <article class="join_contents">
        <!-- 회원가입 타이틀 -->
        <section class="title_wrap">
            <div class="title">JOIN US</div>
            <ul class="title_stage">
                <li class="active">정보입력</li>
                <span></span>
                <li>가입완료</li>
            </ul>
        </section>

        <!-- //회원가입 타이틀 -->
        <form name="inputForm" id="inputForm" action="">
            <!-- 필수사항 -->
            <section class="essential_info">
                <div class="sub_title">필수사항</div>
                <div class="essential_input_section">
                    <div class="input_type--full check_input">
                        <input type="text" name="ID" id="ID" placeholder="아이디" maxlength="20" autocomplete="off">
                        <input type="button" value="ID중복체크" class="box_type01 gray_box" id="idCheck">
                        <i class="id_check"></i>
                        <p class="input_message"></p>
                    </div>
                    <div class="input_type--full check_input">
                        <input type="password" name="PASSWD" id="PASSWD" placeholder="비밀번호" maxlength="30" autocomplete="off">
                        <i class="pw_check"></i>
                        <p class="input_message"></p>
                    </div>
                    <div class="input_type--full check_input">
                        <input type="password" name="checkpw" id="checkpw" placeholder="비밀번호">
                        <i class="pw_check"></i>
                        <p class="input_message"></p>
                    </div>
                    <div class="input_type--half row">
                        <input type="text" name="NAME" id="NAME" placeholder="이름">
                        <!-- 닉네임 최대 입력 10자리 -->
                        <input type="text" name="NICKNAME" id="NICKNAME" placeholder="닉네임" class="right_half" maxlength="10">
                        <p class="input_message"></p>
                    </div>

                    <div class="input_type--small">
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

                    <div class="input_type--small">
                        <div class="search_form">
                            <input type="search" placeholder="매장코드" class="shop_code">
                            <button class="search_btn"></button>
                        </div>
                        <div class="select_btn">
                            <input type="text" disabled class="input_disabled" value="매장명">
                        </div>
                        <div class="select_btn last_btn">
                            <div class="select">
                                <p>직급<i></i></p>
                            </div>
                            <ul class="select_view">
                                <li>사원</li>
                                <li>주임</li>
                                <li>대리</li>
                            </ul>
                        </div>
                    </div>

                    <div class="input_type--small">
                        <div class="select_btn">
                            <div class="select">
                                <p>접근권한<i></i></p>
                            </div>
                            <ul class="select_view">
                                <li>-</li>
                                <li>-</li>
                                <li>-</li>
                            </ul>
                        </div>
                        <div class="select_btn">
                            <div class="select">
                                <p>마스킹 해제 권한<i></i></p>
                            </div>
                            <ul class="select_view">
                                <li>-</li>
                                <li>-</li>
                            </ul>
                        </div>
                        <div class="select_btn last_btn">
                            <div class="select">
                                <p>엑셀 다운로드 권한<i></i></p>
                            </div>
                            <ul class="select_view">
                                <li>-</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <!-- //필수사항 -->
            <!-- 선택 입력항목 -->
            <section class="choice_info">
                <div class="sub_title">선택 입력 항목</div>
                <div class="input_type--full">
                    <input type="text" placeholder="사번" id="EMPLOYEE_NO" name="EMPLOYEE_NO">
                </div>
                <div class="input_type--small">
                    <input type="text" placeholder="직통번호">
                    <input type="text">
                    <input type="text" class="last">
                </div>
                <div class="input_type--half">
                    <div class="select_btn left_half">
                        <div class="select">
                            <p>소속<i></i></p>
                        </div>
                        <ul class="select_view">
                            <li>서울</li>
                            <li>부산</li>
                            <li>경기도</li>
                        </ul>
                    </div>
                    <input type="text" placeholder="입사일" class="datepicker">
                </div>
                <div class="input_type--full">
                    <input type="text" placeholder="IP 주소" id="CLIENT_IP" name="CLIENT_IP">
                </div>
                <div class="input_type--full">
                    <textarea name="REMARK" id="REMARK" placeholder="추가 요청 내용"></textarea>
                </div>
            </section>
            <section class="join_btn_widget">
                <input type="reset" value="초기화하기" class="box_type01 gray_box">
                <button type="button" class="box_type01 gray_box center_box">취소하기</button>
                <button type="button" class="box_type01 indigo_box submit_btn" id="save">가입요청 하기</button>
            </section>
            <!-- //선택 입력항목 -->
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
        // 아이디 체크
        $("#ID").on("keyup",function(){
            // 체크 기준
            var regExp = /^[a-z0-9_]{4,20}$/;
            var errMsg = "영문(소문자), 숫자, _(underbar), 4~20자 만 입력 가능합니다.";

            // 필수값 맞는지 확인
            requiredCheck(this,regExp,errMsg);
            // 소문자로 변경
            $(this).val($(this).val().toLowerCase());
        });

        // 아이디 중복체크
        $("#idCheck").on("click",function() {
            var ajax = new CommonAjax();
            // form 데이터 serializeObject
            var formObj = $("#inputForm");
            var paramData = formObj.serializeObject();
            // var paramData = {"ID" : $("#ID").val()};
            var id = $("#ID");

            ajax.url("/getMemberCheck");
            ajax.param(paramData);
            // success 셋팅
            ajax.success(function(response) {
                var data = response.data;
                // 빈값 체크
                if(!checkNull(data)){
                    alert('이미 사용중인 ID 입니다.');
                }
                else if(id.val() == ""){
                    alert('아이디를 입력해 주세요.');
                }
                else {
                    alert('사용 가능한 ID 입니다.');
                }
            });
            ajax.call();
        });



        // 비밀번호 체크
        $("#PASSWD").on("keyup",function(){
            // 전체 체크 기준
            var regExp = /^[a-zA-Z0-9\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@#$%&\\\=\(\'\"]{8,30}$/;
            var errMsg         = "영문, 숫자, 특수문자, 8~30자 만 입력 가능합니다."
            // 필수값 맞는지 확인
            console.log("비밀번호 키업");
            var isCheck = requiredCheck(this,regExp,errMsg);

            console.log("비밀번호 키업 isCheck : " + isCheck);

            // 문자 조합 확인
            if(isCheck){
                console.log("문자조합확인");
                // 입력 조건이 맞는지 확인
                passwdCheck(this);
            }

            // 비밀번호 동일 여부 체크
            if($("#checkpw").val() != "") {
                console.log(" 비밀번호 동일 여부 체크");
                passwdUplicate($("#checkpw"));
            }
        });

        // 비밀번호 동일체크
        $("#checkpw").on("keyup",function(){
            // 비밀번호 동일 여부 체크
            var regExp = new RegExp($("#pw").val());
            var errMsg = "비밀번호가 동일하지 않습니다.";

            passwdUplicate(this,regExp,errMsg);
        });

        // 이름 체크
        $("#NAME").on("keydown",function(event){
            // 입력 조건이 맞는지 확인
            onlyKoEngInput(event);
        }).on("keyup",function(){
            dualCheck(this,$("#NICKNAME"));
        });

        // 닉네임 체크
        $("#NICKNAME").on("keydown",function(event){
            // 입력 조건이 맞는지 확인
            onlyKoEngInput(event);
        }).on("keyup",function(){
            dualCheck(this,$("#NICKNAME"));
        });

        // 휴대전화 가운데 번호 체크
        $("#PHONE_NO2").on("keydown",function(event){
            onlyIntegerInput(event);
        }).on("keyup",function(){
            dualCheck(this,$("#PHONE_NO3"));
        });

        // 휴대전화 마지막 번호 체크
        $("#PHONE_NO3").on("keydown",function(event){
            onlyIntegerInput(event);
        }).on("keyup",function(){
            dualCheck(this,$("#PHONE_NO2"));
        });

        // 이메일 체크
        $("#EMAIL1").on("keyup",function(){
            dualCheck(this,$("#EMAIL"));
        });

        // 이메일 체크
        $("#EMAIL").on("keyup",function(){
            dualCheck(this,$("#EMAIL1"));
        });

        // 저장
        $("#save").on("click",function(){
            var paramMap = $("#inputForm").serializeArray();
            var request = $.ajax({
                url: "/createMember",
                type: "POST",
                data: paramMap,
                dataType: "json"
            });
        });
    }

    /**
     *  유효성 체크
     */
    function requiredCheck(obj, regExp, errMsg){
        var  o = $(obj);

        console.log("유효성 체크 시작");
        // 입력값 체크
        if(o.val() == "" ){
            // 입력이 안된 상태일 경우
            o.siblings(".input_message").text("").css("padding-top","0px");
            o.removeClass("check_active");
            o.removeClass("error_active");
            // 입력하지 않았을경우 기본 아이콘
            o.siblings("i").removeClass("check_icon");

            return false;
        }
        else if (regExp.test(o.val())) {
            // 입력값이 조건에 맞는 경우
            o.siblings(".input_message").text("").css("padding-top","0px");
            o.addClass("check_active");
            o.removeClass("error_active");
            // 조건 일치 아이콘
            o.siblings("i").addClass("check_icon");

            return true;
        }
        else {
            // 입력값이 조건에 맞지 않는 경우
            o.siblings(".input_message").text(errMsg).css("padding-top","0px");
            o.addClass("error_active");
            o.removeClass("check_active");
            // 조건 불일치 아이콘
            o.siblings("i").removeClass("check_icon");

            return false;
        }

        console.log("유효성체크 끝 ");

    }

    /**
     * 비밀번호 입력값 체크
     * @param obj
     * @returns {boolean}
     */
    function passwdCheck(obj){
        var passwd     = $(obj);
        // 입력값 체크
        var passwdVal = passwd.val();

        // 혼합 갯수 체크
        var isCheck = 0;

        // 입력 요소 체크
        // 대문자 유무 확인
        console.log("대문자 - " + checkCaseSensitive(passwdVal,"U"));
        if ( checkCaseSensitive(passwdVal,"U") ) {
            isCheck++;
        }
        // 소문자 유무 확인
        console.log("소문자 - " + checkCaseSensitive(passwdVal,"L"));
        if ( checkCaseSensitive(passwdVal,"L")) {
            isCheck++;
        }
        // 숫자 유무 확인
        console.log("숫자 - " + checkNumber(passwdVal));
        if ( checkNumber(passwdVal) ) {
            isCheck++;
        }
        // 특수문자 유무 확인
        console.log("특수문자 - " + checkSpecialStr(passwdVal));
        if ( checkSpecialStr(passwdVal) ) {
            isCheck++;
        }

        console.log(isCheck);
        // 필수값 입력
        if(isCheck < 3){
            passwd.siblings(".input_message").text("영문 대/소문자,숫자,특수문자 중 3가지 이상이 포함되어야 합니다.").css("padding-top","15px");
            passwd.addClass("error_active");
            passwd.removeClass("check_active");
            // 조건 불일치 아이콘
            passwd.siblings("i").removeClass("check_icon");
        }else{
            passwd.siblings(".input_message").text("").css("padding-top","0px");
            passwd.addClass("check_active");
            passwd.removeClass("error_active");
            // 조건 일치 아이콘
            passwd.siblings("i").addClass("check_icon");
        }
    }

    // 비밀번호 동일체크
    function passwdUplicate(obj) {
        var passwd            = $("#PASSWD");
        var clonePw           = $(obj);

        // 값 선언
        var passwdVal  = passwd.val();
        var clonePwVal = clonePw.val();

        console.log("passwdVal : " +passwdVal);
        console.log("clonePwVal : " +clonePwVal);
        console.log(passwdVal==clonePwVal);

        // 값이 있는지부터 확인
        if(clonePwVal == "" || clonePwVal == undefined){
            // 입력이 안된 상태일 경우
            clonePw.siblings(".input_message").text("").css("padding-top","0px");
            clonePw.removeClass("check_active");
            clonePw.removeClass("error_active");
            // 입력하지 않았을경우 기본 아이콘
            clonePw.siblings("i").removeClass("check_icon");
        } else if (clonePwVal != passwdVal) {
            // 입력값이 조건에 맞지 않는 경우
            clonePw.siblings(".input_message").text("비밀번호가 동일하지 않습니다.").css("padding-top","15px");
            clonePw.addClass("error_active");
            clonePw.removeClass("check_active");
            // 조건 불일치 아이콘
            clonePw.siblings("i").removeClass("check_icon");
        } else {
            // 입력값이 조건에 맞는 경우
            clonePw.siblings(".input_message").text("").css("padding-top","0px");
            clonePw.addClass("check_active");
            clonePw.removeClass("error_active");
            // 조건 일치 아이콘
            clonePw.siblings("i").addClass("check_icon");
        }
    }

    /**
     * 현재 입력 조건이 일치하지 않거나 , 값이 입력되지 않았을때 확인가능
     * 1. 조건이 불일치 할때 error_active 부여 및 text 노출
     *
     */

    // 회원가입 폼 버튼
    function goJoin() {
        // 필수항목 Null 값 체크
        // 1.필수항목들 가져오기
        var reqList = $(".essential_info input");
        // 2.리스트의 각 항목별 정보 가져오기
        for(var i=0; i < reqList.size(); i++) {
            // 2-1.개별항목
            var reqObj = reqList[i];

            // 3.항목의 값 Null 여부 확인하기
            if(reqObj.value == "") {
                // 4.Null일 경우 해당 항목에 error 표시하기
                $(reqObj).focus();
                $(reqObj).siblings(".input_message").text("필수항목은 반드시 입력하셔야 합니다.").css("padding-top","5px");
                $(reqObj).addClass("error_active");
                $(reqObj).removeClass("check_active");
                // 조건 불일치 아이콘
                $(reqObj).siblings("i").removeClass("check_icon");
            }
        }
        // 각 항목별 유효성을 패스했는지 체크
        // 1.패스했는지 안했는지 체크
        // 2.패스하지 못한 항목 정보 가져오기

        // 통과 (가입 실행)
        // 1.필수항목 , 각 항목별 유효성 패스 하였을시 통과

        var errorList = $(".error_active");

        // 에러가 있는지 없는지 확인
        if(errorList.size() > 0) {
            console.log("일치하지 않는 항목이 있습니다.");
        }

    }
    /**
     * input null값인 input
     * 1. 조건이 불일치 할때 error_active 부여 및 text 노출
     *
     */

    //회원가입 폼 버튼 클릭후 유효성 체크
    function goJoinCheck(){
        var reqList = $(".essential_info input");
        for(var i=0; i < reqList.size(); i++) {
            // 2-1.개별항목
            var reqObj = reqList[i];
            if(reqObj.value !== "") {
                // 입력값이 조건에 맞는 경우
                $(reqObj).siblings(".input_message").text("").css("padding-top","0px");
                $(reqObj).addClass("check_active");
                $(reqObj).removeClass("error_active");
            }
        }
    }
    // 중복체크

    function dualCheck(o1, o2){
        var o = $(o1);
        // 지금 번호가 널인 경우
        if(o.val() == "" || o.val() == undefined) {
            // 아무것도 지우면 안됨
        }
        // 지금 번호가 널이 아닌 경우
        else {
            //  빨간 테두리 지우면 됨
            o.addClass("check_active");
            o.removeClass("error_active");

            // 다른 번호가 널인 경우
            if(o2.val() == "" || o2.val() == undefined){
                // 텍스트를 지우면 안됨
            }
            // 다른 번호가 널이 아닌 경우
            else {
                // 텍스트만 지우면 됨
                console.dir(o.parent());
                o.parent().children().siblings(".input_message").text("").css("padding-top","0px");
            }
        }
    }

</script>
<!-- JavaScript 종료 -->
</body>
</html>