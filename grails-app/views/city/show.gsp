<%@ page import="cargo.City" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'city.label', default: 'City')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-city" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="list" action="list" controller="country"><g:message code="country.list.label"
                                                                               args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-city" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list city">

        <g:if test="${cityInstance?.title}">
            <li class="fieldcontain">
                <span id="title-label" class="property-label"><g:message code="city.title.label"
                                                                         default="Title"/></span>

                <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${cityInstance}"
                                                                                         field="title"/></span>

            </li>
        </g:if>

        <g:if test="${cityInstance?.persianTitle}">
            <li class="fieldcontain">
                <span id="persianTitle-label" class="property-label"><g:message code="city.persianTitle.label"
                                                                                default="Persian Title"/></span>

                <span class="property-value" aria-labelledby="persianTitle-label"><g:fieldValue bean="${cityInstance}"
                                                                                                field="persianTitle"/></span>

            </li>
        </g:if>

        <g:if test="${cityInstance?.port}">
            <li class="fieldcontain">
                <span id="port-label" class="property-label"><g:message code="city.port.label" default="Port"/></span>

                <span class="property-value" aria-labelledby="port-label"><g:formatBoolean
                        boolean="${cityInstance?.port}"/></span>

            </li>
        </g:if>

        <g:if test="${cityInstance?.abbreviation}">
            <li class="fieldcontain">
                <span id="abbreviation-label" class="property-label"><g:message code="city.abbreviation.label"
                                                                                default="Abbreviation"/></span>

                <span class="property-value" aria-labelledby="abbreviation-label"><g:fieldValue bean="${cityInstance}"
                                                                                                field="abbreviation"/></span>

            </li>
        </g:if>

        <g:if test="${cityInstance?.airports}">
            <li class="fieldcontain">
                <span id="airports-label" class="property-label"><g:message code="city.airports.label"
                                                                            default="Airports"/></span>

                <g:each in="${cityInstance.airports}" var="a">
                    <span class="property-value" aria-labelledby="airports-label"><g:link controller="airport"
                                                                                          action="show"
                                                                                          id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

    </ol>
    <sec:ifAnyGranted roles="Admin,Create BasicInfo">
        <g:form>
            <fieldset class="buttons">
                <g:hiddenField name="id" value="${cityInstance?.id}"/>
                <g:actionSubmit class="delete" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
    </sec:ifAnyGranted>
</div>
</body>
</html>
