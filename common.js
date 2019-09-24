$(function(){
	includeLayout();
	selectBox();
	datepicker();
	getKeyCode();
	allCheck();
	inputVal();
	moveTab();

	/* 팝업 닫기 esc */
	$(document).keyup(function(e) {
		if (e.keyCode == 27) {
			layerClose();
		}
	});
})

/******************************************************************************************
 * 													serializeObject												*
 ******************************************************************************************/

$.fn.serializeObject = function () {
	var result = {};
	var extend = function (i, element) {
		var node = result[element.name];
		if ('undefined' !== typeof node && node !== null) {
			if ($.isArray(node)) {
				node.push(element.value);
			} else {
				result[element.name] = [node, element.value];
			}
		} else {
			result[element.name] = element.value;
		}
	};
	
	$.each(this.serializeArray(), extend);
	return result;
};

/******************************************************************************************
 * 													공통 선언부													*
 ******************************************************************************************/
	//브라우저가 IE 인지 판단
var agent	= window.navigator.userAgent.toLowerCase();
var isIE		= agent.indexOf("msie")!=-1||agent.indexOf("trident/7.0")!=-1;

/******************************************************************************************
 * 												공통 Util Function												*
 * Common Util Function [start]
 *
 * 함수명					파라미터							결과값 예
 *							설명
 *---------------------------------------------------------------------------------------------------------------------------------------------------
 * getStrByte				str								14
 * 							입력된 문자열의 Byte 크기를 계산
 ******************************************************************************************/
/**
 * 문자열의 Byte 크기를 계산한다.
 * 한글은 3Byte 그 외에는 1Byte
 * @param str
 * @returns {number}
 */
function getStrByte(str) {
	var byte = 0;
	var u = 0;
	
	// 반복하며 계산
	for(var i=0; u=str.charCodeAt(i++); byte+=u>>11?3:u>>7?2:1);
	
	return byte;
}


	//회원가입 휴대전화 maxlength 값 이상 작성시 focus 이동
function moveTab(){
	$(".next_tab").keyup(function(){
		// input maxlength 속성값
		var inputLimit = $(this).attr("maxlength");
		// input 입력값이 maxlength 보다 크거나 같을때 .next_tab로 포커스 이동
		if (this.value.length >= inputLimit) {
			$(this).next('.next_tab').focus();
			return false;
		}
	});
}

	//회원가입 이메일 select 클릭시 input에 입력
function inputVal(){
	$(".mail_view li").on("click",function(){
		// 셀렉트 박스 텍스트
		var text = $(this).text();
		// direct_input name을 가진 input에 셀렉트 박스 텍스트 입력
		$("input[name=direct_input]").val(text);
	})
}
	//회원가입 약관동의 checkbox 전체 체크
function allCheck(){
	$(document).ready(function() {
		$(".check-all").click( function() {
			// check_all--btn 클릭시 all_checked 클래스명 부여
			$(".check_all--btn").toggleClass("all_checked");
			// check-all 클릭시 check_box 클래스 체크박스 checked
			$(".check_box").prop("checked",this.checked);
		});
	});
}

	//셀렉트박스
function selectBox() {
	$(".select").on("click",function(e){
		e.stopPropagation();
		// select 자식 요소 P 태그에 arrow_up 클래스추가
		$(this).find('p').addClass('arrow_up');
		// select 형제요소 select_view에 active 클래스
		var active = $(this).siblings('.select_view').hasClass("active");
		// active 클래스가 없을경우
		if(active == false){
			$(".select").siblings('.select_view').hide().removeClass('active');
			$(this).siblings('.select_view').show().addClass('active');
			$(this).find('p').addClass('arrow_up');
		}else{
			$(this).siblings('.select_view').hide().removeClass('active');
			$(".select p").removeClass('arrow_up');
		}
	});

	// box,html 클릭시 셀렉트박스 해제
	$("body, html").click(function() {
		$(".select_view").hide();
		$(".select p").removeClass("arrow_up");
	});

	// 셀렉트 박스 텍스트 넣기
	$(".select_view li").on("click",function(){
		$(this).parent().prev().find('p').text($(this).text()).append("<i></i>");
		//$(this).find('.right_half.input_select').text("눈누"); 정은작업중
		$(".select p").removeClass('arrow_up');
		$(".select_btn ul").hide();
		$('.select_view').removeClass('active');
	});
}

// 공통된 레이아웃 include
function includeLayout(){
	// html 에서 사용가능한 data 속성값 data-*
	var include = $('[data-include]');
	var ui, url;
	$.each(include, function(){
		ui = $(this);
		url = ui.data('include');
		ui.load(url, function(){
			ui.removeAttr('data-include')
		})
	});
}
// 달력
function datepicker() {
	$(".datepicker").datepicker();
}
/******************************************************************************************
 * 													Data 전송													*
 *
 * 함수명					파라미터							결과값 예
 *							설명
 *---------------------------------------------------------------------------------------------------------------------------------------------------
 *
 ******************************************************************************************/



/******************************************************************************************
 *												Popup Open Util													*
 *
 * 함수명					파라미터							결과값 예
 *							설명
 *---------------------------------------------------------------------------------------------------------------------------------------------------
 * layerPop
 *
 ******************************************************************************************/
/**
 * 팝업열기 jsp onclick=layerPop('id' , 'file url')
 */
function layerPop(id, url) {
	$("body").append("<div class='popup_wrap' id=" + id +"></div>");
	$(".popup_wrap").load(url);
}

/**
 * keycode 27 = esc 클릭할 경우 팝업 닫기
 */
function layerClose() {
	function keyClose() {
		$(document).keyup(function(e) {
			if (e.keyCode == 27) {
				layerClose();
			}
		});
	}
	keyClose();
	$(".popup_wrap").remove();
}

/******************************************************************************************
 *												Data Convert Util												*
 *
 * 함수명					파라미터							결과값 예
 *							설명
 *---------------------------------------------------------------------------------------------------------------------------------------------------
 * createJsonObject			( ... )							{"Key" : "Value"}
 * 							넘겨받은 값을 통해 JSON Object를 리턴
 ******************************************************************************************/
/**
 * 넘겨받은 값을 이용해 JSON Object를 리턴한다.
 * 파라미터의 갯수 제한은 없지만
 * 파라미터의 규칙은 지켜야 한다.
 *
 * [파라미터 규칙]
 * - 파라미터는 Key 와 Value의 순서 로 이뤄진다
 * - 파라미터는 위와 같은 이유로 반드시 짝수이다.
 * - 파라미터 갯수의 제한은 없음.
 * 	ex >  createJsonObject("Key","여기가 Value", "Key2", "Value2");
 * @returns {boolean|any}
 */
function createJsonObject() {
	// 파라미터
	var arg		= arguments;
	var argLen	= arg.length;
	
	// 파라미터 갯수를 확인
	if(argLen == 0) {
		alert("파라미터가 없습니다.");
		return false;
	}
	// key,value 형식으로 받아야 하기 때문에 반드시 짝수여야 함
	else if(argLen % 2 != 0) {
		alert("파라미터 형식이 올바르지 않습니다.");
		return false;
	}
	
	// JSON Object
	var jsonObj = '';
	
	// 파라미터 갯수만큼
	for(var i = 0; i < argLen; i+=2) {
		// json 셋팅
		jsonObj += '\"' + arg[i] + '\":' +   '\"' + arg[i+1] + '\"' ;
		
		// 마지막이 아닐 경우 , 를 찍어줘야 함
		if(i < argLen-2) {
			jsonObj += ", ";
		}
	}
	// 감싸줌
	jsonObj = '{' + jsonObj  + '}';
	
	// JSON Object를 만들어서 리턴
	return JSON.parse(jsonObj);
}

/**
 * 폼 안의 잇풋값들을 FormData로 생성한다.
 * 전역변수로 var formData = new FormData(); 선언 해둬야 한다.
 * 단 , input 파일타입은 따로 처리한다.
 * 백엔드 단에서 RequestParam으로 받아야 한다.
 * 	ex >   var fields = $("#inputForm").find('input, textarea, select');
 		  var paramData = createFormData(fields);
 * @returns {formData}
 */
function createFormData(fields) {
	//var formData = new FormData();
	var obj = new Object();
	
	for (var i = 0; i < fields.length; i++) {
		var $item = $(fields[i]);
		// 파일타입 제외한 다른 필드는 오브젝트화
		// 파일타입은 fileupload부분에서제어
		
		if ($item.attr('type') !="file"){
			obj[$item.attr('name')] =  $item.val();
		}
	}
	// 일반 필드가 있다면
	if(obj != null) {
		// 폼데이터에 Json화 하여 삽입
		formData.append("jsonData", JSON.stringify(obj));
	}
	return formData;
}


/******************************************************************************************
 * 												Validation Util													*
 *
 * 함수명					파라미터							결과값 예
 *							설명
 *---------------------------------------------------------------------------------------------------------------------------------------------------
 * checkSpecialStr			val								ture
 * 							특수기호 존재 여부 판별
 * checkCaseSensitive		val,gubun						true
 * 							영문이 입력되었는지 판별
 *  checkNumber			val								true
 * 							숫자가 입력되었는지 판별
 *  checkKorean				val								true
 * 							한글이 입력되었는지 판별
 *  checkNull				val								true
 * 							빈값인지 체크
 ******************************************************************************************/
/**
 * 특수기호가 있는지 없는지 판별
 * @param val
 */
function checkSpecialStr(val) {
	// 체크 할 특수문자 목록
	var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
	
	// 특수문자 있음
	if(regExp.test(val)) {
		return true;
	}
	// 특수문자 없음
	else {
		return false;
	}
}

/**
 * 영문의 입력여무 체크
 * 구분값에 따라 대소문자 여부 체크 가능
 * gubun = "U" : 대문자  /  "L" : 소문자  /  없음 : 구문없이 영문만 체크
 * @param val
 * @param gubun
 */
function checkCaseSensitive(val, gubun) {
	var regExpAll = /[a-zA-Z]/;
	var regExpUpper= /[A-Z]/;
	var regExpLower = /[a-z]/;
	
	console.log(val + " / " + gubun);
	
	// 대소문자 구분없이 영문이 입력되있는지 여부
	if(gubun == undefined || gubun == null || gubun == "") {
		// 영문있음
		if(regExpAll.test(val)) {
			return true;
		}
	}
	// 대문자가 입력되었는지 여부
	else if(gubun == "U") {
		// 대문자 있음
		console.log("대문자 체크!!!!!!!")
		if(regExpUpper.test(val)) {
			return true;
		}
	}
	// 소문자가 입력되었는지 여부
	else if(gubun == "L") {
		// 소문자 있음
		console.log("소문자 체크!!!!!!!")
		if(regExpLower.test(val)) {
			return true;
		}
	}
	// 없음
	else {
		return false;
	}
}

/**
 * 숫자가 입력  여부 체크
 * @param val
 */
function checkNumber(val) {
	var regExp= /[0-9]/;
	
	// 숫자 입력 여부 체크
	if(regExp.test(val)) {
		// 숫자있음
		return true;
	}
	else {
		// 숫자없음
		return false;
	}
}

/**
 * 넘어온 값이 빈값인지 체크
 * !value 하면 생기는 논리적 오류를 제거하기 위해
 * 명시적으로 value == 사용
 * [], {} 도 빈값으로 처리 
 * @param val
 */
function checkNull(val) {
	if( val == "" || val == null || val == undefined || ( val != null && typeof val == "object" && !Object.keys(val).length ) ){ 
		return true 
	}else{ 
		return false 
	}
}
/******************************************************************************************
 * 												Key Event Util													*
 *
 * 함수명					파라미터					결과값 예
 *							설명
 *---------------------------------------------------------------------------------------------------------------------------------------------------
 * defaultKeyCheck			event					true
 * 							기본적인 특수키들을 체크한다
 *  cancelEvent				event
 *  							기본 이벤트 발생을 취소시킨다
 * onlyDateFormat			dateObj,event			2011-05-07
 * 							keyup이벤트로 날짜에 '-'을 넣어준다.
 * onlyIntegerInput			event					423213
 * 							keyDown 이벤트로 숫자만 입력 하능하게 한다.
 * onlyNumberInput			event					-163929
 * 							keyDown 이벤트로 숫자만 입력 하능하게 한다.(음수추가)
 * onlyNumberPointInput							-28.33
 * 							KeyCode 숫자만 입력 가능하게 한다.
 * 							onlyNumberInput()와 다른 것은
 * 							소숫점(.) / 마이너스(-)도 입력 가능
 * onlyKoEngInput			event
 * 							한글과 영문자만 입력 가능
 *  byteCheck				event, str, maxLength	23 or false
 *  							키 입력시 기존 크기(Byte)와 눌렀을 당시의 크기(Byte)를 계산 (keyDown)
 *  getKeyByte				code					3
 *  							입력된 키코드에 맞는 byte 를 리턴
 ******************************************************************************************/
/**
 * 기본키 체크
 * @param event
 * @returns {boolean}
 */
function defaultKeyCheck(event) {
	// 키코드 가져오기
	var code = getKeyCode(event);
	
	// ctrl, command, capslock, del, back, 방향키 전, 후, 한영의 키는 숫자키와 같이 인식 되게 한다.
	// back:8, space:32, del:46, 방향전:37, 방향후:39, Tab:9,
	if(event.ctrlKey == true || event.metaKey == true ||
		code == 20 || code == 21 || code == 46 || code == 8 || code == 37 || code == 39 || code == 9 ) {
		return true;
	}
	else {
		return false;
	}
}

/**
 * 기본 이벤트를 취소시킨다.
 * @param event
 */
function cancelEvent(event){
	// 입력했던 키 이벤트 삭제
	if (event.preventDefault) {
		// ETC
		event.preventDefault();
	}
	else {
		// IE
		event.returnValue = false;
	}
}

/**
 * event의 keycode
 * @param e
 * @returns {*}
 */
function getKeyCode(e) {
	var result;
	
	if(isIE) {
		// IE 일 경우
		result = window.event.keyCode;
	}
	else if(e) {
		// 그 외
		result = e.which;
	}
	
	return result;
}

/**
 * 날짜 입력시 keyUp event에 준다.
 * @param dateObj
 * @param event
 * @param gubun
 * @returns {boolean}
 */
function onlyDateFormat(dateObj, event, gubun) {
	// 숫자만 입력 가능
	if(!onlyIntegerInput(event)) {
		return false;
	}
	
	// 기본이벤트 설정
	if(!event) {
		event = window.event;
	}
	
	// 키코드 가져오기
	var code = getKeyCode(event);
	
	// 기본 특수키 체크
	if (defaultKeyCheck(event)) {
		return true;
	}
	
	// 구분자가 없을 경우 - 를 기본으로
	if(gubun == undefined) {
		gubun = "-";
	}
	
	// 받은값에서 숫자만 추출
	var str	= getDataToNumber(dateObj.value);
	var leng = str.length;
	
	switch (leng) {
		case 1 :
		case 2 :
		case 3 :
		case 4 :
			dateObj.value = str;
			break;
		case 5 :
			break;
		case 6 :
			dateObj.value = str.substring(0, 4) + gubun + str.substring(4);
			break;
		case 7 :
			break;
		case 8 :
			dateObj.value = str.substring(0, 4) + gubun + str.substring(4, 6) + gubun + str.substring(6);
			break;
	}
}

/**
 * 숫자만 입력 가능하게 한다.
 * keyDown 이벤트에 입력한다.
 * true : 가능키, false : 입력불가
 * @param event
 * @returns {boolean}
 */
function onlyIntegerInput(event) {
	// 기본이벤트 설정
	if(!event) {
		event = window.event;
	}
	
	// 키코드 가져오기
	var code = getKeyCode(event);
	
	// 기본 특수키 체크
	if (defaultKeyCheck(event)) {
		return true;
	}

	// 메인키보드 숫자 48 ~ 57
	// 숫자키 패드 인식 가능하게 추가 96 ~ 105 까지(ie 의 코드, ff에서는 메인키와 숫자키 같은 코드값이다.)
	if (!(code >= 48 && code <= 57) && !(isIE && (code < 96 || code > 105))) {
		// 이벤트 취소
		cancelEvent(event);
		
		return false;
	}
	
	return true;
}


/**
 * 입력 가능하게 한다.
 * keyDown 이벤트에 입력한다.
 */
function onlyNumberInput(event) {
	if(!event) {
		event = window.event;
	}
	
	// 키코드 가져오기
	var code = getKeyCode(event);
	
	// 기본 특수키 체크
	if (defaultKeyCheck(event)) {
		return true;
	}
	
	// -:189(음수추가	ie:189, ff:109)
	if (code != (isIE?189:109)) {
		// 메인키보드 숫자 48 ~ 57
		if (code < 45 || code > 57 || code == 190) {
			// 숫자키 패드 인식 가능하게 추가 96 ~ 105 까지(ie 의 코드, ff에서는 메인키와 숫자키 같은 코드값이다.)
			if (!isIE || code < 96 || code > 105 || code == 190) {
				// 이벤트 취소
				cancelEvent(event);
				
				return false;
			}
		}
	}
	return true;
}

/**
 * 숫자만 입력 가능하게 한다. onlyNumberInput()와 다른 것은
 * 소숫점(.)도 입력 가능하다~~~
 * 마이너스(-)도 입력 가능하도록~
 * keyDown 이벤트에 입력한다.
 */
function onlyNumberPointInput(KeyCode)
{
	// 기본이벤트 설정
	if(!event) {
		event = window.event;
	}
	
	// 키코드 가져오기
	var code = getKeyCode(event);
	
	// 기본 특수키 체크
	if (defaultKeyCheck(event)) {
		return true;
	}
	
	// 190(소수점추가), -:189(음수추가	ie:189, ff:109)
	if (code != 190 && code != (isIE?189:109)) {
		// 메인키보드 숫자 48 ~ 57
		// 숫자키 패드 인식 가능하게 추가 96 ~ 105 까지(ie 의 코드, ff에서는 메인키와 숫자키 같은 코드값이다.)
		if (!(code >= 48 && code <= 57) && !(isIE && (code < 96 || code > 105))) {
			// 이벤트 취소
			cancelEvent(event);
		}
	}
}

/**
 * 한글과 영문만 입력 가능하도록 한다. (KeyDown)
 * @param event
 * @returns {boolean}
 */
function onlyKoEngInput(event) {
	// 기본이벤트 설정
	if(!event) {
		event = window.event;
	}
	
	// 키코드 가져오기
	var code = getKeyCode(event);
	
	// 기본 특수키 체크
	if (defaultKeyCheck(event)) {
		return true;
	}
	
	//  영문 대문자  : 65~90
	//  영문 소문자  : 97~122
	//  한글 가~힣   : 45032~55203
	//  한글 자음 : 12593~12622
	//  한글 모음 : 12623~12643
	if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122)
		|| (code >= 45032 && code <= 55203)  || (code >= 12593 && code <= 12643) ) {
		// 통과
		return true;
	}
	else {
		// 이벤트 취소
		cancelEvent(event);
		
		return false;
	}
}

/**
 * 키 입력시 기존 크기(Byte)와 눌렀을 당시의 크기(Byte)를 계산 (keyDown)
 * 한계값이 있을경우 입력여부를 판단하고
 * 없을경우에는 계산된 값을 리턴
 * @param event
 * @param str
 * @param maxLength
 * @returns {boolean|number}
 */
function byteCheck(event, str, maxLength) {
	// 기본이벤트 설정
	if(!event) {
		event = window.event;
	}
	
	// 키코드 가져오기
	var code = getKeyCode(event);
	
	// 기존 문자의 크기
	var originLength	= getStrByte(str);
	// 현재 키값 문자의 크기
	var keyLength	= getKeyByte(code);
	// 합쳐진 문자의 크기
	var resultLength	= Number(originLength) + Number(keyLength);
	
	// maxLength 가 존재하는 체크
	if(maxLength > 0 && maxLength != undefined) {
		if(maxLength < resultLength) {
			// 이벤트 취소
		// max값이 존재한다면 현재 사이즈가 더 크다면 입력취소
			cancelEvent(event);
			
			return false;
		}
	}
	// maxLength 가 존재하지 않는다면 계산된 값을 리턴
	else {
		return resultLength;
	}
}

/**
 * 입력된 키 값의 Byte 크기를 구함
 * (Length 와는 다름)
 * 한글은 3byte 그 외에는 1byte
 * @param code
 * @returns {number}
 */
function getKeyByte(code) {
	//  한글 가~힣   : 45032~55203
	//  한글 자음 : 12593~12622
	//  한글 모음 : 12623~12643
	if((code >= 45032 && code <= 55203)  || (code >= 12593 && code <= 12643) ) {
		return 3;
	}
	else {
		return 0;
	}
}


/******************************************************************************************
 * 													Number  Util												*
 *
 * 함수명					파라미터							결과값 예
 *							설명
 *---------------------------------------------------------------------------------------------------------------------------------------------------
 * getDataToNumber		data							123123123
 * 							무조건 숫자만 리턴
 *  getMoneyFormat			data							-273,343,455.23566
 *  							숫자에 천단위를 찍어서 리턴
 *  getMoneyToNumber		data							-273343455.23566
 *  							숫자의 천단위를 지워서 리턴
 ******************************************************************************************/
/**
 * 데이터의 숫자만 추출
 * @param data
 * @returns {*|void|string}
 */
function getDataToNumber(data) {
	return data.toString().replace(/[^0-9]/g,"");
}

/**
 * 숫자에 천단위 마킹
 * @param data
 * @returns {string}
 */
function getMoneyFormat(data) {
	// 소숫점
	var float	= "";
	// 음수가 있는지 확인
	var sign		= Math.sign(data);
	
	// 소수점이 있는지 확인
	if(data.indexOf("\.") > -1) {
		// 정수와 소수점 분리
		float	= data.match(/(\.[0-9]*)/)[0];
		data	= Math.floor(data);
	}
	
	// 정수 영역에서 숫자만 가져온 후 양수/음수 복원
	var number =  getDataToNumber(data) * sign;
	
	// 콤마찍기
	number = Number(number).toLocaleString();
	
	// 기존의 형식 그대로 원복하여 리턴
	return number + float;
}

/**
 * 숫자의 천단위를 지워서 리턴
 * @param data
 * @returns {*|void|string}
 */
function getMoneyToNumber(data) {
	return data.replace(/,/g, "");
}
	
/******************************************************************************************
 *												 Date Util Function												*
 *
 * 함수명					파라미터									결과값 예
 *							설명
 *---------------------------------------------------------------------------------------------------------------------------------------------------
 * addZero					data									02
 * 							해당 일 또는 월을 두자릿수로 리턴한다.
 * getToday					gubun									20190101
 * 							호출시 오늘 날짜를 리턴한다.
 * toDateFormat				date, gubun								2019-01-01
 * 							입력한 날짜를 원하는 날짜 형식으로 리턴한다.
 * toTimeFormat				date									23:05:22
 * 							입력한 날짜를 원하는 날짜 형식으로 리턴한다.
 * getDayOfWeek			date									2
 * 							해당 일자의 요일을 코드로 리턴한다.
* addMonth				date, add								20190101
 * 							해당 일자에 지정된 개월수 만큼을 더함
* addDays					date, add								20190101
 * 							해당 일자에 지정된 일수 만큼을 더함
 * betweenDays				fromDate, toDate						50
 * 							두 날짜 사이의 일수를 구함
 * betweenTimes			fromDate, fromTime, toDate, toTime		16:34
 * 							두 날짜 사이의 시간차를 구함 (시분)
 * 						betweenTimes()
 ******************************************************************************************/
/**
 * 날짜(일 또는 월) 를 받아 두자릿수로 맞춤
 * @param data
 * @returns {string}
 */
function addZero(data) {
	// 날짜의 한자릿수를 두자릿수로 맞추는 작업
	if(data  < 10) {
		data = "0" + data;
	}
	
	return data;
}

/**
 * 오늘 날짜를 리턴 (YYYY-MM-DD)
 * @param gubun
 * @returns {string}
 */
function getToday(gubun) {
	// Date 선언
	var date	= new Date();
	var year	= date.getFullYear();
	var mm	= date.getMonth() + 1;
	var dd	= date.getDate();
	
	// 요청한 구분자가 있는지 확인
	if(gubun == undefined) {
		// 초기화
		gubun = "";
	}
	
	// 월 또는 일이 한자리 일 경우 앞에 0을 더해줘야 함
	return year + gubun + addZero(mm) + gubun + addZero(dd);
}

/**
 * 날짜를 구분자에 따라 원하는 형태로 변경 (ex : YYYYMMDD > YYYY-MM-DD)
 * @param date
 * @param gubun
 * @returns {string|boolean}
 */
function toDateFormat(date, gubun) {
	// 들어온 값에서 숫자만 추출
	date = getDataToNumber(date);
	
	// 제대로 된 값인지 유효성 체크
	if(date.length == 8) {
		var year	= date.substr(0,4);
		var mm	= date.substr(4,2);
		var dd	= date.substr(6,2);
		
		// 구분자 값이 없을 경우 디폴트값 셋팅
		if(gubun == undefined) {
			gubun = "-";
		}
		
		// 요청한 구분자값을 넣어서 리턴
		return year + gubun + mm + gubun +dd;
	}
	else {
		alert("올바른 날짜의 형식이 아닙니다.");
		return false;
	}
}
/**
 * 시간 형태에 맞게 리턴.
 * @param time
 * @returns {string|boolean}
 */
function toTimeFormat(time) {
	// 들어온 값에서 숫자만 추출
	time = getDataToNumber(time);
	
	// 제대로 된 값인지 유효성 체크
	if(time.length == 6) {
		var hh	= time.substr(0,2);
		var mm	= time.substr(2,2);
		var ss	= time.substr(4,2);
		
		// 요청한 구분자값을 넣어서 리턴
		return hh + ":" + mm + ":" +ss;
	}
	else if(time.length == 4) {
		var hh	= time.substr(0,2);
		var mm	= time.substr(2,2);
		
		// 요청한 구분자값을 넣어서 리턴
		return hh + ":" + mm ;
	}
	else {
		alert("올바른 시간의 형식이 아닙니다.");
		return false;
	}
}

/**
 *  해당 날짜의 요일을 리턴한다.
 * 일요일 ~ 토요일 : 0~6
 * @param date
 * @returns {number}
 */
function getDayOfWeek(date) {
	// Date 생성
	var d = new Date(toDateFormat(date));
	
	return d.getDay();
}

/**
 * 해당 일자에 지정된 개월수만큼을 더함
 * @param date
 * @param add
 * @returns {string}
 */
function addMonth(date, add) {
	// 들어온 값에서 숫자만 추출
	date = getDataToNumber(date);
	
	// 날짜 셋팅
	var d = new Date(Number(date.substr(0,4)), Number(date.substr(4,2)-1) + Number(add) , Number(date.substr(6,2)));
	
	// 날짜 가져오기
	var year	= d.getFullYear();
	var mm	= d.getMonth() + 1;
	var dd	= d.getDate();
	
	return (year +  addZero(mm) +  addZero(dd)).toString();
}

/**
 * 해당 일자에 지정된 일자수만큼을 더함
 * @param date
 * @param add
 * @returns {string}
 */
function addDays(date, add) {
	// 들어온 값에서 숫자만 추출
	date = getDataToNumber(date);
	
	// 날짜 셋팅
	var d = new Date(Number(date.substr(0,4)), Number(date.substr(4,2)-1) , Number(date.substr(6,2)) + Number(add));
	
	// 날짜 가져오기
	var year	= d.getFullYear();
	var mm	= d.getMonth() + 1;
	var dd	= d.getDate();
	
	return (year +  addZero(mm) +  addZero(dd)).toString();
}

/**
 * 두 날짜 사이의 일수를 리턴
 * @param fromDate
 * @param toDate
 * @returns {number}
 */
function betweenDays(fromDate, toDate) {
	// 날짜 셋팅
	var fromD	= new Date(toDateFormat(fromDate));
	var toD		= new Date(toDateFormat(toDate));
	
	return (toD - fromD) / (1000 * 3600 * 24);
}

/**
 * 두 날짜 사이의 시간차를 리턴
 * @param fromDate
 * @param fromTime
 * @param toDate
 * @param toTime
 * @returns {number|boolean}
 */
function betweenTimes(fromDate, fromTime, toDate, toTime) {
	// 값이 없을경우 오늘날짜로 셋팅
	if(fromDate == undefined || fromDate == "") {
		fromDate = getToday();
	}
	if(toDate == undefined || toDate == "") {
		toDate = getToday();
	}
	
	// 필수값이기 때문에 반드시 있어야 함
	if(fromTime == undefined || fromTime == "" || toTime == undefined || toTime == "") {
		alert("시간은 필수로 입력하셔야 합니다.");
		return false;
	}
	
	// 시분만 입력되었을 경우 초까지 셋팅
	if(fromTime.length == 4) {
		fromTime += "00";
	}
	if(toTime.length == 4) {
		toTime += "00";
	}
	
	// 들어온 값에서 숫자만 추출
	fromDate	= getDataToNumber(fromDate);
	fromTime	= getDataToNumber(fromTime);
	toDate 		= getDataToNumber(toDate);
	toTime		= getDataToNumber(toTime);
	
	// 날짜 셋팅
	var from	= new Date(Number(fromDate.substr(0,4)), Number(fromDate.substr(4,2)-1) , Number(fromDate.substr(6,2))
							,Number(fromTime.substr(0,2)), Number(fromTime.substr(2,2)) , Number(fromTime.substr(4,2)));
	var to		= new Date(Number(toDate.substr(0,4)), Number(toDate.substr(4,2)-1) , Number(toDate.substr(6,2))
							,Number(toTime.substr(0,2)), Number(toTime.substr(2,2)) , Number(toTime.substr(4,2)));
	
	// 차이시간
	var gapHour	= (to.getTime() - from.getTime()) / 60000 / 60;
	// 소숫점을 분으로 환산
	var gapMin		= (to.getTime() - from.getTime()) / 60000 % 60;
	
	return Math.floor(gapHour) + ":" + gapMin;
}

/******************************************************************************************
 *													Cookie Util													*
 *------------------------------------------------------------------------------------------------------------------------------------------------------
 * document 객체의 cookie 속성에 입력해서 생성
 * document.cookie = 'Name=Value;Expires=날짜;Domain=도메인;Path=경로;Secure'
 *------------------------------------------------------------------------------------------------------------------------------------------------------
 * 함수명					파라미터							결과값 예
 *							설명
 *------------------------------------------------------------------------------------------------------------------------------------------------------
 * setCookie					cookieName, value, exdays
 * 							쿠키 생성(쿠키이름-key, 값, 만료일)
 * getCookie				cookieName
 * 							원하는 쿠키값 추출
 * deleteCookie				cookieName
 * 							쿠키 삭제
 ******************************************************************************************/

/**
 * 쿠키 생성
 * @param cookieName
 * @param value
 * @param exdays
 */
function setCookie(cookieName, value, exdays){
	// 쿠키 만료시간 설정
	var exdate = new Date();
	// 설정 일수만큼 현재시간에 만료값으로 지정
	exdate.setDate(exdate.getDate() + exdays);
	// cookie 값 설정(인코딩하여)
	var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	// set
	document.cookie = cookieName + "=" + cookieValue;
}

/**
 * 쿠키 삭제(만료처리)
 * @param cookieName
 */
function deleteCookie(cookieName){
	// 쿠키 만료시간 설정
	var expireDate = new Date();
	// 오늘날짜 전날로 설정
	expireDate.setDate(expireDate.getDate() - 1);
	// set
	document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

/**
 * 원하는 쿠카값 가져오기
 * @param cookieName
 */
function getCookie(cookieName) {
	var x, y;
	// 쿠키 가져오기
	var val = document.cookie.split(';');
	
	// 원하는 쿠키 추출
	for (var i = 0; i < val.length; i++) {
		x = val[i].substr(0, val[i].indexOf('='));
		y = val[i].substr(val[i].indexOf('=') + 1);
		// 앞과 뒤의 공백 제거하기
		x = x.replace(/^\s+|\s+$/g, '');
		if (x == cookieName) {
			// unescape로 디코딩 후 값 리턴
			return unescape(y);
		}
	}
}

/******************************************************************************************
 * 													Ajax 공통													*
 *----------------------------------------------------------------------------------------------------------------------------------------------------
 * 사용 예제
 function fnSave(){
    // ajax 선언
    var ajax = new CommonAjax();
    // 폼 데이터를 serializeObject
    var param = $("#form").serializeObject();
    // 또는 데이터 직접 생성
    // var param =  {"ID" : $("#ID").val()};
    // url 셋팅
    ajax.url("/createMember");
    // type 셋팅
    ajax.type("POST");
    // param 셋팅
    ajax.param(param);
    // success 셋팅
    ajax.success(function(data) {
        alert("저장되었습니다.");
    });
    // ajax 실행
    ajax.call();
}
 * 주의사항
 * POST,PUT 이 아닐 시 반드시 url > type > contentType > processData > param 순으로 셋팅 해야 한다.
 ******************************************************************************************/
// jQuery Ajax 공통
var CommonAjax = function () {
	// 실 셋팅 변수
	var f = {};
	// Default Set 변수
	var o = { $f:jQuery(f), type:"POST", async:true, dataType:"json", contentType:"application/json; charset=UTF-8", processData:true};
	// set Url
	f.url = function(url) {
		o.url = url;
		return f;
	};
	// set Type
	f.type = function(type) {
		o.type = type;
		return f;
	};
	// set Async
	f.async = function(async) {
		o.async = async;
		return f;
	};
	// set contentType
	f.contentType = function(contentType) {
		o.contentType = contentType;
		return f;
	};
	// set processData
	f.processData = function(processData) {
		o.processData = processData;
		return f;
	};
	// set Param
	f.param = function(param, varName) {
		if(o.contentType == false && o.processData == false ) {
			o.param = param;
		}
		else {
			if(o.type == "POST" || o.type == "PUT") {
				// Javascript Object를 String 으로 파싱
				o.param = JSON.stringify(param);
			}
			else {
				f.url(o.url+ "?" + varName + "=" + encodeURIComponent(JSON.stringify(param)));
			}
		}
		return f;
	};
	// set dataType
	f.dataType = function(dataType) {
		o.dataType = dataType;
		return f;
	};
	// set before
	f.before = function(before) {
		o.before = before;
		return f;
	};
	// set error
	f.error = function(error) {
		o.error = error;
		return f;
	};
	// set success
	f.success = function(success) {
		o.success = success;
		return f;
	};
	// call method
	f.call = function call() {
		$.ajax({
			url         : o.url,
			type        : o.type,
			async       : o.async,
			data        : o.param,
			dataType    : o.dataType,
			contentType : o.contentType,
			processData:  o.processData,
			// Type: Function( jqXHR jqXHR, PlainObject settings )
			beforeSend:function() {
				if(!checkNull(o.before)) {
					if(typeof(o.before) == "function") {
						o.before();
					}
					else {
						eval(o.before + "();");
					}
				}
			},
			// 기본셋팅
			// Type: Function( jqXHR jqXHR, String textStatus, String errorThrown )
			error: function (xhr, status, errorThrown) {
				if(!checkNull(o.error)) {
					if(typeof(o.error) == "function") {
						o.error();
					}
					else {
						alert("통신 오류 : " + xhr.status + " : " + status + " : " + errorThrown);
					}
				}
			},
			
			// Type: Function( Anything data)
			success : function(data) {
				var message = data.message;
				if(message == "success" ) {
					if(typeof(o.success) == "function") {
						o.success(data);
					}
					else {
						eval(o.success + "(data);");
					}
				}
			}
		});
	};
	
	return f;
};

/**
 * byte 용량을 환산하여 반환
 * 용량의 크기에 따라 MB, KB, byte 단위로 환산함
 * @param fileSize  byte 값
 * @param fixed     환산된 용량의 소수점 자릿수
 * @returns {String}
 */
function byte(fileSize, fixed) {
	var str
	
	//MB 단위 이상일때 MB 단위로 환산
	if (fileSize >= 1024 * 1024) {
		fileSize = fileSize / (1024 * 1024);
		fileSize = (fixed === undefined) ? fileSize : fileSize.toFixed(fixed);
		str = fileSize + ' MB';
	}
	//KB 단위 이상일때 KB 단위로 환산
	else if (fileSize >= 1024) {
		fileSize = fileSize / 1024;
		fileSize = (fixed === undefined) ? fileSize : fileSize.toFixed(fixed);
		str = fileSize + ' KB';
	}
	//KB 단위보다 작을때 byte 단위로 환산
	else {
		fileSize = (fixed === undefined) ? fileSize : fileSize.toFixed(fixed);
		str = fileSize + ' byte';
	}
	return str;
}