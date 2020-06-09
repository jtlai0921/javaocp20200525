<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
    var oldtext = ['�s��', '���a', '����'];
    var newtext = ['wine', 'place', 'charge']
    //  �� #menu ���e�צ۰ʮھ� main ���ƶq����
    $("#menu").css("width", $(".main").length * 100)
        //  �@�i�J�e���ɦ��X���
    $(".sub").slideUp(0);

    for (i = 0; i < $(".main").length; i++) {
        //  �I�����ɦ��X�ήi�}���
        $(".main:eq(" + i + ")").on("mouseover", {
            id: i
        }, function(e) {
            n = e.data.id
            $(".sub:eq(" + n + ")").slideToggle()
            $(".sub:not(:eq(" + n + "))").slideUp()
            $(".main:eq(" + n + ")").text(newtext[n])
        })
        $(".main:eq(" + i + ")").on("mouseleave", {
            id: i
        }, function(e) {
            n = e.data.id
            $(".main:eq(" + n + ")").text(oldtext[n])
            $(".sub").stop();
        })
    }
})
</script>
<!-- �H�U�Ocss -->
<style>
*{
    margin: 0;
    padding: 0;
}
#menu{
/*     width: 500px; */
    margin: 0 auto;
     
}
.item{
    float: left;
    
}
.main{
    background-color: #e33535;
    color: #FFF;
    font-family: "�L�n������";
    font-weight: bold;
    font-size: 20px;
    cursor: pointer;
    text-align: center;
    height: 35px;
    line-height: 35px;
    width: 120px;
}
.main:hover{
    background-color: #aaa;
}
.sub{
    background-color: #4d4949;
    color: #FFF;
    font-family: "�L�n������";
    text-align: center;
    font-weight: bold;
    width: 120px;
}
.sub li{
    height: 30px;
    line-height: 30px;
    border-bottom: 1px solid #777;
}
</style>
</head>
<body>

<div id="menu">
    <!--   �Ĥ@�ղM��   -->
    <div class="item">
        <div class="main">�s��</div>
        <div class="sub">
            <ul>
                <li><input type="radio" name="sex" value="">���s</li>
                <li><input type="radio" name="sex" value="">�հs</li>
            </ul>
        </div>
    </div>
    <!--   �ĤG�ղM��   -->
    <div class="item">
        <div class="main">���a</div>
        <div class="sub">
        <ul>
                <li><input type="radio" name="sex" value="">�k��</li>
                <li><input type="radio" name="sex" value="">����</li>
                <li><input type="radio" name="sex" value="">���Q</li>
                <li><input type="radio" name="sex" value="">�D�w</li>
            </ul>
        </div>
    </div>
    <!--   �ĤT�ղM��   -->
    <div class="item">
        <div class="main">����</div>
        <div class="sub">
        <ul>
                <li><input type="radio" name="sex" value="">1000�H�U</li>
                <li><input type="radio" name="sex" value="">2000~1000</li>
                <li><input type="radio" name="sex" value="">2000�H�W</li>
            </ul>
        </div>
    </div>


</body>
</html>