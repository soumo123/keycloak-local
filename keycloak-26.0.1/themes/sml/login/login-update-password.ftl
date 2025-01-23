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
		
    .sign {
        margin-top: 190px
        }



@media (min-width: 768px) and (max-width: 1180px) {

    .signinimage {
        display: none !important;
    }
}
@media (min-width: 310px) and (max-width: 450px) {
			.sign {
				margin-top: 100px;
			}

			.btn_custom {
				transition: all linear 0.3s;
				-webkit-transition: all linear 0.3s;
				-moz-transition: all linear 0.3s;
				-ms-transition: all linear 0.3s;
				-o-transition: all linear 0.3s;
				font-family: 'Poppins', sans-serif !important;
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


<div class="container-fluid"  style="background-color:#ffff !important">
		<div class="row">
			<div class="col-md-7 sign">
    <@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
        <#if section="header">
            <h4 class="update-password-title">
                ${msg("updatePasswordTitle")}
            </h4>
            <h4 class="title1">
                <p class="title3">
                    ${msg("updatePassword1")}
                </p>
                <#--  <p class="title2">
                    ${msg("updatePassword2")}
                </p>  -->
                <h4>
                    <#elseif section="form">
                        <form id="kc-passwd-update-form" class="password-contaier ${properties.kcFormClass!}" action="${url.loginAction}" method="post">
                            <input type="text" id="username" name="username" value="${username}" autocomplete="username"
                                readonly="readonly" style="display:none;" />
                            <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;" />
                            <div class="${properties.kcFormGroupClass!}">
                                <div class="${properties.kcLabelWrapperClass!}">
                                    <#-- <label for="password-new" class="${properties.kcLabelClass!}">
                                        ${msg("passwordNew")}
                                        </label> -->
                                </div>
                                <div class="${properties.kcInputWrapperClass!}">
                                    <input type="password" id="password-new" name="password-new" class="place ${properties.kcInputClass!} updatepass"
                                        placeholder="${msg("Password")}"
                                        autofocus autocomplete="new-password"
                                        aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                                        style="height: 50px;
                                                            border-radius: 10px;
                                                            margin-bottom: 20px;
                                                           width: 40%;
                                                            margin-right: 0;
                                                            border: 2px solid #3f2783;
                                                            box-shadow: none;"/>
                                    <#if messagesPerField.existsError('password')>
                                        <span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                           <p class="missing-message" style="color: red;">*${msg("passwordMissing")}</p>
                                        </span>
                                    </#if>
                                </div>
                            </div>
                            <div class="${properties.kcFormGroupClass!}">
                                <div class="${properties.kcLabelWrapperClass!}">
                                    <#--  <label for="password-confirm" class="${properties.kcLabelClass!}">
                                        ${msg("passwordConfirm")}
                                    </label>  -->
                                </div>
                                <div class="${properties.kcInputWrapperClass!}">
                                    <input type="password" id="password-confirm" name="password-confirm"
                                        class="place ${properties.kcInputClass!} updatepass"
                                        autocomplete="new-password"
                                        placeholder="${msg("confirm_pass")}"
                                        aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>" 
                                        style="height: 50px;
                                                            border-radius: 10px;
                                                            margin-bottom: 20px;
                                                           width: 40%;
                                                            margin-right: 0;
                                                            border: 2px solid #3f2783;
                                                            box-shadow: none;"
                                        />
                                    <#if messagesPerField.existsError('password-confirm')>
                                        <span id="input-error-password-confirm" class="span-error ${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                            <p class="missing-message" style="color: red;">*${msg('passwordMissing1')}</p>
                                        </span>
                                    </#if>
                                </div>
                            </div>
                            <div class="${properties.kcFormGroupClass!}">
                                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                                    <div class="${properties.kcFormOptionsWrapperClass!}">
                                        <#if isAppInitiatedAction??>
                                            <div class="checkbox">
                                                <label><input type="checkbox" id="logout-sessions" name="logout-sessions" value="on" checked>
                                                    ${msg("logoutOtherSessions")}
                                                </label>
                                            </div>
                                        </#if>
                                    </div>
                                </div>
                                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                                    <#if isAppInitiatedAction??>
                                        <input class="btn_custom ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!} updatepass1" type="submit" style="width: 20%;
    height: 50px;
    border-radius: 10px;
    font-weight: 600;
    margin-bottom: 20px;
    color: #fff;
    background: #3F2783;
    border-radius: 8px;
    border: 2px solid #3F2783;
    display: inline-block;
    "value="${msg("doSubmit1")}" />
                                        <button class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" />
                                        ${msg("doCancel")}
                                        </button>
                                        <#else>
                                            <input class="btn_custom ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!} updatepass1" type="submit" style="width: 26%;
    height: 50px;
    border-radius: 10px;
    font-weight: 600;
    margin-bottom: 20px;
    color: #fff;
    background: #3F2783;
    border-radius: 8px;
    border: 2px solid #3F2783;
    display: inline-block;
    "value="${msg("doSubmit1")}" />
                                    </#if>
                                </div>
                            </div>
                        </form>
        </#if>
    </@layout.registrationLayout>
    	</div>
          <div class="col-md-5 signinimage" style="padding:0px">
			<img src="${url.resourcesPath}/img/login-image-tab.svg" width="100%" >
			<div class="bottom-left" style="position: absolute;
    bottom: 57px;
    left: 82px;"><img src="${url.resourcesPath}/img/akunah-logo.svg" /></div>
		</div>
		</div> 
		</div>
</body>