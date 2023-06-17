<p align="center">
	<img alt="logo" src="https://github.com/GatsbyH/resources/blob/main/ic_app_slogon.png?raw=true" width="200" height="200">
</p>
<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">RuoYi App Admin SMS Shield</h1>
<h4 align="center">基于Ruoyi的安卓app后台管理系统(含短信验证)</h4>

## 说明
- 为了开发我们的短信验证服务，我们需要申请容联云的短信验证服务，并对我们的应用进行配置。在配置文件中（application.yml）添加相关配置信息，包括容联云账号等信息，以便我们可以使用容联云的短信验证服务。这样，我们就可以在我们的应用程序中使用短信验证服务，确保用户登录的安全性和可靠性。

- 我们的系统提供了一种安全的短信验证方式，为安卓应用提供了一个更加安全的登录方式。当用户进行安卓应用登录时，我们的服务端会使用用户的手机号生成一个 token，并将其传递给安卓应用。安卓应用会将该 token 存储在本地，并在后续的网络请求中将其作为请求头的一部分发送给服务端。服务端会使用 Spring Security 和 JwtFilter 对该请求进行拦截，如果请求是针对短信验证接口的，则可以直接放行。如果请求是针对其他接口的，则需要验证其请求头是否携带正确的 token。通过这种方式，我们可以保证用户登录的安全性，并防止未经授权的访问。

- 为了保证项目的正常运行，我们建议按照官方文档的指导来新增模块。如果在新增模块过程中遇到问题，您可以尝试刷新 Maven，以更新项目依赖项的版本。这可以通过在命令行中输入 mvn clean install 命令来完成。这将会清除项目目录下的 target 目录，并重新下载项目所需的依赖项。如果问题仍然存在，您可以查看 Maven 的日志，以确定问题的具体原因，并根据其修复问题。
- 我们可以在 SecurityConfig 配置文件中开放匿名接口，或者新增 Filter 来保护我们的后端接口。这些方法都可以提供更加灵活的安全性配置，以适应我们的具体需求。在 SecurityConfig 中，我们可以使用 antMatchers() 方法来设置开放匿名访问的接口，也可以使用 permitAll() 方法来允许所有用户访问特定的接口。另外，我们也可以通过创建一个自定义的 Filter 来实现更加细粒度的安全性控制，例如将用户的访问限制在特定的 IP 地址范围内等。无论是哪种方法，我们都可以根据我们的具体需求进行灵活配置，以保证我们的后端接口的安全性。
## 演示图

<table>
    <tr>
        <td><img src="https://github.com/GatsbyH/resources/blob/main/Snipaste_2023-06-17_15-35-35.png?raw=true"/></td>
        <td><img src="https://github.com/GatsbyH/resources/blob/main/Snipaste_2023-06-17_15-35-44.png?raw=true"/></td>
    </tr>
    <tr>
        <td><img src="https://github.com/GatsbyH/resources/blob/main/Snipaste_2023-06-17_15-35-53.png?raw=true"/></td>
        <td><img src="https://github.com/GatsbyH/resources/blob/main/Snipaste_2023-06-17_15-36-03.png?raw=true"/></td>
    </tr>
    <tr>
        <td><img src="https://github.com/GatsbyH/resources/blob/main/Snipaste_2023-06-17_15-36-12.png?raw=true"/></td>
        <td><img src="https://github.com/GatsbyH/resources/blob/main/Snipaste_2023-06-17_15-36-21.png?raw=true"/></td>
    </tr>
	
</table>

