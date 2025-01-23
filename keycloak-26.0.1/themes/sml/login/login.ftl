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
		.signintext {
			position: relative !important;
			font-weight: 600 !important;
			font-size: 15px !important;
			left: 10px !important;
		}
		.icons {
			font-size: 26px !important;
			position: relative !important;
			top: 4px !important;
		}
		a#social-facebook {
				background-color: #3B599A;
				color: #fff;
			}

			a#social-google {
				background-color: #1877F2;
				color: #fff;

			}

			.social {
				position: relative;
				bottom: 0px
			}
			.pf-c-button.pf-m-block {
				border-radius: 8px;
				color: white;
				height: 48px;
				margin-bottom: 10px;
			}
			.pf-c-button.pf-m-control::after {
				border: none !important;
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
		<div class="container-fluid" style="background-color:#ffff !important">
			<div class="row">
				<div class="col-md-7 sign">
					<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
						<#if section="header">
							<#-- ${msg("loginAccountTitle")} -->
								<#elseif section="form">
									<div id="kc-form" style="width: 420px; margin: 0 auto;">
										<div id="kc-form-wrapper">
											<#if realm.password>
												<form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
													<div class="${properties.kcFormGroupClass!}">
														<label for="username" class="${properties.kcLabelClass!}">
															<#if !realm.loginWithEmailAllowed>
																${msg("username")}
																<#elseif !realm.registrationEmailAsUsername>
																	<#-- ${msg("usernameOrEmail")} -->
																		<#else>
																			<#-- ${msg("email")} -->
															</#if>
														</label>
														<#if usernameEditDisabled??>
															<input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" disabled />
															<#else>
																<input tabindex="1" id="" class="form-control place inpubutton1" name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off"
																	style="height: 50px;
                                                            border-radius: 10px;
                                                            margin-bottom: 20px;
                                                            width: 100%;
                                                            margin-right: 0;
                                                            border: 1px solid #3f2783;
                                                            box-shadow: none;
                                                            "
																	placeholder="${msg("Email")}"
																	aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>" />
																<#if messagesPerField.existsError('username','password')>
																	<span id="input-error" class="${properties.kcInputErrorMessageClass!}" style="color:red" aria-live="polite">
																		<#-- ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc} -->
																			${msg("invalidEmailMessage")}
																	</span>
																</#if>
														</#if>
													</div>
													<div class="${properties.kcFormGroupClass!}">
														<label for="password" class="${properties.kcLabelClass!}">
															<#-- ${msg("password")} -->
														</label>
														<input tabindex="2" id="password" class="form-control place inputbutton2" name="password" type="password" autocomplete="off"
															style="height: 50px;
                                                            border-radius: 10px;
                                                            margin-bottom: 20px;
                                                            width: 100%;
                                                            margin-right: 0;
                                                            border: 1px solid #3f2783;
                                                            box-shadow: none;"
															placeholder="${msg("Password")}"
															aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>" />
														<#if messagesPerField.existsError('username','password')>
															<span id="input-error" class="${properties.kcInputErrorMessageClass!}" style="color:red" aria-live="polite">
																<#-- ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc} -->
																	${msg("invalidPasswordMessage")}
															</span>
														</#if>
													</div>
													<div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
														<div id="kc-form-options">
															<#if realm.rememberMe && !usernameEditDisabled??>
																<div class="checkbox">
																	<label>
																		<#if login.rememberMe??>
																			<input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked>
																			${msg("rememberMe")}
																			<#else>
																				<input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox">
																				${msg("rememberMe")}
																		</#if>
																	</label>
																</div>
															</#if>
														</div>
														<div class="${properties.kcFormOptionsWrapperClass!}">
															<#if realm.resetPasswordAllowed>
																<span><a style="color:#3F2783" tabindex="5" href="${url.loginResetCredentialsUrl}">
																		<b>
																			${msg("doForgotPassword")}
																		</b>
																	</a></span>
															</#if>
														</div>
													</div>
													<div id="kc-form-buttons" class="${properties.kcFormGroupClass!}">
														<input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"
											</#if>/>
											<input tabindex="4" class="btn_custom ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" style="    width: 100%;
    height: 50px;
    border-radius: 10px;
    font-weight: 600;
    margin-bottom: 20px;
    color: #fff;
    background: #3F2783;
    border-radius: 8px;
    border: 2px solid #3F2783;
    display: inline-block;
    " value="${msg("doLogIn")}" />
											<div class="report-problem"><a href="mailto:helpdesk@akunah.com" style="color:#3F2783;font-weight:600;font-size: 14px;">
													${msg("report_problem")}
												</a></div>
										</div>
										</form>
						</#if>
				</div>
				<#if realm.password && social.providers??>
					<div id="kc-social-providers" class="${properties.kcFormSocialAccountSectionClass!} social">
					
						 <!-- <hr />
						<h4>
							${msg("identity-provider-login-label")}
						</h4> -->
						<ul class="${properties.kcFormSocialAccountListClass!}
    <#if social.providers?size gt 3>
    ${properties.kcFormSocialAccountListGridClass!}
    </#if>">
    <#list social.providers as p>
        <a id="social-${p.alias}" class="${properties.kcFormSocialAccountListButtonClass!}
    <#if social.providers?size gt 3>
    ${properties.kcFormSocialAccountGridItem!}
    </#if>"
            type="button" href="${p.loginUrl}">
            <#if p.alias == "google">
                <img src="${url.resourcesPath}/img/google-logo.png" style="height: 30px;" alt="Google" class="custom-social-icon">
                <span class="${properties.kcFormSocialAccountNameClass!} kc-social-icon-text signintext">
                    ${p.displayName!}
                </span>
            <#elseif p.alias == "facebook">
                <!-- <img src="/path-to-your-facebook-logo.png" alt="Facebook" class="custom-social-icon"> -->
				<i class="fa fa-facebook icons" aria-hidden="true"></i>
                <span class="${properties.kcFormSocialAccountNameClass!} kc-social-icon-text signintext">
                    ${p.displayName!}
                </span>
            <#else>
                <i class="${properties.kcCommonLogoIdP!} ${p.iconClasses!} icons" aria-hidden="true"></i>
                <span class="${properties.kcFormSocialAccountNameClass!}">
                    ${p.displayName!}
                </span>
            </#if>
        </a>
    </#list>
</ul>

					</div>
				</#if>
			</div>
			<script src="https://help.akunah.com/assets/chat/chat.min.js"></script>
			<script>
			$(function() {
				new ZammadChat({
					background: '#3F2783',
					fontSize: '12px',
					chatId: 2,
					show: true
				});
			});
			</script>
		</div>
		<#elseif section="info">
			<#if realm.password && realm.registrationAllowed && !registrationDisabled??>
				<div class="" id="kc-registration-container">
					<div id="kc-registration" class="signupoption" style="
    position: absolute;
    top: 6%;
    left: 30%;
    right: 30%;
    margin: auto;">
						<span>
							<#-- ${msg("noAccount")} -->
								<b style="color:black">
									${msg("Dont_have_an_account")}
								</b>
								<a tabindex="6"
									href="${url.registrationUrl}">
									<#-- ${msg("doRegister")} -->
										<b style="color:#3F2783"><u>
												${msg("Sign_Up")}
											</u></b>
								</a>
						</span>
					</div>
				</div>
			</#if>
			</#if>
			<div>
				</@layout.registrationLayout>
			</div>
			</div>
			<div class="col-md-5 signinimage" style="padding:0px">
				<img src="${url.resourcesPath}/img/login-image-tab.svg" width="100%">
				<div class="bottom-left" style="position: absolute;
    bottom: 57px;
    left: 82px;"><img src="${url.resourcesPath}/img/akunah-logo.svg" /></div>
			</div>
			</div>
			<#-- <div>
				<img src="${url.resourcesPath}/img/akunah-logo.svg" width="20%"> -->
				<#-- </div> -->
	</body>