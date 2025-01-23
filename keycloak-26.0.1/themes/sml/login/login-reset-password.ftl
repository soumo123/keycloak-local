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

        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 29%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
            z-index: 1000;
            width: 50%;
            /* Ensure the popup is above other elements */
        }

        .clos-btn {
            display: inline-block;
            width: auto;
            height: 44px;
            border-radius: 8px;
            background: #3F2783;
            border-radius: 8px;
            border: 2px solid #3F2783;
            color: #fff;
            border-radius: 10px;
            margin-top: 40px;
            padding: 0 43px 0 35px;
        }

        .oka-btn {
            display: inline-block;
            margin-top: 0px;
            width: auto;
            height: 44px;
            border-radius: 8px;
            background: #42bb2a;
            border-radius: 8px;
            border: 2px solid #39a657;
            color: #fff;
            border-radius: 10px;
            padding: 0 43px 0 35px;
        }

        .email-divv {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .inbox-letter {
            color: rgb(61, 79, 88);
            font-size: 17px;
            letter-spacing: 0px;
            line-height: 19px;
            width: 372px;
            margin-bottom: 24px;
            margin-block-start: 0px;
            font-family: 'Open Sans';
            font-weight: 500;
        }

        .btn_custom2 {
            transition: all linear 0.3s;
            -webkit-transition: all linear 0.3s;
            -moz-transition: all linear 0.3s;
            -ms-transition: all linear 0.3s;
            -o-transition: all linear 0.3s;
            font-family: 'Poppins', sans-serif !important;
        }

        .btn_custom2 {
            background: transparent;
            color: #FF0000;
            outline: none;
            text-decoration: none;
            border: 2px solid #FF0000;
        }

        .btn_custom2:hover {
            background-color: #fff !important;
            color: #FF0000 !important;
            outline: none;
            text-decoration: none;
        }

        .btn_custom1 {
            transition: all linear 0.3s;
            -webkit-transition: all linear 0.3s;
            -moz-transition: all linear 0.3s;
            -ms-transition: all linear 0.3s;
            -o-transition: all linear 0.3s;
            font-family: 'Poppins', sans-serif !important;
        }

        .btn_custom1:hover {
            background-color: #fff !important;
            color: #42bb2a !important;
        }

        @media (min-width: 310px) and (max-width: 450px) {
            .sign {
                margin-top: 100px;
            }

            .forgot_mob {
                margin-left: 0px !important;
            }

            .popup {
                position: fixed;
                top: 46%;
                left: 50%;
                right: -40%;
                transform: translate(-50%, -50%);
                background-color: white;
                padding: 20px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
                z-index: 1000;
                width: 90%;
            }

            .clos-btn {
                display: inline-block;
                width: auto;
                height: 44px;
                border-radius: 8px;
                background: #3F2783;
                border-radius: 8px;
                border: 2px solid #3F2783;
                color: #fff;
                border-radius: 10px
            }

            .oka-btn {
                display: inline-block;
                margin-top: 0px;
                width: auto;
                height: 44px;
                border-radius: 8px;
            }

            .btn_custom1 {
                transition: all linear 0.3s;
                -webkit-transition: all linear 0.3s;
                -moz-transition: all linear 0.3s;
                -ms-transition: all linear 0.3s;
                -o-transition: all linear 0.3s;
                font-family: 'Poppins', sans-serif !important;
            }

            .btn_custom1:hover {
                background-color: #fff !important;
                color: #42bb2a !important;
            }

            .popup-email {
                font-size: 15px;
            }
        }

        @media (min-width: 768px) and (max-width: 1180px) {
            .popup {
                display: none;
                position: fixed;
                top: 48%;
                left: 50%;
                transform: translate(-50%, -50%);
                background-color: white;
                padding: 20px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
                z-index: 1000;
                width: 64%;
            }

            .signinimage {
                display: none !important;
            }

            .hide_lang {
                margin-top: -32px;
                text-align: center;
                margin-right: 40px;
                width: 126px;
                float: right;
                border-radius: 11px;
                border: 2px solid #4d2a91;
                padding: 5px 7px 5px 9px;
                cursor: pointer;
            }
        }
        </style>
        <div class="container-fluid"  style="background-color:#ffff !important">
            <div class="row">
                <div class="col-md-7 sign">
                    <@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
                        <#if section="header">
                            <b style="color:black">
                                ${msg("emailForgotTitle")}
                            </b>
                            <#elseif section="form">
                                <form id="kc-reset-password-form" style="width: 420px; margin: 0 auto;margin-top: -38px;" class="${properties.kcFormClass!} mob_forgot_width" action="${url.loginAction}" method="post">
                                    <div class="${properties.kcFormGroupClass!}">
                                        <div class="${properties.kcLabelWrapperClass!}">
                                            <label for="username" class="${properties.kcLabelClass!}">
                                                <#if !realm.loginWithEmailAllowed>
                                                    ${msg("username")}
                                                    <#elseif !realm.registrationEmailAsUsername>
                                                        <#-- ${msg("usernameOrEmail")} -->
                                                            <#else>
                                                                <#-- ${msg("email")} -->
                                                </#if>
                                            </label>
                                        </div>
                                        <div class="${properties.kcInputWrapperClass!}">
                                            <input type="text" id="username" name="username" class="form-control place" autofocus value="${(auth.attemptedUsername!'')}" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                                                style="height: 50px;
                                                            border-radius: 10px;
                                                            margin-bottom: 20px;
                                                            width: 100%;
                                                            margin-right: 0;
                                                            border: 1px solid #3f2783;
                                                            box-shadow: none;                          
                                                            "
                                                placeholder="${msg("registered_email")}" />
                                            <#if messagesPerField.existsError('username')>
                                                <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" style="color:red" aria-live="polite">
                                                    <#-- ${kcSanitize(messagesPerField.get('username'))?no_esc} -->
                                                        ${msg("invalidUserMessage")}
                                                </span>
                                            </#if>
                                        </div>
                                    </div>
                                    <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                                        <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                                            <div class="${properties.kcFormOptionsWrapperClass!} text-center">
                                                <span style="" class="forgot_mob"><a style="color:#3F2783" href="${url.loginUrl}">
                                                        <b style="color:#3F2783">
                                                            ${kcSanitize(msg("backToLogin"))?no_esc}
                                                        </b>
                                                    </a>
                                                </span>
                                            </div>
                                        </div>
                                        <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                                            <input id="send-button" class="btn_custom ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"
                                                style="width: 100%;
    height: 50px;
    border-radius: 10px;
    font-weight: 600;
    margin-top: 20px;
    color: #fff;
    background: #3F2783;
    border-radius: 8px;
    border: 2px solid #3F2783;
    display: inline-block;
    " />
                                        </div>
                                    </div>
                                </form>
                                <div id="popup" class="popup" style="display: none; text-align: center;border-radius: 8px;">
                                    <!-- Popup content goes here -->
                                    <h4 style="
    font-weight: 700;
        line-height: 30px;
">
                                        ${msg("pop_up_message")}
                                    </h4>
                                    <div>
                                        <button id="close-popup" class="btn_custom clos-btn">
                                            ${msg("close")}
                                        </button>
                                        <button id="click-here-button" class="btn_custom1 oka-btn">
                                            ${msg("okay")}
                                        </button>
                                    </div>
                                </div>
                                <#elseif section="info">
                                    <#if realm.duplicateEmailsAllowed>
                                        ${msg("emailInstructionUsername")}
                                        <#else>
                                            <#-- ${msg("emailInstruction")} -->
                                    </#if>
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
        <!-- JavaScript code to handle the popup and form submission -->
        <script>
        document.addEventListener("DOMContentLoaded", function() {
            const sendButton = document.getElementById("send-button");
            const popup = document.getElementById("popup");
            const closePopupBtn = document.getElementById("close-popup");
            const clickHereButton = document.getElementById("click-here-button");
            sendButton.addEventListener("click", function(e) {
                // Prevent the form submission
                e.preventDefault();
                // Show the popup when the button is clicked
                popup.style.display = "block";
            });
            closePopupBtn.addEventListener("click", function() {
                // Hide the popup when the close button is clicked
                popup.style.display = "none";
            });
            clickHereButton.addEventListener("click", function() {
                document.getElementById("kc-reset-password-form").submit();
            });
        });
        </script>
    </body>