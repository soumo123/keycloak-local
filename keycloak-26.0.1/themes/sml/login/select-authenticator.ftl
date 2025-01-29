<!-- <#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=false; section>
    <#if section = "header" || section = "show-username">
        <script type="text/javascript">
            function fillAndSubmit(authExecId) {
                document.getElementById('authexec-hidden-input').value = authExecId;
                document.getElementById('kc-select-credential-form').submit();
            }
        </script>
        <#if section = "header">
            ${msg("loginChooseAuthenticator")}
        </#if>
    <#elseif section = "form">

        <form id="kc-select-credential-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <div class="${properties.kcSelectAuthListClass!}">
                <#list auth.authenticationSelections as authenticationSelection>
                    <div class="${properties.kcSelectAuthListItemClass!}" onclick="fillAndSubmit('${authenticationSelection.authExecId}')">

                        <div class="${properties.kcSelectAuthListItemIconClass!}">
                            <i class="${properties['${authenticationSelection.iconCssClass}']!authenticationSelection.iconCssClass} fa-2x"></i>
                        </div>
                        <div class="${properties.kcSelectAuthListItemBodyClass!}">
                            <div class="${properties.kcSelectAuthListItemHeadingClass!}">
                                ${msg('${authenticationSelection.displayName}')}
                            </div>
                            <div class="${properties.kcSelectAuthListItemDescriptionClass!}">
                                ${msg('${authenticationSelection.helpText}')}
                            </div>
                        </div>
                        <div class="${properties.kcSelectAuthListItemFillClass!}"></div>
                        <div class="${properties.kcSelectAuthListItemArrowClass!}">
                            <i class="${properties.kcSelectAuthListItemArrowIconClass!}"></i>
                        </div>
                    </div>
                </#list>
                <input type="hidden" id="authexec-hidden-input" name="authenticationExecution" />
            </div>
        </form>

    </#if>
</@layout.registrationLayout> -->




<#import "template.ftl" as layout>
<body>
    <style>
        .overwrite .hide_lang{
     display: none !important;
 }
 
 </style>
    
    <div class="container-fluid">
        <div class="row" style="background: #ffff !important;">
            <div class="col-md-7" style="margin-top:190px">
                <@layout.registrationLayout displayInfo=false; section>
    <#if section = "header" || section = "show-username">
        <script type="text/javascript">
            function fillAndSubmit(authExecId) {
                document.getElementById('authexec-hidden-input').value = authExecId;
                document.getElementById('kc-select-credential-form').submit();
            }
        </script>
        <#if section = "header">
            ${msg("loginChooseAuthenticator")}
        </#if>
    <#elseif section = "form">

        <form id="kc-select-credential-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <div class="${properties.kcSelectAuthListClass!}">
                <#list auth.authenticationSelections as authenticationSelection>
                    <div class="${properties.kcSelectAuthListItemClass!}" onclick="fillAndSubmit('${authenticationSelection.authExecId}')">

                        <div class="${properties.kcSelectAuthListItemIconClass!}">
                            <i class="${properties['${authenticationSelection.iconCssClass}']!authenticationSelection.iconCssClass} fa-2x"></i>
                        </div>
                        <div class="${properties.kcSelectAuthListItemBodyClass!}">
                            <div class="${properties.kcSelectAuthListItemHeadingClass!}">
                                ${msg('${authenticationSelection.displayName}')}
                            </div>
                            <div class="${properties.kcSelectAuthListItemDescriptionClass!}">
                                ${msg('${authenticationSelection.helpText}')}
                            </div>
                        </div>
                        <div class="${properties.kcSelectAuthListItemFillClass!}"></div>
                        <div class="${properties.kcSelectAuthListItemArrowClass!}">
                            <i class="${properties.kcSelectAuthListItemArrowIconClass!}"></i>
                        </div>
                    </div>
                </#list>
                <input type="hidden" id="authexec-hidden-input" name="authenticationExecution" />
            </div>
        </form>

    </#if>
</@layout.registrationLayout>
            </div>
            <div class="col-md-5 signinimage" style="padding:0px">
                <img src="${url.resourcesPath}/img/login-image-tab.svg" width="100%">
                <div class="bottom-left" style="position: absolute;
        bottom: 57px;
        left: 82px;"><img src="${url.resourcesPath}/img/akunah-logo.svg" /></div>
            </div>
        </div>
    </div>

</body>