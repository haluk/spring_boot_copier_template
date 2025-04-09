<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Welcome!</h1>
        <#if name??>
            <p>Logged in as: ${name}</p>
            <a href="/logout">Log out</a>
            <p>Email: ${email}</p>
            <#if principal?? && principal.claims?? && principal.claims?size > 0>
                <h2>Claims:</h2>
                <ul>
                    <#list principal.claims?keys as key>
                        <li>${key}: ${principal.claims[key]}</li>
                    </#list>
                </ul>
            <#else>
                <p>No claims available.</p>
            </#if>
        <#else>
            <p>You are not logged in.</p>
            <a href="/oauth2/authorization/auth0">Log in</a>
        </#if>
        <p><a href="/public">Go to Public Page</a></p>
        <p><a href="/secured">Go to Secured Page</a></p>
    </body>
</html>
