<div class="overwrite">


<#import "template.ftl" as layout>

    <body>
        <style>
        	body {
			background-color: #fff !important;
			background-image: none !important;
		}

		.card-pf {
			margin-top: 10px;
			box-shadow: none;
		}
        .overwrite .hide_lang{
            display: none !important;
        }
		
        </style>
        <div class="container-fluid"  style="background-color:#ffff !important">
            <div class="row">
                <div class="col-md-7" style="margin-top:190px">
                    <@layout.registrationLayout; section>
                        <#if section="header">
                            <h4 class="update-password-title">
                                ${msg("pageExpiredTitle")}
                                <h4>
                                    <#elseif section="form">
                                        <p id="instruction1" class="instruction" style="font-weight: 600;">
                                            ${msg("pageExpiredMsg1")}
                                            <a id="loginRestartLink" style="color: #5d29c3;
                                                font-weight: 600;text-decoration: none;" href="${url.loginRestartFlowUrl}">
                                                ${msg("doClickHere")}
                                            </a><br />
                                            ${msg("pageExpiredMsg2")}
                                            <a id="loginContinueLink" style="color: #5d29c3;
                                            font-weight: 600;text-decoration: none;" href="${url.loginAction}">
                                                ${msg("doClickHere")}
                                            </a>
                                        </p>
                        </#if>
                        </@layout.registrationLayout>
                </div>
                <div class="col-md-5 signinimag" style="padding:0px">
                    <img src="${url.resourcesPath}/img/login-image-tab.svg" width="100%">
                    <div class="bottom-left" style="position: absolute;bottom: 57px;left: 82px;"><img src="${url.resourcesPath}/img/akunah-logo.svg" /></div>
                </div>
            </div>
        </div>
    </body>

</div>