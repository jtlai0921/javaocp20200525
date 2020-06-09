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
    var oldtext = ['酒種', '產地', '價格'];
    var newtext = ['wine', 'place', 'charge']
    //  讓 #menu 的寬度自動根據 main 的數量而變
    $("#menu").css("width", $(".main").length * 100)
        //  一進入畫面時收合選單
    $(".sub").slideUp(0);

    for (i = 0; i < $(".main").length; i++) {
        //  點選按扭時收合或展開選單
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
<!-- 以下是css -->
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
    font-family: "微軟正黑體";
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
    font-family: "微軟正黑體";
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
    <!--   第一組清單   -->
    <div class="item">
        <div class="main">酒種</div>
        <div class="sub">
            <ul>
                <li><input type="radio" name="sex" value="">紅酒</li>
                <li><input type="radio" name="sex" value="">白酒</li>
            </ul>
        </div>
    </div>
    <!--   第二組清單   -->
    <div class="item">
        <div class="main">產地</div>
        <div class="sub">
        <ul>
                <li><input type="radio" name="sex" value="">法國</li>
                <li><input type="radio" name="sex" value="">美國</li>
                <li><input type="radio" name="sex" value="">智利</li>
                <li><input type="radio" name="sex" value="">澳洲</li>
            </ul>
        </div>
    </div>
    <!--   第三組清單   -->
    <div class="item">
        <div class="main">價格</div>
        <div class="sub">
        <ul>
                <li><input type="radio" name="sex" value="">1000以下</li>
                <li><input type="radio" name="sex" value="">2000~1000</li>
                <li><input type="radio" name="sex" value="">2000以上</li>
            </ul>
        </div>
    </div>


</body>
</html>