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
                <@layout.registrationLayout displayMessage=false; section>
                    <#if section="header">
                        <h1 style="font-weight: bolder; font-size: 24px;line-height: 133.6%;color:black;margin-top:-15px">
                            ${msg("termsTitle")}
                        </h1>
                        <#elseif section="form">
                            <div class="terms" id="kc-terms-text">
                                <span class="radiobox">
                                    <input
                                        type="radio"
                                        className="mr-2 radio-box" style="  height: 21px;
    width: 20px;
    margin-top: 1px;" />
                                </span>
                                <h4 style="
                    margin-left: 1%;
font-style: normal;
font-weight: 500;
font-size: 18px;color:black">
                                    ${kcSanitize(msg("IAgree"))?no_esc}
                                    <a href="https://akunah.com/privacy-policy" target="blank" class="text_color" style="font-weight: 700;text-decoration: none;">
                                        ${kcSanitize(msg("IAgree1"))?no_esc}
                                    </a>
                                    <#-- ${kcSanitize(msg("IAgree2"))?no_esc}
                                        <a href="https://akunah.com/privacy-policy" target="blank" class="text_color" style="font-weight: 700;text-decoration: none;">
                                        ${kcSanitize(msg("IAgree3"))?no_esc}
                                        </a> -->
                                </h4>
                            </div>
                            <div class="text-center jjjj" style="margin-top: 37px;">
                                <form class="form-actions" action="${url.loginAction}" method="POST" style="display:flex;align-items: center;justify-content: center;">
                                    <input class="terms-conditions ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="accept" id="kc-accept" type="submit" value="${msg("doAccept")}" />
                                    <#-- <input class="terms-conditionssss ${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" name="cancel" id="kc-decline" type="submit" value="${msg("doDecline")}" /> -->
                                </form>
                                <a id="loginRestartLink" href="${url.loginRestartFlowUrl}"><input class="terms-conditionssss ${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" name="cancel" id="kc-decline" type="submit" value="${msg("doDecline")}" /></a>
                            </div>
                            <div class="clearfix"></div>
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
    </div>
    </body>