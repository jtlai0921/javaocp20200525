<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<link rel="shortcut icon" href="http://ciaociao.asuscomm.com/PCS/images/favicon.png" type="image/x-icon" />

<script src="http://ciaociao.asuscomm.com/PCS/js/jquery.1.12.4.min.js"></script>
<link rel="stylesheet" href="http://ciaociao.asuscomm.com/PCS/css/bootstrap/bootstrap.4.3.1.min.css">
<script src="http://ciaociao.asuscomm.com/PCS/css/bootstrap/bootstrap.4.3.1.min.js"></script>




<style type="text/css">
	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
</style>
</head>
<body>
<div class="login-form">
    <form action="Controller/memberAddOK.jsp" method="post">
    	
        <h2 class="text-center">會員註冊</h2>       
        <div class="form-group">
            <input type="text" class="form-control" name="name" placeholder="name" required="required" value="">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password" required="required" value="">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">註冊</button>
        </div>
		
    </form>
    
</div>
</body>
</html>