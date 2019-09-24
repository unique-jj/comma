<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

        <!-- JavaScript 시작 -->
        <script type="application/javascript">
                //console에 1-2019 찍기
                //  단 10의 배수는 찍히면 안됨
                // 연산자 참고

                //1-1000 까지 중 홀수만 찍어라


                // 배열에 있는 모든 수를 출력
                // 단, 한줄에 하나의 값만 출
                // 찍는 형태는 "[배열의 몇번째인지] 러쉬 닉네임" 으로 나오게
               // var nicks = ["베리","잇","위드","앤드","젤리","리니아","가디언"];
               //  //var nicks = "베리,잇,위드,앤드,젤리,리니아,가디언";
               //

                // 구구단 9단까지 출력 ( 2 * 1 = 2)

                // for(var fnum=2; fnum<10; fnum++){
                //
                //         for(var snum=1; snum<10; snum++){
                //                 console.log(fnum + '*' + snum + '='+fnum*snum);
                //         }
                //         console.log('---------------');
                // }


                //1부터 10을 가져온다.
                var p = 0;
                for(var tgu=1; tgu<11; tgu++) {

                        //가져온값을 누적으로 더한다.
                        p = p+tgu;

                }
                //더한값을 찍는다.
                console.log(p);



                // 한줄에 한단씩 출력
                // 첫줄 2 * 1 = 2 / 2 * 2 =4
                // 둘줄 3 * 1 = 3 / 3 * 2 = 6



                //힌트 1 변수는 콘솔라인
                //힌트2 console.log(i=i+3);
                // i="2 * 1 = 2";
                // i=i+"2 * 2 = 4";
                // i=i+"2 * 3 = 6";
                // i=i+"2 * 4 = 8";
                // i=i+"2 * 5 = 10";
                //
                // console.log( i);




        </script>
        <!-- JavaScript 종료 -->
    </body>
</html>