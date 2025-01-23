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

.clos-btn{
    display: inline-block;
    width: auto;
    height: 44px;
    border-radius: 8px;   
    background: #3F2783;
    border-radius: 8px;
    border: 2px solid #3F2783;color: #fff;border-radius: 10px;
    margin-top:40px;
    padding: 0 43px 0 35px;
}

.oka-btn{
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

.email-divv{
    display: flex;
    align-items: center;
    justify-content: center;
}

.inbox-letter{
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


.btn_custom2{
    transition: all linear 0.3s;
    -webkit-transition: all linear 0.3s;
    -moz-transition: all linear 0.3s;
    -ms-transition: all linear 0.3s;
    -o-transition: all linear 0.3s;
    font-family: 'Poppins', sans-serif !important;
} 
 
.btn_custom2{
    background: transparent;
    color: #FF0000;
    outline: none;
    text-decoration: none;
    border: 2px solid #FF0000;
}
.btn_custom2:hover{
    background-color: #fff !important;
    color: #FF0000 !important;
    outline: none;
    text-decoration: none;
}

.btn_custom1{
    transition: all linear 0.3s;
    -webkit-transition: all linear 0.3s;
    -moz-transition: all linear 0.3s;
    -ms-transition: all linear 0.3s;
    -o-transition: all linear 0.3s;
    font-family: 'Poppins', sans-serif !important;
}  
.btn_custom1:hover{
    background-color: #fff !important;
    color:#42bb2a!important;
}
@media (min-width: 310px) and (max-width: 450px) {

        .sign {
				margin-top: 100px;
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
                <@layout.registrationLayout displayInfo=true; section>
                    <#if section="header">
                        <h1 style="font-weight: bolder; font-size: 24px;line-height: 133.6%;color:black ;margin-top: 100px; margin-top: 0px;">
                            ${msg("emailVerifyTitle")}
                        </h1>
                        <div style="text-align: center;">
                            <h4 style="
font-style: normal;
font-weight: 500;
font-size: 18px;color:black">
                                <#-- ${msg("passwordRecover")} -->
                            </h4>
                            <#-- <h4 style="
font-style: normal;
font-weight: 500;
font-size: 18px;color:black">
                                ${msg("paswordRecover1")}
                                </h4> -->
                        </div>
                        <#elseif section="form">
                            <#-- <p class="instruction">
                                ${msg("emailVerifyInstruction1")}
                                </p> -->
                                <#elseif section="info">
                                    <div class="" style="margin-top: -70px;">
                                        <div class="">
                                            <img src="${url.resourcesPath}/img/veryfyimage.png" style="width: 289px;" />
                                        </div>
                                        <div class="email-divv">
                                            <p class="inbox-letter">${msg("emailVeryFyTitleNew")}</p>
                                        </div>
                                        <div class="">
                                          <p class=""><b>${msg("dont_send_email")}</b> ${msg("spam_folder")}</p>
                                        </div>
                                        <div class="">
                                          <p class=""><b>${msg("link_expired")} </b> <a href="${url.loginAction}" style="text-decoration: none; margin-left: 0px;">
                                                <b style="color:#3F2783;">
                                                    ${msg("doClickHere")}
                                                </b>
                                            </a></p>
                                        </div>
                                        <#-- <p class="instruction ins" style="font-weight:550;position:relative;color:black;margin-top: -40px;">
                                            ${msg("emailVerifyInstruction2")}
                                            <br />
                                            <a href="${url.loginAction}" style="text-decoration: none;">
                                                <b style="color:#3F2783;">
                                                    ${msg("doClickHere")}
                                                </b>
                                            </a>
                                            </p> -->
                                            <div class="btn-top">
                                                <input id="reloadButton" tabindex="4" class="btn_custom ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!} btn-home" name="login" id="kc-login" type="submit" style="width: auto;
                                            height: 50px;
                                            border-radius: 10px;
                                            font-weight: 600;
                                            margin-bottom: 20px;
                                            color: #fff;
                                            background: #3F2783;
                                            border-radius: 8px;
                                            border: 2px solid #3F2783;
                                            display: inline-block;
                                            padding-right: 25px;
    padding-left: 25px;
                                            " value="${msg("Return_to_Home")}" />
                                    </div>
                                    <input id="custom-logout-button" tabindex="4" class="btn_custom2 ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!} btn-home" name="login" id="kc-login" type="submit" style="width: auto;
                                            height: 50px;
                                            border-radius: 10px;
                                            font-weight: 600;
                                            margin-bottom: 20px;
                                            color: #fff;
                                            background:  #FF0000;
                                            border-radius: 8px;
                                            border:2px solid #FF0000;
                                            font-weight: 600;
                                            display: inline-block;
                                            padding-right: 25px;
    padding-left: 25px;
                                            "
                                            
                                        value="${msg("cancel_signup")}" />
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
    </div>
    <script>

function redirectToLoginPage() {
        window.location.href = "${url.loginUrl}";
    }

    function clearKeycloakCookies() {
        var keycloakCookies = [
            'KC_RESTART',
            'AUTH_SESSION_ID_LEGACY',
            'AUTH_SESSION_ID',
            // Add any other Keycloak cookies you want to clear here
        ];
        keycloakCookies.forEach(function(cookieName) {
            document.cookie = cookieName + '=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;';
        });
    }
    document.getElementById('custom-logout-button').addEventListener('click', function() {
        window.location.href = "${url.loginRestartFlowUrl}";
        localStorage.clear();
        sessionStorage.clear()
        clearKeycloakCookies();
        // Redirect to the home page
    });
    document.getElementById('reloadButton').addEventListener('click', function() {
        location.reload();
    });
    setTimeout(redirectToLoginPage, 10000);
    </script>
    </body>