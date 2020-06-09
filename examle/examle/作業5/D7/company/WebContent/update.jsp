<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
import="ComDAO.carDAO"
import="model.car"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="BIG5">

<title>修改訂單介面</title>

<link rel="stylesheet" type="text/css" href="st1.css">

</head>

<% 

String Name=request.getParameter("name");

String Bmw=request.getParameter("bmw");

String Benz=request.getParameter("benz");

String Audi=request.getParameter("audi");

String Toyota=request.getParameter("toyota");

String Honda=request.getParameter("honda");

String Mazada=request.getParameter("mazada");

String ID=request.getParameter("id");



if(Name!=null && Bmw!=null && Benz!=null && Audi!=null && Toyota!=null && Honda!=null && Mazada!=null && ID!=null){

	

	int B=Integer.parseInt(Bmw);

    int Bz=Integer.parseInt(Benz);

    int A=Integer.parseInt(Audi);

    int T=Integer.parseInt(Toyota);

    int H=Integer.parseInt(Honda);

    int M=Integer.parseInt(Mazada);

    int I=Integer.parseInt(ID);

    

    car c=new car();

    c.setName(Name);

    c.setBmw(B);

    c.setBenz(Bz);

    c.setAudi(A);

    c.setToyota(T);

    c.setHonda(H);

    c.setMazada(M);

    

    new ComDAO.carDAO().update(I, c);

    }

    %>

<body>

<div class="header" colspan=2 align=center ><h1>訂單修改系統</h1></div>



<div class="content">

<form action="update.jsp" method="post">

<table width=600 align=center border=0>

<br>

<br>

<br>

<br>

<br>

<td>

購買姓名：<input type="text" name="name" size=10 value="name"><td>

<td>

寶馬BMW：<select name="bmw">

  <option>0</option>

  <option>1</option>

  <option>2</option>

  <option>3</option>

  <option>4</option>

  <option>5</option>

  <option>6</option>

  <option>7</option>

  <option>8</option>

  <option>9</option>

  <option>10</option>

  <option>11</option>

  <option>12</option>

  <option>13</option>

  <option>14</option>

  <option>15</option>

  <option>16</option>

  <option>17</option>

  <option>18</option>

  <option>19</option>

  <option>20</option>

  <option>21</option>

  <option>22</option>

  <option>23</option>

  <option>24</option>

  <option>25</option>

  <option>26</option>

  <option>27</option>

  <option>28</option>

  <option>29</option>

  <option>30</option>

  </select>輛

 

<td>

賓士Benz：<select name="benz">

  <option>0</option>

  <option>1</option>

  <option>2</option>

  <option>3</option>

  <option>4</option>

  <option>5</option>

  <option>6</option>

  <option>7</option>

  <option>8</option>

  <option>9</option>

  <option>10</option>

  <option>11</option>

  <option>12</option>

  <option>13</option>

  <option>14</option>

  <option>15</option>

  <option>16</option>

  <option>17</option>

  <option>18</option>

  <option>19</option>

  <option>20</option>

  <option>21</option>

  <option>22</option>

  <option>23</option>

  <option>24</option>

  <option>25</option>

  <option>26</option>

  <option>27</option>

  <option>28</option>

  <option>29</option>

  <option>30</option>

  </select>輛

<td>

奧迪Audi：<select name="audi">

  <option>0</option>

  <option>1</option>

  <option>2</option>

  <option>3</option>

  <option>4</option>

  <option>5</option>

  <option>6</option>

  <option>7</option>

  <option>8</option>

  <option>9</option>

  <option>10</option>

  <option>11</option>

  <option>12</option>

  <option>13</option>

  <option>14</option>

  <option>15</option>

  <option>16</option>

  <option>17</option>

  <option>18</option>

  <option>19</option>

  <option>20</option>

  <option>21</option>

  <option>22</option>

  <option>23</option>

  <option>24</option>

  <option>25</option>

  <option>26</option>

  <option>27</option>

  <option>28</option>

  <option>29</option>

  <option>30</option>

  </select>輛

<td>

豐田Toyota：<select name="toyota">

  <option>0</option>

  <option>1</option>

  <option>2</option>

  <option>3</option>

  <option>4</option>

  <option>5</option>

  <option>6</option>

  <option>7</option>

  <option>8</option>

  <option>9</option>

  <option>10</option>

  <option>11</option>

  <option>12</option>

  <option>13</option>

  <option>14</option>

  <option>15</option>

  <option>16</option>

  <option>17</option>

  <option>18</option>

  <option>19</option>

  <option>20</option>

  <option>21</option>

  <option>22</option>

  <option>23</option>

  <option>24</option>

  <option>25</option>

  <option>26</option>

  <option>27</option>

  <option>28</option>

  <option>29</option>

  <option>30</option>

  </select>輛

<td>

本田Honda：<select name="honda">

  <option>0</option>

  <option>1</option>

  <option>2</option>

  <option>3</option>

  <option>4</option>

  <option>5</option>

  <option>6</option>

  <option>7</option>

  <option>8</option>

  <option>9</option>

  <option>10</option>

  <option>11</option>

  <option>12</option>

  <option>13</option>

  <option>14</option>

  <option>15</option>

  <option>16</option>

  <option>17</option>

  <option>18</option>

  <option>19</option>

  <option>20</option>

  <option>21</option>

  <option>22</option>

  <option>23</option>

  <option>24</option>

  <option>25</option>

  <option>26</option>

  <option>27</option>

  <option>28</option>

  <option>29</option>

  <option>30</option>

  </select>輛

<td>

馬自達Mazada：<select name="mazada">

  <option>0</option>

  <option>1</option>

  <option>2</option>

  <option>3</option>

  <option>4</option>

  <option>5</option>

  <option>6</option>

  <option>7</option>

  <option>8</option>

  <option>9</option>

  <option>10</option>

  <option>11</option>

  <option>12</option>

  <option>13</option>

  <option>14</option>

  <option>15</option>

  <option>16</option>

  <option>17</option>

  <option>18</option>

  <option>19</option>

  <option>20</option>

  <option>21</option>

  <option>22</option>

  <option>23</option>

  <option>24</option>

  <option>25</option>

  <option>26</option>

  <option>27</option>

  <option>28</option>

  <option>29</option>

  <option>30</option>

  </select>輛

<td>

<td>訂單ID：<input type="text" name="id" size=4 value="ID"><td>

<td>

<input type="submit" style="width:100px;height:70px" value="確定修改">







</table></form>

</div>

<div class="footer"><h1><a href="index.jsp">返回訂單系統</a></h1><img src="pic/6.gif" width="200" height="200"></div>



</body>

</html>