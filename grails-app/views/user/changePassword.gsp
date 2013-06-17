<%@ page import="cargo.User" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'changePassword.label', default: "Change Password")}"/>
<title><g:message code="changePassword.label"/></title>
<style type='text/css' media='screen'>
#changePass {
    margin: 50px 0px;
    padding: 20px;
    text-align: center;
}

#changePass .inner {
    width: 450px;
    padding-bottom: 6px;
    margin: 60px auto;
    text-align: left;
    border: 1px solid #aab;
    background-color: #f0f0fa;
    -moz-box-shadow: 2px 2px 2px #eee;
    -webkit-box-shadow: 2px 2px 2px #eee;
    -khtml-box-shadow: 2px 2px 2px #eee;
    box-shadow: 2px 2px 2px #eee;
}

#changePass .inner .fheader {
    text-align: center;
    padding: 20px 26px 14px 26px;
    background-color: #f7f7ff;
    margin: 0px 0 0px 0;
    color: #2e3741;
    font-size: 21px;
    font-weight: bold;
    font-family: times;
}

#changePass .inner .cssform p {
    clear: left;
    margin: 2px;
    padding: 0px 0 3px 0 20px;
    padding-left: 50px;
    margin-bottom: 20px;
    height: 100%;
    line-height: 40;

}

#changePass .inner .cssform input[type='text'] {
    width: 120px;
    padding-left: 100px;

}

#changePass .inner .cssform label {
    font-weight: 500;
    font-family: times;
    font-size: 12;
    font-weight: 700;
    float: left;
    text-align: right;
    line-height: 40px;
    margin-left: -20px;
    width: 181px;
    padding-top: -20px;
    padding-left: -20px;
}

#changePass #submit {
    margin-left: 170px;

}

#changePass .inner .changePass_message {
    padding: 25px 25px 20px 25px;
    color: #c33;
}

#changePass .inner .text_ {
    width: 120px;
    margin-right: 5px;
    padding-right: 25;
}


</style>
</head>

</head>

<body>
<h2><g:message code="changePassword.label" args="[entityName]"/></h2>
<a href="#changePassword" class="skip" tabindex="-1"><g:message code="changePassword.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id='changePass'>
    <div class='inner'>
        <div class='fheader'><g:message code="changePassword.header"/></div>

        <g:if test='${flash.message}'>
            <div class='changePass_message'>${flash.message}</div>
        </g:if>

        <g:form action="changePassword">
            <br>
            <br>
            <p>
                <label for='password'><g:message code="changePassword.password.label"/>:</label>
                <input type='password' class='text_' name='formPassword' id='password'/>
            </p>
            <br>
            <p>
                <label for='passwordConfirm'><g:message code="changePassword.passwordConfirm.label"/>:</label>
                <input type='password' class='text_' name='formPasswordConfirm' id='passwordConfirm'/>
            </p>
            <div class= submit>
            <p>
                <g:submitButton name="submit"/>
            </p>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>