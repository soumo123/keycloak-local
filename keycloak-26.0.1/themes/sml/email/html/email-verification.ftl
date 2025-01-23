<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Email</title>
        <style>
        body {
            box-sizing: border-box;
            padding: 0;
            margin: 0;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI",
                Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue",
                sans-serif;
            background-color: #f1f1f1 !important;
        }

        .container {
            justify-content: center !important;
            align-items: center !important;
            flex-direction: column !important;
            padding-left: 60px;
            padding-right: 60px;
            max-width: 600px;
            margin: auto;
        }

        .body-container,
        .upper_footer {
            padding-left: 60px;
            padding-right: 60px;
            text-align: center;
        }

        .header,
        .base-footer {
            position: relative;
            height: 100px;
        }

        .center-logo {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .header>img {
            margin: 20px 0;
            width: 170px;
        }

        .body-container {
            background-color: white;
            border-radius: 20px;
            margin-top: 10px;
        }

        .body-container .btn {
            align-items: center;
            /* margin-top: 10px; */
            padding-top: 10px;
        }

        h2,
        p,
        a,
        button {
            text-align: center;
        }

        button {
            background: #fa8039;
            padding: 10px 30px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            color: #fff;
            font-size: 14px;
            font-weight: 700;
        }

        .upper_footer {
            background-color: white;
            padding: 10px 10px;
            margin: 20px 0;
            border-radius: 8px;
        }

        .base-footer img {
            display: inline-block;
            width: 235px;
            max-width: 100%;
            margin: 0 auto;
        }

        .lower-footer {
            margin-top: 10px;
            text-align: center;
        }

        .ffffff {
            display: inline-block;
            text-align: left;
        }

        .akunah-me {
            padding-top: 8px;
            padding-bottom: 25px;
            margin-top: 20px;
        }
        </style>
    </head>

    <body style="box-sizing: border-box;padding: 0;margin: 0;background-color: #f1f1f1 !important">
        <div style="align-items: center;background:#f1f1f1;height:100vh">
            <div style="align-items: center; max-width:700px">
                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                    <tr>
                        <td align="center">
                            <img
                                src="https://akunah-public-assets.s3.ap-southeast-2.amazonaws.com/web/akunah-email-logo.png"
                                alt="Logo"
                                style="
                  display: block;
                  width: 150px;
                  height: auto;
                  margin-top: 60px;
                " />
                        </td>
                    </tr>
                </table>
                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                    <tr>
                        <td align="center">
                            <div class="body">
                                <div class="body-container" style="	background-color: white; padding:20px;
			border-radius: 20px;
			margin-top: 30px ">
                                    <p style="padding-top: 10px">
                                        ${msg("message1")}
                                    </p>
                                    <p style="padding-top: 10px">
                                        ${msg("message2")}
                                    </p>
                                    <p style="padding-top: 10px">
                                        ${msg("message3")}
                                    </p>
                                    <div class="btn">
                                <div class="" style="margin-top: 11px">
                                        <a href="${link?no_esc}" style="background: #fa8039;
                                color: white;
                                padding: 10px 50px;
                                text-decoration: none;
                                border: none;
                                border-radius: 25px;
                                cursor: pointer;
                                font-size: 14px;
                                font-weight: 700;">
    ${msg("clickHere")}
</a>
                    </div>
                                        <#--  <p>Verification Link: ${link}</p>
                                        <p>Click here to verify your email: <a href="${link?no_esc}">Verify Email ${link?no_esc}</a></p>  -->
                                    </div>
                                    <p class="akunah-me">
                                        ${msg("passwordBody4")}.</a>
                                    </p>
                                </div>
                                <div class="upper_footer" style="
                                        background-color: white;
                                        padding: 10px 10px;
                                        margin: 20px 0;
                                        border-radius: 8px;
                                        padding-left: 60px;
                                        padding-right: 60px;
                                        text-align: center;
                                        ">
                                    <p>
                                        ${msg("thanks")}</p>
                                    <p>
                                        ${msg("akunah_team")}
                                    </p>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                    <tr>
                        <td align="center">
                            <img src="https://akunah-med-library-public.s3.ap-southeast-2.amazonaws.com/uploads/124101210589626/720x405.png" style="display: block; width: 150px; height: auto"/>
                        </td>
                    </tr>
                </table>
                <div class="lower-footer" style="margin-top: 10px;text-align: center;">
                    <a href="https://akunah.com/">www.akunah.com</a>
                </div>
            </div>
        </div>
    </body>

</html>