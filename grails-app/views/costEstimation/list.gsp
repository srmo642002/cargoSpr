<%@ page import="cargo.CostEstimation" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'costEstimation.label', default: 'Cost Estimation')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-costEstimation" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout"  action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-costEstimation" ng-controller="costEstimationController" class="content scaffold-list" role="main">
    <rg:criteria inline="true">
        <rg:like name='rateDate'/>
        <rg:like name='currency'/>
        <rg:like name='containerType'/>
        <rg:filterGrid name='costEstimationGrid' grid="costEstimationGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.CostEstimation}" maxColumns="9">
    </rg:grid>
    <rg:dialog id="costEstimation" title="Cost Estimation Dialog" >
        <rg:fields bean="${new cargo.CostEstimation()}">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.CostEstimation}" conroller="costEstimation" action="saveCost"  params="${[method:'post']}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <g:javascript>
                $("#costEstimation").find("[name='originCnt.id']").change(function(){
                    var cnt = $(this).val()
                    $.ajax({
                        url:'<g:createLink action="getCities"/>',
                        data:{
                            id:cnt
                        }
                    }).success(function(data){
                        $("#costEstimation").find("[name='originCty.id']").html("")
                        $(data).each(function(){
                            $("#costEstimation").find("[name='originCty.id']").append("<option value='" +this.id +"'>"+this.title+"</option>")
                        })
                    })
                })
    </g:javascript>
    <g:javascript>
                $("#costEstimation").find("[name='destinationCnt.id']").change(function(){
                    var cnt = $(this).val()
                    $.ajax({
                        url:'<g:createLink action="getCities"/>',
                        data:{
                            id:cnt
                        }
                    }).success(function(data){
                        $("#costEstimation").find("[name='destinationCty.id']").html("")
                        $(data).each(function(){
                            $("#costEstimation").find("[name='destinationCty.id']").append("<option value='" +this.id +"'>"+this.title+"</option>")
                        })
                    })
                })
    </g:javascript>
    <sec:ifAnyGranted roles="Admin,Create Shipment,Edit Shipment,Set CostEst">
        <input type="button" ng-click="openCostEstimationCreateDialog()" value="Create Cost Estimation"/>
        <input type="button" ng-click="openCostEstimationEditDialog()" value="Edit Cost Estimation"/>
    </sec:ifAnyGranted>
</div>

</body>
</html>
