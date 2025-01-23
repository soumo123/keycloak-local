<#import "template.ftl" as layout>
<div class="col-md-7" style="margin-top:190px">
<@layout.registrationLayout; section>
    <#if section = "header">
        <script>
            document.title =  "${msg("frontchannel-logout.title")}";
        </script>
        <h4 class="error-title">${msg("frontchannel-logout.title")}</h4>
    <#elseif section = "form">
        <h5 class="error-title">${msg("frontchannel-logout.message")}</h5>
        <ul>
        <#list logout.clients as client>
            <li>
                ${client.name}
                <iframe src="${client.frontChannelLogoutUrl}" style="display:none;"></iframe>
            </li>
        </#list>
        </ul>
        <#if logout.logoutRedirectUri?has_content>
            <script>
                function readystatechange(event) {
                    if (document.readyState=='complete') {
                        window.location.replace('${logout.logoutRedirectUri}');
                    }
                }
                document.addEventListener('readystatechange', readystatechange);
            </script>
            <p class="instructionsss"><a class="color:black" id="backToApplication" href="${logout.logoutRedirectUri}">${msg("doContinue")}</a></p>
        </#if>
    </#if>
</@layout.registrationLayout>
</div>

   <div class="col-md-5" style="padding:0px">
			<img src="${url.resourcesPath}/img/login-image-tab.svg" width="100%" >
			<div class="bottom-left" style="position: absolute;
    bottom: 57px;
    left: 82px;"><img src="${url.resourcesPath}/img/akunah-logo.svg" /></div>
		</div>

        </div>