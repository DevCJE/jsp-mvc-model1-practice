<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="helloWorld" class="example.HelloWorld"/>
<html>
  <head>
    <title>$Title$</title>
    <% String name = helloWorld.sayHelloWorldFrom("조주은"); %>
    <div>안녕하세요 반갑습니다</div>
    <div> <%= name %> </div>
  </head>
  <body>
  $END$
  </body>
</html>
