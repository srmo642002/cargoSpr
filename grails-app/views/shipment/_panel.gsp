<div id="show-shipment" class="content scaffold-show" role="main" xmlns="http://www.w3.org/1999/html">
<h2><b>Show Shipment</b></h2>
<br>
<a href="#show-shipment" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="shipment.panel.label"
                                                          args="[entityName]"/></g:link></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>
<br>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<ol class="property-list shipment">
    <div style="clear: both"></div>

    <div style="float: left;width: 30%">
        <g:if test="${shipmentInstance?.referenceCode}">
            <li class="fieldcontain">
                <span id="referenceCode-label" class="property-label"><g:message code="shipment.referenceCode.label"
                                                                                 default="ReferenceCode"/></span>

                <span class="property-value" aria-labelledby="referenceCode-label"><g:fieldValue
                        bean="${shipmentInstance}"
                        field="referenceCode"/></span>

            </li>
        </g:if>

        <g:if test="${shipmentInstance?.title}">
            <li class="fieldcontain">
                <span id="title-label" class="property-label"><g:message code="shipment.title.label"
                                                                         default="Title"/></span>

                <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${shipmentInstance}"
                                                                                         field="title"/></span>

            </li>
        </g:if>

        <g:if test="${shipmentInstance?.description}">
            <li class="fieldcontain">
                <span id="description-label" class="property-label"><g:message code="shipment.description.label"
                                                                               default="Description"/></span>

                <span class="property-value" aria-labelledby="description-label"><g:fieldValue
                        bean="${shipmentInstance}"
                        field="description"/></span>

            </li>
        </g:if>

        <g:if test="${shipmentInstance?.originCnt}">
            <li class="fieldcontain">
                <span id="originCnt-label" class="property-label"><g:message code="shipment.originCnt.label"
                                                                             default="originCnt"/></span>

                <span class="property-value" aria-labelledby="originCnt-label"><g:fieldValue bean="${shipmentInstance}"
                                                                                             field="originCnt"/></span>

            </li>
        </g:if>

        <g:if test="${shipmentInstance?.originCty}">
            <li class="fieldcontain">
                <span id="originCty-label" class="property-label"><g:message code="shipment.originCty.label"
                                                                             default="originCty"/></span>

                <span class="property-value" aria-labelledby="originCty-label"><g:fieldValue
                        bean="${shipmentInstance}"
                        field="originCty"/></span>

            </li>
        </g:if>



        <g:if test="${shipmentInstance?.destinationCnt}">
            <li class="fieldcontain">
                <span id="destinationCnt-label" class="property-label"><g:message code="shipment.destinationCnt.label"
                                                                                  default="destinationCnt"/></span>

                <span class="property-value" aria-labelledby="destinationCnt-label"><g:fieldValue
                        bean="${shipmentInstance}"
                        field="destinationCnt"/></span>

            </li>
        </g:if>
    </div>

    <div style="float: right;width: 65%">
        <div style="float: left;width: 46%">

            <g:if test="${shipmentInstance?.destinationCty}">
                <li class="fieldcontain">
                    <span id="destinationCty-label" class="property-label"><g:message
                            code="shipment.destinationCty.label"
                            default="destinationCty"/></span>

                    <span class="property-value" aria-labelledby="destinationCty-label"><g:fieldValue
                            bean="${shipmentInstance}"
                            field="destinationCty"/></span>

                </li>
            </g:if>

            <g:if test="${shipmentInstance?.blWb}">
                <li class="fieldcontain">
                    <span id="blWb-label" class="property-label"><g:message code="shipment.blWb.label"
                                                                           default=""/></span>

                    <span class="property-value" aria-labelledby="blWb-label"><g:fieldValue bean="${shipmentInstance}"
                                                                                           field="blWb"/></span>

                </li>
            </g:if>

            <g:if test="${shipmentInstance?.shipper}">
                <li class="fieldcontain">
                    <span id="shipper-label" class="property-label"><g:message code="shipment.shipper.label"
                                                                               default="Shipper"/></span>

                    <span class="property-value" aria-labelledby="shipper-label"><g:fieldValue
                            bean="${shipmentInstance}"
                            field="shipper"/></span>

                </li>
            </g:if>

            <g:if test="${shipmentInstance?.consignee}">
                <li class="fieldcontain">
                    <span id="consignee-label" class="property-label"><g:message code="shipment.consignee.label"
                                                                                 default="Consignee"/></span>

                    <span class="property-value" aria-labelledby="consignee-label"><g:fieldValue
                            bean="${shipmentInstance}"
                            field="consignee"/></span>

                </li>
            </g:if>



            <g:if test="${shipmentInstance?.notifyParty}">
                <li class="fieldcontain">
                    <span id="notifyParty-label" class="property-label"><g:message code="shipment.notifyParty.label"
                                                                                   default="NotifyParty"/></span>

                    <span class="property-value" aria-labelledby="notifyParty-label"><g:fieldValue
                            bean="${shipmentInstance}"
                            field="notifyParty"/></span>

                </li>
            </g:if>
        </div>

        <div style="float: right;width: 46%">

            <g:if test="${shipmentInstance?.agent}">
                <li class="fieldcontain">
                    <span id="agent-label" class="property-label"><g:message code="shipment.agent.label"
                                                                             default="Agent"/></span>

                    <span class="property-value" aria-labelledby="agent-label"><g:fieldValue bean="${shipmentInstance}"
                                                                                             field="agent"/></span>

                </li>
            </g:if>

            <g:if test="${shipmentInstance?.freightCharge}">
                <li class="fieldcontain">
                    <span id="freightCharge-label" class="property-label"><g:message code="shipment.freightCharge.label"
                                                                                     default="Freight Charge"/></span>

                    <span class="property-value" aria-labelledby="freightCharge-label"><g:fieldValue
                            bean="${shipmentInstance}"
                            field="freightCharge"/></span>

                </li>
            </g:if>

            <g:if test="${shipmentInstance?.charge}">
                <li class="fieldcontain">
                    <span id="charge-label" class="property-label"><g:message code="shipment.charge.label"
                                                                              default="Charge"/></span>

                    <span class="property-value" aria-labelledby="charge-label"><g:fieldValue bean="${shipmentInstance}"
                                                                                              field="charge"/></span>

                </li>
            </g:if>

            <g:if test="${shipmentInstance?.currency}">
                <li class="fieldcontain">
                    <span id="currency-label" class="property-label"><g:message code="shipment.currency.label"
                                                                                default="Currency"/></span>

                    <span class="property-value" aria-labelledby="currency-label"><g:fieldValue
                            bean="${shipmentInstance}"
                            field="currency"/></span>

                </li>
            </g:if>

            <g:if test="${shipmentInstance?.user}">
                <li class="fieldcontain">
                    <span id="user-label" class="property-label"><g:message code="shipment.user.label"
                                                                            default="User"/></span>

                    <span class="property-value" aria-labelledby="user-label"><g:fieldValue bean="${shipmentInstance}"
                                                                                            field="user"/></span>

                </li>
            </g:if>
        </div>
    </div>

</ol>
<div style="clear:both"/>

