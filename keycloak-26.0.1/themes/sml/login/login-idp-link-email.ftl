<#import "template.ftl" as layout>
<body>
    <style>
        
    </style>
    <div class="container-fluid">
        <div class="row" style="background: #ffffff;">
            <div class="col-md-7" style="margin-top:133px">
                <@layout.registrationLayout; section>
                <#if section = "header">
                    ${msg("emailLinkIdpTitle", idpDisplayName)}
                <#elseif section = "form">
                    <p id="instruction1" class="instruction">
                        ${msg("emailLinkIdp1", idpDisplayName, brokerContext.username, realm.displayName)}
                    </p>
                    <p id="instruction2" class="instruction">
                        ${msg("emailLinkIdp2")} <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailLinkIdp3")}
                    </p>
                    <p id="instruction3" class="instruction">
                        ${msg("emailLinkIdp4")} <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailLinkIdp5")}
                    </p>
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