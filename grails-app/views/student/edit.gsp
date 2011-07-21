

<%@ page import="org.compsat.pisces.Student" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${studentInstance}">
            <div class="errors">
                <g:renderErrors bean="${studentInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post"  enctype="multipart/form-data">
                <g:hiddenField name="id" value="${studentInstance?.id}" />
                <g:hiddenField name="version" value="${studentInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="student.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${studentInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="address"><g:message code="student.address.label" default="Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" value="${studentInstance?.address}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="contactNumber"><g:message code="student.contactNumber.label" default="Contact Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'contactNumber', 'errors')}">
                                    <g:textField name="contactNumber" value="${studentInstance?.contactNumber}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="rank"><g:message code="student.rank.label" default="Rank" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'rank', 'errors')}">
                                    <g:textField name="rank" value="${studentInstance?.rank}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="picture"><g:message code="student.picture.label" default="Picture" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'picture', 'errors')}">
                                    <input type="file" id="picture" name="picture" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="agency"><g:message code="student.agency.label" default="Agency" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'agency', 'errors')}">
                                    <g:select name="agency.id" from="${org.compsat.pisces.Agency.list()}" optionKey="id" value="${studentInstance?.agency?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="birthDate"><g:message code="student.birthDate.label" default="Birth Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'birthDate', 'errors')}">
                                    <g:datePicker name="birthDate" precision="day" value="${studentInstance?.birthDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endorser"><g:message code="student.endorser.label" default="Endorser" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'endorser', 'errors')}">
                                    <g:select name="endorser.id" from="${org.compsat.pisces.Endorser.list()}" optionKey="id" value="${studentInstance?.endorser?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="enrollments"><g:message code="student.enrollments.label" default="Enrollments" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studentInstance, field: 'enrollments', 'errors')}">
                                    
<ul>
<g:each in="${studentInstance?.enrollments?}" var="e">
    <li><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="enrollment" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
