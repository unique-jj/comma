<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>로그인</title>
        <script type="text/javascript" src="common/js/jquery-1.11.0.js"></script>
        <script type="text/javascript" src="common/js/jquery-ui.js"></script>
        <script type="text/javascript" src="common/js/common.js"></script>

        <!-- base -->
        <link rel="stylesheet" type="text/css" href="common/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="common/css/font.css">
        <link rel="stylesheet" type="text/css" href="common/css/layout.css">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="common/bootstrap/css/bootstrap.css">
        <!--//살릴예정//-->
        <script src="common/js/jquery.min.js"></script><!--//tui버전업이후로 이거 삭제시 지워짐//-->
        <script src="common/bootstrap/js/bootstrap.min.js"></script>


    </head>
    <body>

        <!-- Layout 시작 -->
        <article class="login">
            <article class="login_contents">
                <section class="login_input_wrap container-fluid">
                    <h1><img src="../common/image/logo.png" alt="lush"></h1>
                    <!-- 아이디 -->
                    <div class="login_input">
                        <input type="text" id="ID" class="d_block" name="ID" placeholder="아이디" maxlength="20" autocomplete="off">
                        <input type="password" id="PASSWD" class="d_block" name="PASSWD" placeholder="비밀번호" maxlength="30" autocomplete="off">
                    </div>
                    <button type="button" class="indigo_box" id="login">로그인</button>
                    <!-- 아이디 저장 -->
                    <div class="check_wrap">
                        <input type="checkbox" id="save" name="save">
                        <label for="save">아이디저장</label>
                    </div>
                    <!-- 회원가입 아이디찾기 비밀번호 초기화 -->
                    <div class="user_link">
                        <ul>
                            <li><a href="staff_join_write.jsp">회원가입</a></li>
                            <li>아이디찾기</li>
                            <li class="last">비밀번호 초기화</li>
                        </ul>
                    </div>
                </section>
            </article>
        </article>

        <!-- JavaScript 시작 -->
        <script type="application/javascript">
            $(document).ready(function(){

                // 쿠키값 체크하여 ID에 Set
                cookieCheck();

                $("#login").on("click",function() {
                    var ajax = new CommonAjax();
                    var paramData = {"ID" : $("#ID").val(), "PASSWD":$("#PASSWD").val()};

                    ajax.url("/login");
                    ajax.type("POST");
                    ajax.param(paramData);
                    // success 셋팅
                    ajax.success(function(response) {
                        var data = response.data;
                        var status = response.code;
                        if(status == "200") {
                            if(!checkNull(data)){
                                alert('로그인 되었습니다.');
                                saveId($("#ID").val());
                            }
                        }
                        else {
                            alert(data);
                        }

                    });

                    ajax.call();
                });
            });

            function cookieCheck() {
                // 쿠키에서 저장된 ID를 받아온다
                var getId = getCookie("saveId");
                // 저장된 ID가 없으면
                if(checkNull(getId)) {
                    // ID 저장 체크 풀기
                    $("#save").attr("checked", false);
                }
                // 저장된 ID가 있으면
                else {
                    // ID 저장 체크
                    $("#save").attr("checked", true);
                    // 저장된 쿠키값을 가져와서 ID에 넣어준다.
                    $("#ID").val(getId);
                }
            }

            // ID 쿠키에 저장
            function saveId(id) {
                // ID저장여부 체크
                if($("#save").is(":checked")) {
                    // 7일 동안 쿠키 보관
                    setCookie("saveId", id, 7);
                }
                // 체크 풀려있을 시 쿠키 삭제
                else {
                    deleteCookie("saveId");
                }
            }

        </script>
        <!-- JavaScript 종료 -->
    </body>
</html>