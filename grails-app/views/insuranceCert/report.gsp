<%@ page import="cargo.insuranceCertificate.InsuranceCert;cargo.insuranceCertificate.AssignedInsuranceCert;cargo.insuranceCertificate.UsedInsuranceCert;cargo.insuranceCertificate.CustomsOperations" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'insuranceCert.report.label')}"/>
<title><g:message code="insuranceCert.report.label"/></title>
<style type='text/css' media='screen'>
#costEstimSrch {
    margin: 50px 0px;
    padding: 20px;
    text-align: center;
}

#costEstimSrch .inner {
    width: 450px;
    padding-bottom: 6px;
    margin-top: 20px;
    margin-left: 340px;
    margin-right: 340;
    margin-bottom: 20;
    text-align: left;
    border: 1px solid #aab;
    background-color: #f0f0fa;
    -moz-box-shadow: 2px 2px 2px #eee;
    -webkit-box-shadow: 2px 2px 2px #eee;
    -khtml-box-shadow: 2px 2px 2px #eee;
    box-shadow: 2px 2px 2px #eee;
}

#costEstimSrch .inner .fheader {
    text-align: center;
    padding: 20px 26px 14px 26px;
    background-color: #f7f7ff;
    margin: 0px 0 0px 0;
    color: #2e3741;
    font-size: 21px;
    font-weight: bold;
    font-family: times;
}

#costEstimSrch .inner .cssform p {
    clear: left;
    margin: 2px;
    padding: 0px 0 3px 0 20px;
    padding-left: 50px;
    margin-bottom: 20px;
    height: 100%;
    line-height: 40;

}

#costEstimSrch .inner .cssform input[type='text'] {
    width: 120px;
    padding-left: 100px;

}

#costEstimSrch .inner .cssform label {
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

#costEstimSrch .inner .button {
    margin-left: 170px;


}



#costEstimSrch .inner .text_ {
    width: 120px;
    margin-right: 5px;
    padding-right: 25;
}


</style>
</head>

</head>

<body>
<g:javascript src="jquery.quickselect.pack.js"/>
<h2><g:message code="insuranceCert.report.label" args="[entityName]"/></h2>
<a href="#insuranceCert" class="skip" tabindex="-1"><g:message code="insuranceCert.report.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id='costEstimSrch'>
    <div class='inner'>
        <div class='fheader'><g:message code="insuranceCert.report.label"/></div>

        <g:if test='${flash.message}'>
            <div class='costEstimSrch_message'>${flash.message}</div>
        </g:if>

        <g:form>
            <br>
            <br>
            <p style="padding-left: 110px">
                <label for='Code'><g:message code="reportInsuranceCode.label"/>:</label>
                <!--<input type='text' class='text_' name='formDesCity' id='desCity'/>  -->
                <g:select name="code" from="${cargo.insuranceCertificate.InsuranceCert.list()}" />
            </p>
            <br>
            <div class= button>
                <p>
                    <input type="button" value="Submit" onclick="autoSent()" />
                </p>
                <g:javascript>
                function autoSent(){
                    window.location.href = "${createLink(controller: 'insuranceCert', action:'reportRes')}?search=" + $('#code').val();
                }
                </g:javascript>
            </div>
        </g:form>
    </div>
</div>
<g:javascript>
    $(function(){
        $("select").quickselect()
    })
</g:javascript>
</body>
</html>
