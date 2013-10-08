<%@ page import="cargo.SeaCostEstimation" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'SeaCostEstimation.label', default: 'Sea Cost Estimation')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-seaCostEstimation" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                     default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout"  action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-seaCostEstimation" ng-controller="seaCostEstimationController" class="content scaffold-list" role="main">
    <rg:criteria inline="true">
        <rg:like name='rateDate'/>
        <rg:like name='currency'/>
        <rg:like name='containerType'/>
        <rg:like name='bulk'/>
        <rg:filterGrid name='seaCostEstimationGrid' grid="seaCostEstimationGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.SeaCostEstimation}" columns="[[name:'rateDate'],[name:'portOfLoading'],[name:'portOfDischarge'],[name:'container',formatter: 'checkbox'],[name:'containers'],[name:'bulk',formatter: 'checkbox'],[name:'weight'],[name:'measurment'],[name:'freightTon'],[name:'day'],[name:'route'],[name:'remark'],[name:'additionals'],[name:'totalRate'],[name:'currency']]">
    </rg:grid>
    <rg:dialog id="seaCostEstimation" title="Sea Cost Estimation Dialog" >
        <rg:fields bean="${new cargo.SeaCostEstimation()}">
            <rg:modify>
                <rg:ignoreField field="deprecated"/>
            </rg:modify>
            <input type="hidden" name="deprecated">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.SeaCostEstimation}" conroller="seaCostEstimation" action="saveCost"  params="${[method:'post']}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Create Shipment,Edit Shipment,Set CostEst">
        <input type="button" ng-click="openSeaCostEstimationCreateDialog()" value="Create Sea Cost Estimation"/>
        <input type="button" ng-click="openSeaCostEstimationEditDialog()" value="Edit Sea Cost Estimation"/>
    </sec:ifAnyGranted>

    <g:javascript>
        function refreshTotalCalc(){
            $("[name$=noOfContainer],[name$=rate]").keyup(function () {
                var parent=$(this).parent();
                var noOfContainer = parseFloat(parent.find("[name$=noOfContainer]").val())
                var rate = parseFloat(parent.find("[name$=rate]").val())

                var x = parent.find("[name$=total]")

                var tc = x.val(noOfContainer*rate)
                var total=0;
                $("[name$=total]").each(function(){
                    total+=parseFloat(this.value);
                })
                $("#seaCostEstimation").find("#totalRate").val(total)
            });
        }
        $(function(){
            $("#addCompositecontainers").click(function(){
                refreshTotalCalc();
            })
        });
        refreshTotalCalc();

        $("[name$=bulk]").change(function(){
            if ($("[name$=bulk]").is(":checked")){
                $("[name$=weight]").parent().show();
                $("[name$=measurment]").parent().show();
                $("[name$=freightTon]").parent().show();
            }
            else{
                $("[name$=weight]").parent().hide();
                $("[name$=measurment]").parent().hide();
                $("[name$=freightTon]").parent().hide();
            }
        });
        $("[name$=bulk]").change();

    </g:javascript>

    </div>

</body>
</html>
