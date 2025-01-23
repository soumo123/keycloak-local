<#import "template.ftl" as layout>

    <body>
        <style>

        </style>

        <div class="container-fluid">
            <div class="row" style="background: #ffffff;">
                <div class="col-md-7" style="margin-top:133px">
                    <@layout.registrationLayout; section>
                    <#if section="header">
                        <h1 style="font-weight: 600;">${msg("confirmLinkIdpTitle")}</h1>
                        <#elseif section="form">
                            <form id="kc-register-form" action="${url.loginAction}" method="post">
                                <div class="${properties.kcFormGroupClass!} text-center" style="text-align: center">
                                    <!-- <button type="submit"
                                    style="width: 200px;
                                            height: 50px;
                                            border-radius: 10px;
                                            font-weight: 600;
                                            margin-bottom: 20px;
                                            color: #fff;
                                            background: #3F2783;
                                            border-radius: 8px;
                                            border: 2px solid #3F2783;
                                            display: inline-block;"
                                        
                                        class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"
                                        name="submitAction" id="updateProfile"
                                        value="updateProfile">${msg("confirmLinkIdpReviewProfile")}</button> -->
                                    <button type="submit"
                                    style="width: 140px;
                                            height: 50px;
                                            border-radius: 10px;
                                            font-weight: 600;
                                            bottom: 40px;
                                            color: #fff;
                                            background: #41ad27;
                                            border-radius: 8px;
                                            border: 1px solid #41ad27;
                                            display: inline-block;"
                                        class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"
                                        name="submitAction" id="linkAccount" value="linkAccount">${msg("doRegister",
                                        idpDisplayName)}</button>
                                </div>
                            </form>
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
