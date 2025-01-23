
<div class="overwrite">


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
                    <@layout.registrationLayout displayMessage=false; section>
                        <#if section="header">
                            <h4 class="error-title">
                                ${msg("errorTitle")}
                            </h4>
                            <#elseif section="form">
                                <div id="kc-error-message" style="margin-top:-44px">
                                    <p class="instruction">
                                        ${message.summary?no_esc}
                                    </p>
                                    <#if client?? && client.baseUrl?has_content>
                                        <p class="instructionsss"><a class="color:black" id="backToApplication" href="${client.baseUrl}">
                                                ${msg("backToApplication1")}
                                            </a></p>
                                    </#if>
                                </div>
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

</div>