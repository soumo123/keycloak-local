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
		
        </style>
        <div class="container-fluid" style="background-color:#ffff !important">
            <div class="row">
                <div class="col-md-7" style="margin-top:190px">
                    <@layout.registrationLayout displayMessage=!messagesPerField.existsError('password'); section>
                        <#if section="header">
                            ${msg("doLogIn")}
                            <#elseif section="form">
                                <div id="kc-form">
                                    <div id="kc-form-wrapper">
                                        <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}"
                                            method="post">
                                            <div class="${properties.kcFormGroupClass!} no-bottom-margin">
                                                <hr />
                                                <label for="password" class="${properties.kcLabelClass!}">
                                                    ${msg("password")}
                                                </label>
                                                <input tabindex="2" id="password" class="${properties.kcInputClass!}" name="password"
                                                    type="password" autocomplete="on"
                                                    aria-invalid="<#if messagesPerField.existsError('password')>true</#if>" />
                                                <#if messagesPerField.existsError('password')>
                                                    <span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                                        ${kcSanitize(messagesPerField.get('password'))?no_esc}
                                                    </span>
                                                </#if>
                                            </div>
                                            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                                                <div id="kc-form-options">
                                                </div>
                                                <div class="${properties.kcFormOptionsWrapperClass!}">
                                                    <#if realm.resetPasswordAllowed>
                                                        <span><a tabindex="5"
                                                                href="${url.loginResetCredentialsUrl}">
                                                                ${msg("doForgotPassword")}
                                                            </a></span>
                                                    </#if>
                                                </div>
                                            </div>
                                            <div id="kc-form-buttons" class="${properties.kcFormGroupClass!}">
                                                <input tabindex="4" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}" />
                                            </div>
                                        </form>
                                    </div>
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