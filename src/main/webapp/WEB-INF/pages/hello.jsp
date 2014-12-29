<%@page import="java.net.URLEncoder" %>
<%
    String fbURL = "http://www.facebook.com/dialog/oauth?client_id=myfacebookappid&redirect_uri=" + URLEncoder.encode("http://myappengineappid.appspot.com/signin_fb.do") + "&scope=email";
%>

<a href="<%= fbURL %>"><img src="/img/facebook.png" border="0" /></a>

<html>
<body>
	<h1>Message : ${message}</h1>
    Correct answers: ${correctAnswers}
Incorrect answers: ${incorrectAnswers}
true: ${game.answer3}
false ${game.answer4}
    <script>
        window.fbAsyncInit = function() {
            FB.init({
                appId      : '796119047096634',
                xfbml      : true,
                version    : 'v2.2'
            });
        };

        (function(d, s, id){
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {return;}
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <div
            class="fb-like"
            data-share="true"
            data-width="450"
            data-show-faces="true">
    </div>

    <%--<c:if test="${not empty error}">--%>
        <%--<div class="error">${error}</div>--%>
    <%--</c:if>--%>
    <%--<c:if test="${not empty msg}">--%>
        <%--<div class="msg">${msg}</div>--%>
    <%--</c:if>--%>
</body>
</html>