<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false showAnotherWayIfPresent=true>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="robots" content="noindex, nofollow">
        <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
        <#if properties.meta?has_content>
            <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title>
${msg("loginTitle",(realm.displayName!''))}
</title>
    <#--  <link rel="icon" href="${url.resourcesPath}/img/login-logo.ico" />  -->
       <link rel="shortcut icon" href="https://images.squarespace-cdn.com/content/v1/600a2734b232b75f58bb48f9/1611708638682-7WT4R8N83A1IXXV2JRHA/favicon.ico?format=100w">
    <#if properties.stylesCommon?has_content>
        <#list properties.stylesCommon?split(' ') as style>
            <link href="${url.resourcesCommonPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>
<body class="${properties.kcBodyClass!}">
<style>
body {
			background-color: #fff !important;
			/* Ensure white background */
			background-image: none !important;
			/* No background images */
		}
		.card-pf {
			margin-top: 10px;
			box-shadow: none;
		}
@media (min-width: 768px) and (max-width: 1180px) {
.hide_lang{
    margin-right: 0px !important;
}
}
@media (min-width: 310px) and (max-width: 450px) {
			.show_lang{
                margin-left:7px !important
            }
            	.sign {
				margin-top: 100px;
			}
			.btn_custom {
				transition: all linear 0.3s;
				-webkit-transition: all linear 0.3s;
				-moz-transition: all linear 0.3s;
				-ms-transition: all linear 0.3s;
				-o-transition: all linear 0.3s;
				font-family: ' Poppins', sans-serif !important;
                }
                .btn_custom:hover {
                background-color: #fff !important;
                color: #3f2783 !important;
                }
                .inpubutton1 {
                height: 50px !important;
                border-radius: 10px !important;
                margin-bottom: 20px !important;
                /* width: auto !important; */
                margin-right: 0 !important;
                border: 1px solid #3f2783 !important;
                box-shadow: none !important;
                }
                .inputbutton2 {
                height: 50px !important;
                border-radius: 10px !important;
                margin-bottom: 20px !important;
                /* width: auto !important; */
                margin-right: 0 !important;
                border: 1px solid #3f2783 !important;
                box-shadow: none !important;
                }
                div#kc-form {
                width: auto !important;
                }
                .signinimage {
                display: none !important;
                }
                .hide_lang {
                margin-right: 88px;
                width: 50%;
                margin-top: 25px;
                }
                .login-pf-page {
                padding-top: 0px !important;
                position: relative !important;
                bottom: 56px !important;
                }
                .signupoption {
                left: 0% !important;
                top: 22% !important;
                right: 0% !important
                }
                .arrowlogo {
                margin-left: 52px !important;
                }
                .signupname {
                height: 50px !important;
                border-radius: 10px !important;
                margin-bottom: 20px !important;
                margin-right: 0 !important;
                border: 1px solid #3f2783 !important;
                box-shadow: none !important;
                }
                .signuplastname {
                height: 50px !important;
                border-radius: 10px !important;
                margin-bottom: 20px !important;
                margin-right: 0 !important;
                border: 1px solid #3f2783 !important;
                box-shadow: none !important;
                }
                .signupemail {
                height: 50px !important;
                border-radius: 10px !important;
                margin-bottom: 20px !important;
                margin-right: 0 !important;
                border: 1px solid #3f2783 !important;
                box-shadow: none !important;
                }
                .signuppassword {
                height: 50px !important;
                border-radius: 10px !important;
                margin-bottom: 20px !important;
                margin-right: 0 !important;
                border: 1px solid #3f2783 !important;
                box-shadow: none !important;
                }
                .signupconfirm {
                height: 50px !important;
                border-radius: 10px !important;
                margin-bottom: 20px !important;
                margin-right: 0 !important;
                border: 1px solid #3f2783 !important;
                box-shadow: none !important;
                }
                form#kc-register-form {
                width: auto !important;
                }
                .inpubutton3 {
                height: 50px !important;
                border-radius: 10px !important;
                margin-bottom: 20px !important;
                width: 70% !important;
                margin-left: 51px !important;
                border: 1px solid #3f2783;
                box-shadow: none !important;
                }
                .forgot_mob {
                text-align: center !important;
				margin-left: 0px !important;
                }
                .forgot_mob_btn {
                width: 59% !important;
                height: 50px !important;
                border-radius: 10px !important;
                font-weight: 600 !important;
                margin-top: 20px !important;
                color: #fff !important;
                background: #3F2783 !important;
                border-radius: 8px !important;
                border: 2px solid #3F2783 !important;
                display: inline-block !important;
                margin-left: 70px !important;
                }
                .mob_forgot_width {
                width: 100% !important;
                }
                .updatepass {
                width: 84% !important;
                }
                .updatepass1 {
                width: 55% !important;
                }
                .radiobox {
                margin-bottom: 20px;
                }
                .btn-home {
                width: 55% !important;
                }
                }
                </style>
                <div class="${properties.kcLoginClass!}" style="margin-top:10px;">
                    <#-- <div id="kc-header" class="${properties.kcHeaderClass!}">
                        <div id="kc-header-wrapper"
                            class="${properties.kcHeaderWrapperClass!}">
                            ${kcSanitize(msg("loginTitleHtml",(realm.displayNameHtml!'')))?no_esc}
                        </div>
                </div> -->
                <div>
                    <img src="${url.resourcesPath}/img/login-logo.svg" style="display: block;
    margin-right: auto;
    margin-top: 68px;
    margin-left: auto;">
                    <h4 style="font-size: 24px;
    margin: 35px 0 0 0;
    text-align: center;
    line-height: 32px;
    color:black
    "><b>
                            ${msg("Sign_in_akunah")}
                        </b></h4>
                    <#-- <h6 style="font-size: 14px;
    margin: 15px 0 35px 0;
    text-align: center;
    "><b>Don’t have an account? </b>
                        <a href="">
                            <u style="color: #3F2783;">Sign up</u></a>
                        </h6> -->
                </div>
                <div class="${properties.kcFormCardClass!}" style="position:relative;">
                    <header class="${properties.kcFormHeaderClass!}">
                        <#if realm.internationalizationEnabled && locale.supported?size gt 1>
                            <div class="${properties.kcLocaleMainClass!}" id="kc-locale">
                                <div id="kc-locale-wrapper" class="${properties.kcLocaleWrapperClass!}">
                                    <div class="hide_lang" id="kc-locale-dropdown" class="${properties.kcLocaleDropDownClass!} ">
                                        <img src="${url.resourcesPath}/img/Vector.svg" class="arrowlogo" style="position: absolute;
    margin-top: 7px;
    margin-left: 50px;" />
                                        <a class="text_color" style="margin-left: -13px;" href="#" id="kc-current-locale-link">
                                            ${locale.current}
                                        </a>
                                        <ul class="show_lang" style="position: absolute;
    top: var(--pf-c-dropdown__menu--Top);
    z-index: var(--pf-c-dropdown__menu--ZIndex);
    padding-top: var(--pf-c-dropdown__menu--PaddingTop);
    padding-bottom: var(--pf-c-dropdown__menu--PaddingBottom);
    background: var(--pf-c-dropdown__menu--BackgroundColor);
    background-clip: padding-box;
    border: var(--pf-c-dropdown__menu--BorderWidth) solid transparent;
    box-shadow: var(--pf-c-dropdown__menu--BoxShadow);
    overflow-y:scroll;
    height:400px;
        overflow-x: hidden;
    margin-left: -16px;
    margin-top: -5px;
    ">
                                            <#list locale.supported as l>
                                                <li class="${properties.kcLocaleListItemClass!}">
                                                    <a class="${properties.kcLocaleItemClass!}" href="${l.url}">
                                                        ${l.label}
                                                    </a>
                                                </li>
                                            </#list>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </#if>
                        <#if !(auth?has_content && auth.showUsername() && !auth.showResetCredentials())>
                            <#if displayRequiredFields>
                                <div class="${properties.kcContentWrapperClass!}">
                                    <div class="${properties.kcLabelWrapperClass!} subtitle">
                                        <span class="subtitle"><span class="required">*</span>
                                            ${msg("requiredFields")}
                                        </span>
                                    </div>
                                    <div class="col-md-10">
                                        <h1 id="kc-page-title">
                                            <#nested "header">
                                        </h1>
                                    </div>
                                </div>
                                <#else>
                                    <h1 id="kc-page-title">
                                        <#nested "header">
                                    </h1>
                            </#if>
                            <#else>
                                <#if displayRequiredFields>
                                    <div class="${properties.kcContentWrapperClass!}">
                                        <div class="${properties.kcLabelWrapperClass!} subtitle">
                                            <span class="subtitle"><span class="required">*</span>
                                                ${msg("requiredFields")}
                                            </span>
                                        </div>
                                        <div class="col-md-10">
                                            <#nested "show-username">
                                                <div id="kc-username" class="${properties.kcFormGroupClass!}">
                                                    <label id="kc-attempted-username">
                                                        ${auth.attemptedUsername}
                                                    </label>
                                                    <a id="reset-login" href="${url.loginRestartFlowUrl}">
                                                        <div class="kc-login-tooltip">
                                                            <i class="${properties.kcResetFlowIcon!}"></i>
                                                            <span class="kc-tooltip-text">
                                                                ${msg("restartLoginTooltip")}
                                                            </span>
                                                        </div>
                                                    </a>
                                                </div>
                                        </div>
                                    </div>
                                    <#else>
                                        <#nested "show-username">
                                            <div id="kc-username" class="${properties.kcFormGroupClass!}">
                                                <label id="kc-attempted-username">
                                                    ${auth.attemptedUsername}
                                                </label>
                                                <a id="reset-login" href="${url.loginRestartFlowUrl}">
                                                    <div class="kc-login-tooltip">
                                                        <i class="${properties.kcResetFlowIcon!}"></i>
                                                        <span class="kc-tooltip-text">
                                                            ${msg("restartLoginTooltip")}
                                                        </span>
                                                    </div>
                                                </a>
                                            </div>
                                </#if>
                        </#if>
                    </header>
                    <div id="kc-content">
                        <div id="kc-content-wrapper" style="margin-top: 66px">
                            <#-- App-initiated actions should not see warning messages about the need to complete the action -->
                                <#-- during login. -->
                                    <#if displayMessage && message?has_content && (message.type !=' warning' || !isAppInitiatedAction??)>
                                        <#-- <div class="alert-${message.type} ${properties.kcAlertClass!} pf-m-<#if message.type = 'error'>danger<#else>
${message.type}
</#if>">
                                            <div class="pf-c-alert__icon">
                                                <#if message.type='success'><span class="${properties.kcFeedbackSuccessIcon!}"></span></#if>
                                                <#if message.type='warning'><span class="${properties.kcFeedbackWarningIcon!}"></span></#if>
                                                <#if message.type='error'><span class="${properties.kcFeedbackErrorIcon!}"></span></#if>
                                                <#if message.type='info'><span class="${properties.kcFeedbackInfoIcon!}"></span></#if>
                                            </div>
                                            <span class="${properties.kcAlertTitleClass!}">
                                                ${kcSanitize(message.summary)?no_esc}
                                            </span>
                        </div> -->
        </#if>
        <#nested "form">
            <#if auth?has_content && auth.showTryAnotherWayLink() && showAnotherWayIfPresent>
                <form id="kc-select-try-another-way-form" action="${url.loginAction}" method="post">
                    <div class="${properties.kcFormGroupClass!}" style="text-align: center;">
                        <input type="hidden" name="tryAnotherWay" value="on" />
                        <a href="#" id="try-another-way"
                            style="font-size: 20px"
                            onclick="document.forms['kc-select-try-another-way-form'].submit();return false;">
                            ${msg("doTryAnotherWay")}
                        </a>
                    </div>
                </form>
            </#if>
            <#if displayInfo>
                <div id="kc-info" class="${properties.kcSignUpClass!}">
                    <div id="kc-info-wrapper" class="${properties.kcInfoAreaWrapperClass!}">
                        <#nested "info">
                    </div>
                </div>
            </#if>
            </div>
            </div>
            </div>
            </div>
            </body>

    </html>
</#macro>