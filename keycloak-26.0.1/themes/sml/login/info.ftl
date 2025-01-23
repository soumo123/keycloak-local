<#import "template.ftl" as layout>
<body>
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
      .signinimage {
      display: none !important;
      }
      }
   </style>
   <div class="container-fluid">
   <div class="row">
      <div class="col-md-7" style="margin-top:190px">
         <@layout.registrationLayout displayMessage=false; section>
         <#if section="header">
         <#if messageHeader??>
         ${messageHeader}
         <#else>
         <h4 style="font-weight: 600; color:black;text-align:center;font-size: 24px; margin: 0; margin-bottom: 20px; line-height: 32px;">
            ${message.summary}
         </h4>
         </#if>
         <#elseif section="form">
         <div id="kc-info-message">
            <#-- 
            <p class="instruction">
               ${message.summary}
               <#if requiredActions??>
               <#list requiredActions>: <b>
               <#items as reqActionItem>
               ${msg("requiredAction.${reqActionItem}")}
               <#sep>,
               </#items>
               </b></#list>
               <#else>
               </#if>
            </p>
            -->
            <#if skipLink??>
            <#else>
            <#if pageRedirectUri?has_content>
            <p><a href="${pageRedirectUri}">
               ${kcSanitize(msg("backToApplication1"))?no_esc}
               </a>
            </p>
            <#elseif actionUri?has_content>
            <div style="text-align: center; margin-top: -3%;">
               <p class="confirmwidth" style="width: 29%;
                  text-align: center;
                  height: 50px;
                  border-radius: 10px;
                  font-weight: 600;
                  margin-bottom: 20px;
                  color: #fff;
                  background: #3F2783;
                  border-radius: 8px;
                  border: 2px solid #3F2783;
                  display: inline-block;
                  "><a class="proceed-color" style="text-decoration: none;font-size: 23px;" href="${actionUri}">
                  ${kcSanitize(msg("proceedWithAction1"))?no_esc}
                  </a>
               </p>
            </div>
            <#elseif (client.baseUrl)?has_content>
            <p class="instructionsss"><a class="color:black" id="backToApplication" href="${client.baseUrl}">
               ${kcSanitize(msg("backToApplication1"))?no_esc}
               </a>
            </p>
            </#if>
            </#if>
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
</body>