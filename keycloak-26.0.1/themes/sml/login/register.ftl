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
		
        .password-instruction {
            list-style: disc;
            margin: 0px 18px
        }

        .password-instruction li {
            color: #3F2783;
            font-weight: 600;
            font-size: 12px;
        }

        span#input-error-password {
            position: relative !important;
            margin-top: 0px !important;
            left: 0% !important;
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
        <div class="container-fluid" style="background-color:#ffff !important">
            <div class="row">
                <div class="col-md-7">
                    <@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm'); section>
                        <#if section="header">
                            <#-- ${msg("registerTitle")} -->
                                <p style="color:black"><b>
                                        ${msg("registerTitle")}
                                    </b></p>
                                <div class="row " style="justify-content:center; display:flex">
                                    <div class="col-sm-6" style="margin-top: 30px">
                                        <p style="text-align: center; font-size: 76% ; color:black;margin-top:2px">
                                            <b>
                                                ${msg("To_get_started")}
                                            </b>
                                        </p>
                                        <#-- <p style="text-align: center; font-size: 76% ; color:black"><b>
                                                ${msg("Recommend_using")}
                                            </b> </p>
                                            <p style="text-align: center; font-size: 76% ;color:black"><b>
                                                    ${msg("Email_you_use")}
                                                </b></p> -->
                                    </div>
                                </div>
                                <#elseif section="form">
                                    <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post" style="width: 420px; margin: 0 auto;margin-top:-30px">
                                        <div class="${properties.kcFormGroupClass!}">
                                            <div class="${properties.kcLabelWrapperClass!}">
                                                <label for="firstName" class="${properties.kcLabelClass!}">
                                                    <#-- ${msg("firstName")} -->
                                                </label>
                                            </div>
                                            <div class="${properties.kcInputWrapperClass!}">
                                                <input type="text" id="firstName" class="form-control place signupname" style="height: 50px;
                                                            border-radius: 10px;
                                                            margin-bottom: 20px;
                                                            width: 100%;
                                                            margin-right: 0;
                                                            border: 1px solid #3f2783;
                                                            box-shadow: none;
                                                            " name="firstName" placeholder="${msg("First_Name")}"
                                                    value="${(register.formData.firstName!'')}"
                                                    aria-invalid="<#if messagesPerField.existsError('firstName')>true</#if>" />
                                                <#if messagesPerField.existsError('firstName')>
                                                    <span id="input-error-firstname" class="${properties.kcInputErrorMessageClass!}" style="color:red" aria-live="polite">
                                                        ${msg("invalidUserMessage")}
                                                    </span>
                                                </#if>
                                            </div>
                                        </div>
                                        <div class="${properties.kcFormGroupClass!}">
                                            <div class="${properties.kcLabelWrapperClass!}">
                                                <label for="lastName" class="${properties.kcLabelClass!}">
                                                    <#-- ${msg("lastName")} -->
                                                </label>
                                            </div>
                                            <div class="${properties.kcInputWrapperClass!}">
                                                <input type="text" id="lastName" class="form-control place signuplastname" style="height: 50px;
                                                            border-radius: 10px;
                                                            margin-bottom: 20px;
                                                            width: 100%;
                                                            margin-right: 0;
                                                            border: 1px solid #3f2783;
                                                            box-shadow: none;
                                                            " name="lastName" placeholder="${msg("Last_Name")}"
                                                    value="${(register.formData.lastName!'')}"
                                                    aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>" />
                                                <#if messagesPerField.existsError('lastName')>
                                                    <span id="input-error-lastname" class="${properties.kcInputErrorMessageClass!}" style="color:red" aria-live="polite">
                                                        ${msg("invalidUserMessage")}
                                                    </span>
                                                </#if>
                                            </div>
                                        </div>
                                        <div class="${properties.kcFormGroupClass!}">
                                            <div class="${properties.kcLabelWrapperClass!}">
                                                <label for="email" class="${properties.kcLabelClass!}">
                                                    <#-- ${msg("email")} -->
                                                </label>
                                            </div>
                                            <div class="${properties.kcInputWrapperClass!}">
                                                <input type="text" id="email" class="form-control place signupemail" style="height: 50px;
                                                            border-radius: 10px;
                                                            margin-bottom: 20px;
                                                            width: 100%;
                                                            margin-right: 0;
                                                            border: 1px solid #3f2783;
                                                            box-shadow: none;
                                                            " name="email" placeholder="${msg("Email")}"
                                                    value="${(register.formData.email!'')}" autocomplete="email"
                                                    aria-invalid="<#if messagesPerField.existsError('email')>true</#if>" />
                                                <#if messagesPerField.existsError('email')>
                                                    <span id="input-error-email" class="${properties.kcInputErrorMessageClass!}" style="color:red" aria-live="polite">
                                                        <#-- ${msg("invalidUserMessage")} -->
                                                            ${msg("emailExistsMessage")}
                                                    </span>
                                                </#if>
                                                <ul class="password-instruction">
                                                    <li>${msg("pass_verification1")}</li>
                                                    <li>${msg("pass_verification2")}</li>
                                                    <li>${msg("pass_verification3")}</li>
                                                    <li>${msg("pass_verification4")}</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <#if !realm.registrationEmailAsUsername>
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcLabelWrapperClass!}">
                                                    <label for="username" class="${properties.kcLabelClass!}">
                                                        <#-- ${msg("username")} -->
                                                    </label>
                                                </div>
                                                <#-- <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="text" id="username" class="form-control place" style="height: 50px;
                                                            border-radius: 10px;
                                                            margin-bottom: 20px;
                                                            width: 100%;
                                                            margin-right: 0;
                                                            border: 1px solid #3f2783;
                                                            box-shadow: none;
                                                            " name="username" placeholder="Username*"
                                                        value="${(register.formData.username!'')}" autocomplete="username"
                                                        aria-invalid="<#if messagesPerField.existsError('username')>true</#if>" />
                                                    <#if messagesPerField.existsError('username')>
                                                        <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" style="color:red" aria-live="polite">
                                                            ${kcSanitize(messagesPerField.get('username'))?no_esc}
                                                        </span>
                                                    </#if>
                                            </div> -->
                </div>
                </#if>
                <#if passwordRequired??>
                    <div class="${properties.kcFormGroupClass!}">
                        <div class="${properties.kcLabelWrapperClass!}">
                            <label for="password" class="${properties.kcLabelClass!}">
                                <#-- ${msg("password")} -->
                            </label>
                        </div>
                        <div class="${properties.kcInputWrapperClass!}">
                            <input type="password" id="password" class="form-control place signuppassword" style="height: 50px;
                                                            border-radius: 10px;
                                                            margin-bottom: 20px;
                                                            width: 100%;
                                                            margin-right: 0;
                                                            border: 1px solid #3f2783;
                                                            box-shadow: none;
                                                            " name="password" placeholder="${msg("Password")}"
                                autocomplete="new-password"
                                aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>" />
                            <#if messagesPerField.existsError('password')>
                                <span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" style="color:red" aria-live="polite">
                                    ${kcSanitize(messagesPerField.get('password'))?no_esc}
                                </span>
                            </#if>
                            <#--  <ul class="password-instruction">
                                <li>Password should be least 8 characters long *</li>
                                <li>Password must contain at least 1 upper case characters *</li>
                                <li>Password must contain at least 1 lower case characters *</li>
                                <li>Password must contain at least 1 digit *</li>
                            </ul>  -->
                        </div>
                    </div>
                    <div class="${properties.kcFormGroupClass!}">
                        <div class="${properties.kcLabelWrapperClass!}">
                            <label for="password-confirm"
                                class="${properties.kcLabelClass!}">
                                <#-- ${msg("passwordConfirm")} -->
                            </label>
                        </div>
                        <div class="${properties.kcInputWrapperClass!}">
                            <input type="password" id="password-confirm" class="form-control place signupconfirm" style="height: 50px;
                                                            border-radius: 10px;
                                                            margin-bottom: 20px;
                                                            width: 100%;
                                                            margin-right: 0;
                                                            border: 1px solid #3f2783;
                                                            box-shadow: none;
                                                            "
                                name="password-confirm" placeholder="${msg("confirm_pass")}"
                                aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>" />
                            <#if messagesPerField.existsError('password-confirm')>
                                <span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!}" style="color:red" aria-live="polite">
                                    ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                                </span>
                            </#if>
                        </div>
                    </div>
                </#if>
                <#if recaptchaRequired??>
                    <div class="form-group">
                        <div class="${properties.kcInputWrapperClass!}">
                            <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                        </div>
                    </div>
                </#if>
                <div class="${properties.kcFormGroupClass!}">
                    <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                        <div class="${properties.kcFormOptionsWrapperClass!}">
                            <span>
                                <h4 style="margin-bottom:1px;text-align:center;color:black">
                                    ${msg("Already_have_an_account")}
                                </h4>
                                <a style="color:#3F2783" href="${url.loginUrl}">
                                    <h4 style="text-align:center;color:#3F2783"><b>
                                            ${kcSanitize(msg("backToLogin"))?no_esc}
                                        </b></h4>
                                </a>
                            </span>
                        </div>
                    </div>
                    <div id="kc-form-buttons" class="btn_custom ${properties.kcFormButtonsClass!}">
                        <input id="send-button" class="btn_custom ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!} place" type="submit" value="${msg("doRegister")}"
                            style="width: 100%;
                                                        height: 50px;
                                                        border-radius: 10px;
                                                        font-weight: 600;
                                                        margin-bottom: 20px;
                                                        color: #fff;
                                                        background: #3F2783;
                                                        border-radius: 8px;
                                                        border: 2px solid #3F2783;
                                                        display: inline-block;
                                                        margin-top:10px;
                                                        " />
                    </div>
                </div>
                </form>
                <div id="popup" class="popup" style="display: none; text-align: center;border-radius: 8px;">
                    <!-- Popup content goes here -->
                    <h2 style="font-weight: 700; line-height: 30px;">
                        ${msg("pop_up_message1")}
                        <span id="popup-email" class="popup-email"></span>
                    </h2>
                    <div>
                        <button id="close-popup" class="btn_custom clos-btn">
                            ${msg("doCancel")}
                        </button>
                        <button id="click-here-button" class="btn_custom1 oka-btn">
                            ${msg("confirm_message")}
                        </button>
                    </div>
                </div>
                </#if>
                </@layout.registrationLayout>
            </div>
            <div class="col-md-5 signinimage" style="padding:0px">
                <img src="${url.resourcesPath}/img/regiter-image-tab.svg" height="100%" width="100%">
                <img src="${url.resourcesPath}/img/register-text.svg" class="top-left" style="position: absolute;
    top: 100px;
    left: 16px;
    font-weight: 700;" />
            </div>
        </div>
        </div>
        </div>
        <script>
         
         document.addEventListener("DOMContentLoaded", function() {
    const sendButton = document.getElementById("send-button");
    const popup = document.getElementById("popup");
    const closePopupBtn = document.getElementById("close-popup");
    const clickHereButton = document.getElementById("click-here-button");
    const form = document.getElementById("kc-register-form");

    if (!sendButton || !form) {
        console.error("Error: Required elements not found!");
        return;
    }

    const emailInput = document.getElementById("email");
    const firstNameInput = document.getElementById("firstName");
    const lastNameInput = document.getElementById("lastName");
    const passwordInput = document.getElementById("password");
    const confirmPasswordInput = document.getElementById("password-confirm");
    const popupEmail = document.getElementById("popup-email");

    const inputFields = [firstNameInput, lastNameInput, emailInput, passwordInput, confirmPasswordInput];

    sendButton.addEventListener("click", function(e) {
        e.preventDefault();

        let isValid = true;

        if (!validateField(firstNameInput, "${msg("invalidUserMessage")?no_esc}")) isValid = false;
        if (!validateField(lastNameInput, "${msg("invalidUserMessage")?no_esc}")) isValid = false;
        if (!validateField(emailInput, "${msg("invalidEmailMessage")?no_esc}", validateEmail)) isValid = false;
        if (!validateField(passwordInput, "${msg("invalidUserMessage")?no_esc}")) isValid = false;
        if (!validatePasswords(passwordInput, confirmPasswordInput)) isValid = false;

        if (isValid) {
            popupEmail.textContent = emailInput.value;
            popup.style.display = "block";
        }
    });

    closePopupBtn.addEventListener("click", function() {
        popup.style.display = "none";
    });

    clickHereButton.addEventListener("click", function() {
        form.submit();
    });

    function validateField(input, errorMessage, validator = null) {
        if (!input) return false;
        const value = input.value.trim();
        let errorSpan = getErrorSpan(input);

        if (!value || (validator && !validator(value))) {
            errorSpan.textContent = errorMessage;
            errorSpan.style.display = "block";
            return false;
        }
        errorSpan.style.display = "none";
        return true;
    }

    function validatePasswords(passwordInput, confirmPasswordInput) {
        if (!passwordInput || !confirmPasswordInput) return false;
        let errorSpan = getErrorSpan(confirmPasswordInput);

        if (passwordInput.value.trim() !== confirmPasswordInput.value.trim()) {
            errorSpan.textContent = "${msg("notMatchPasswordMessage")?no_esc}";
            errorSpan.style.display = "block";
            return false;
        }
        errorSpan.style.display = "none";
        return true;
    }

    function getErrorSpan(input) {
        let errorSpan = input.parentNode.querySelector(".error-message");
        if (!errorSpan) {
            errorSpan = document.createElement("span");
            errorSpan.className = "error-message";
            errorSpan.style.color = "red";
            errorSpan.style.display = "none";
            errorSpan.style.marginTop = "5px";
            input.parentNode.appendChild(errorSpan);
        }
        return errorSpan;
    }

    function validateEmail(email) {
        const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(email);
    }

    // **🆕 Add event listeners to remove error while typing**
    inputFields.forEach(input => {
        if (input) {
            input.addEventListener("input", function() {
                let errorSpan = getErrorSpan(input);
                errorSpan.style.display = "none";
            });
        }
    });
});



        </script>
    </body>