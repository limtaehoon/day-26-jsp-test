
var userId = document.querySelector("#userid");
var pw1 = document.querySelector("#pwd1");
var pw2 = document.querySelector("#pwd2");

userId.onChange = checkId;
pw1.onChange = checkPw;
pw2.onChange = ComparePw;

function checkId(){
    if(userId.value.length <4 || userId.value.length>15 ){
        alert("4~15자리의 영문과 숫자 사용");/*오류 메세지*/
        userId.select();/*재입력할수 있도록 userid필드선택*/ 
    } 
}
function checkPw(){
    if(pw1.value.length <8){
        alert("비밀번호는 8글자 이상이어야 합니다.");
        pw1.value="";//비밀번호 필드 지움
        pw1.focus();
    }
}
function ComparePw(){
    if(pw1.value!=pw2.value){
        alert("비밀번호가 일치 하지 않습니다");
        pw2.value="";
        pw2.focus();
    }
}