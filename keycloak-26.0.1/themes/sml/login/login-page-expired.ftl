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
        .instruction {
        font-weight: 600;
        font-size: 16px;
        color: #555;
        margin-bottom: 20px;
        text-align: center;
    }

    .button-style {
        display: inline-block;
        background-color: #3F2783;
        color: white !important;
        font-weight: 600;
        text-decoration: none;
        padding: 8px 16px;
        border-radius: 4px;
        font-size: 14px;
        margin-top: 8px;
        cursor: pointer;
        transition: all 0.3s ease-in-out;
        text-align: center;
        border: none;
    }

    .button-style:hover {
        background-color: #3F2783;
        transform: translateY(-1px);
    }
    .instruction a{
        text-decoration: none !important;
        color: white !important;
    }

    .overwrite .custom-des{
        margin-top: 0px !important;
    }
    @media (min-width: 768px) and (max-width: 1180px) {
        .instruction {
            font-size: 14px;
            text-align: center;
        }

        .button-style {
            width: 100%;
            max-width: 200px;
            padding: 6px 12px;
            font-size: 13px;
        }
        .signinimage {
                display: none !important;
            }
    }
		
        </style>
        <div class="container-fluid" style="background-color:#ffff !important">
            <div class="row">
                <div class="col-md-7" style="margin-top:190px">
                    <@layout.registrationLayout; section>
                        <#if section="header">
                            <!-- <h4 class="update-password-title">
                                ${msg("pageExpiredTitle")}
                                <h4> -->
                                    <#elseif section="form">
                                        <!-- <p id="instruction1" class="instruction" style="font-weight: 600;">

                                            ${msg("pageExpiredMsg2")}
                                            <a id="loginContinueLink" style="color: #5d29c3; 
                                            font-weight: 600;text-decoration: none;" href="${url.loginAction}">
                                              ${msg("doClickHere")}
                                            </a>
                                            <br />

                                            ${msg("pageExpiredMsg1")}
                                            <a id="loginRestartLink" style="color: #5d29c3;
                                                font-weight: 600;text-decoration: none;" href="${url.loginRestartFlowUrl}">
                                                ${msg("doClickHere")}
                                            </a>
                                 
                                        </p> -->
                                        <p id="instruction1" class="instruction">
                                            ${msg("pageExpiredMsg2")}
                                            <br />
                                            <a id="loginContinueLink" href="${url.loginAction}" class="button-style">
                                                ${msg("doClickHere")}
                                            </a>
                                        </p>
                                        
                                        <p id="instruction2" class="instruction">
                                            ${msg("pageExpiredMsg1")}
                                            <br />
                                            <a id="loginRestartLink" href="${url.loginRestartFlowUrl}" class="button-style">
                                                ${msg("doClickHere")}
                                            </a>
                                        </p>
                        </#if>
                        </@layout.registrationLayout>
                </div>
                <div class="col-md-5 signinimage" style="padding:0px">
                    <img src="${url.resourcesPath}/img/login-image-tab.svg" width="100%">
                    <div class="bottom-left" style="position: absolute;bottom: 57px; left: 82px;"><img src="${url.resourcesPath}/img/akunah-logo.svg" /></div>
                </div>
            </div>
        </div>
    </body>

</div>