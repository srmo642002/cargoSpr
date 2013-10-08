<%@ page import="cargo.insuranceCertificate.InsuranceCert;cargo.insuranceCertificate.AssignedInsuranceCert;cargo.insuranceCertificate.UsedInsuranceCert;cargo.insuranceCertificate.CustomsOperations" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'insuranceCert.report.label', default: 'Transit Rate')}"/>
    <title><g:message code="insuranceCert.report.label" args="[entityName]"/></title>
    <style>
    #tb
        table,th,td
    {
        border: 1px solid #0d3d62;
        table-layout: fixed;
        overflow: hidden;
        background-color: #fff9c2;
        font-size: inherit;
        text-align: center;
        font-weight: bolder;
    }
    </style>
</head>

<body>
<h2><g:message code="insuranceCert.report.label" args="[entityName]"/></h2>
<a href="#list-costEstimation" class="skip" tabindex="-1"><g:message code="costEstimation.result.label" default="costEstimation.result.label"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout"  action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-InsuranceCert" ng-controller="InsuranceCertController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <br>
    <br>
    <div id="tb">

        <table>
            <tr><th>Coupon No</th><th>Purchase Date</th><th>Expire Date</th><th>Distribute Date</th><th>Agent</th><th>Shipment</th><th>Origin Custom</th><th>Destination Custom</th><th>Transit No</th><th>Commodity</th><th>Weight</th><th>Tariff</th><th>Row No</th><th>Kutazh No</th><th>Receipt Date</th><th>Receipt No</th></tr>

            <g:each in="${reportRes}" var="item">

                <tr><td>${item.CouponNO}</td><td>${item.purchaseDate}</td><td>${item.expireDate}</td><td>${item.sendingDate}</td><td>${item.agent}</td><td>${item.shipment}</td><td>${item.transitFrom}</td><td>${item.transitTo}</td><td>${item.permitsNum}</td><td>${item.commodity}</td><td>${item.weight}</td><td>${item.tariff}</td><td>${item.rowNum}</td><td>${item.kutazhNum}</td><td>${item.receiptDate}</td><td>${item.receiptNum}</td></tr>

            </g:each>
        </table>
    </div>

    <br>
    <div>
        <g:link action="report" style="font-family: times;color: #00008b;font-size: 18px;">New Report</g:link>
    </div>
</body>
</html>
