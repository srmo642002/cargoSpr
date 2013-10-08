<%@ page import="cargo.Shipment; cargo.cargoItem.CargoItem" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'cargoItem.label', default: 'CargoItem')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-cargoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-cargoItem" ng-controller="cargoItemController" class="content scaffold-list" role="main">
    <rg:criteria inline="true">
        <rg:like name='commodity'/>
        <rg:like name='unitOfMeasure'/>
        <rg:like name='kindOfPackage'/>
        <rg:filterGrid name='CargoItemGrid' grid="CargoItemGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${CargoItem}" columns="[[name:'id',formatter:'generateCheckbox'],[name:'item'],[name:'nonContainerized',formatter: 'checkbox'],[name:'containerized',formatter: 'checkbox'],[name:'containerNo'],[name:'size'],[name:'type'],[name:'commodity'],[name:'typeOfPackage'],[name:'noOfPackage'],[name:'grade'],[name:'grossWeight'],[name:'totalWeight'],[name:'volume'],[name:'dg',formatter: 'checkbox'],[name:'incoClass'],[name:'unNo',formatter: 'integer'],[name:'shipment'],[name:'user']]">
        <rg:criteria>
            <rg:nest name="user" >
                <rg:nest name="groups">
                    <rg:eq name='id' value='${groupid}' hidden='true' />
                </rg:nest>
            </rg:nest>
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="cargoItem" title="CargoItem Dialog">
        <rg:fields bean="${new cargo.cargoItem.CargoItem()}">
            <rg:modify>
                <rg:ignoreField field="shipment"/>
                <rg:ignoreField field="user"/>
                <rg:extraField field="shipment" title="shipment">
                    <label for="shipment">
                        <g:message code="cargoItem.shipment.label" default="Shipment" />
                        <span class="required-indicator">*</span>
                    </label>
                </rg:extraField>
            </rg:modify>
            <input type="hidden" name="shipment.id">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.cargoItem.CargoItem}" conroller="cargoItem" action="saveCargoItem"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Create Shipment,Edit Shipment">
        <input type="button" ng-click="openCargoItemCreateDialog()" value="Create CargoItem"/>
        <input type="button" ng-click="openCargoItemEditDialog()" value="Edit CargoItem"/>
    </sec:ifAnyGranted>


    <g:javascript>
        $("#cargoItem").find("#noOfPackage,#grossWeight").keyup(function () {
            var noOfPackage = parseFloat($("#cargoItem").find("#noOfPackage").val())
            var grossWeight = parseFloat($("#cargoItem").find("#grossWeight").val())
            var fini = $("#cargoItem").find("#totalWeight").val(noOfPackage * grossWeight)
            if(width==0||height==0||length==0){
                fini = 0;
            } else{
                fini = $("#cargoItem").find("#totalWeight").val(noOfPackage * grossWeight)
            }
        })
    </g:javascript>
    <g:javascript>
        $("[name$=containerized]").change(function(){
            if ($("[name$=containerized]").is(":checked")){
                $("[name$=containerNo]").parent().show();
                $("[name$=size]").parent().show();
                $("[name$=type]").parent().show();
            }
            else{
                $("[name$=containerNo]").parent().hide();
                $("[name$=size]").parent().hide();
                $("[name$=type]").parent().hide();
            }
        });
        $("[name$=containerized]").change();
    </g:javascript>
    <g:javascript>
        $("[name$=dg]").change(function(){
            if ($("[name$=dg]").is(":checked")){
                $("[name$=incoClass]").parent().show();
                $("[name$=unNo]").parent().show();
            }
            else{
                $("[name$=incoClass]").parent().hide();
                $("[name$=unNo]").parent().hide();

            }
        });
        $("[name$=dg]").change();
    </g:javascript>



</div>

</body>
</html>
