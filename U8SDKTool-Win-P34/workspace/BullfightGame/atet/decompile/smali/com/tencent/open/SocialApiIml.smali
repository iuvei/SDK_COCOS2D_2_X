.class public Lcom/tencent/open/SocialApiIml;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/SocialApiIml$c;,
        Lcom/tencent/open/SocialApiIml$a;,
        Lcom/tencent/open/SocialApiIml$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/connect/auth/QQToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Lcom/tencent/open/SocialApiIml$b;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.qzone"

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/tencent/open/SocialApiIml$b;

    invoke-direct {v1}, Lcom/tencent/open/SocialApiIml$b;-><init>()V

    iput-object v0, v1, Lcom/tencent/open/SocialApiIml$b;->a:Landroid/content/Intent;

    iput-object p1, v1, Lcom/tencent/open/SocialApiIml$b;->c:Landroid/os/Bundle;

    iput-object p3, v1, Lcom/tencent/open/SocialApiIml$b;->d:Ljava/lang/String;

    iput-object p4, v1, Lcom/tencent/open/SocialApiIml$b;->e:Lcom/tencent/tauth/IUiListener;

    iput-object p2, v1, Lcom/tencent/open/SocialApiIml$b;->b:Ljava/lang/String;

    return-object v1
.end method

.method private a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 4

    const/16 v3, 0x2b61

    const-string v0, "openSDK_LOG.SocialApiIml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->handleIntentWithAgent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " activityIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_action"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_params"

    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v0

    invoke-virtual {v0, v3, p5}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/open/SocialApiIml;->startAssitActivity(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V
    .locals 6

    const-string v0, "openSDK_LOG.SocialApiIml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->handleIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " activityIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/OpenConfig;

    move-result-object v0

    if-nez p7, :cond_1

    const-string v1, "C_LoginH5"

    invoke-virtual {v0, v1}, Lcom/tencent/open/utils/OpenConfig;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p4, p6}, Lcom/tencent/open/SocialApiIml;->handleDownloadLastestQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    const-string v0, "com.tencent.open.agent.voice"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "http://qzs.qq.com/open/mobile/not_support.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u5019"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    const-string v0, "action_voice"

    invoke-direct {p0, p2, v0, v5, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Lcom/tencent/open/SocialApiIml$b;

    move-result-object v0

    const-string v1, "action_voice"

    new-instance v2, Lcom/tencent/open/SocialApiIml$a;

    invoke-direct {v2, p0, v0}, Lcom/tencent/open/SocialApiIml$a;-><init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/open/SocialApiIml$b;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    :goto_0
    return-void

    :cond_2
    const-string v3, "action_voice"

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    const-string v0, "com.tencent.open.agent.SocialFriendChooser"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "com.tencent.open.agent.RequestFreegiftActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "action_ask"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "type"

    const-string v1, "request"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V

    return-void

    :cond_2
    const-string v0, "action_gift"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "type"

    const-string v1, "freegift"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 9

    const/16 v8, 0x2b62

    const-string v0, "openSDK_LOG.SocialApiIml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->handleIntentWithH5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getTargetActivityIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    new-instance v0, Lcom/tencent/open/SocialApiIml$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/SocialApiIml$c;-><init>(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "com.tencent.open.agent.EncryTokenActivity"

    invoke-virtual {p0, v1}, Lcom/tencent/open/SocialApiIml;->getTargetActivityIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "oauth_consumer_key"

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "openid"

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "access_token"

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_action"

    const-string v3, "action_check_token"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tencent/open/SocialApiIml;->hasActivityForIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v2

    invoke-virtual {v2, v8, v0}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v8}, Lcom/tencent/open/SocialApiIml;->startAssitActivity(Landroid/app/Activity;Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "tencent&sdk&qazxc***14969%%"

    const-string v2, "qzone3.4"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/utils/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "encry_token"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/tencent/open/SocialApiIml$c;->onComplete(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 6

    const-string v0, "openSDK_LOG.SocialApiIml"

    const-string v1, "OpenUi, showDialog --start"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "access_token"

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "openid"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pfStore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pf"

    const-string v2, "openmobile_android"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pf"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/tencent/open/utils/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "openSDK_LOG.SocialApiIml"

    const-string v1, "OpenUi, showDialog TDialog"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_challenge"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "action_brag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "openSDK_LOG.SocialApiIml"

    const-string v1, "OpenUi, showDialog PKDialog"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/open/PKDialog;

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    move-object v2, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/PKDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->show()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "pf"

    const-string v1, "openmobile_android"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/tencent/open/TDialog;

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    move-object v2, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->show()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/open/SocialApiIml;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/open/SocialApiIml;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/SocialApiIml;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tencent/open/SocialApiIml;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/open/SocialApiIml;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 4

    const/16 v3, 0x2b61

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.qzone"

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_action"

    const-string v2, "action_check"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "apiName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v1

    invoke-virtual {v1, v3, p3}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v3}, Lcom/tencent/open/SocialApiIml;->startAssitActivity(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method protected a()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.open.agent.CheckFunctionActivity"

    const-string v2, "com.qzone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/open/utils/SystemUtils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 1

    const-string v0, "action_ask"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public brag(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    const-string v0, "com.tencent.open.agent.BragActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "action_brag"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V

    return-void
.end method

.method public challenge(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    const-string v0, "com.tencent.open.agent.ChallengeActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "action_challenge"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V

    return-void
.end method

.method protected getTargetActivityIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.qzone"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tencent/open/utils/SystemUtils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "4.7"

    invoke-static {v3, v4}, Lcom/tencent/open/utils/SystemUtils;->compareQQVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tencent/open/utils/SystemUtils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.qzone"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/SystemUtils;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4.2"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/SystemUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ec96e9ac1149251acbb1b0c5777cae95"

    invoke-static {v2, v3, v4}, Lcom/tencent/open/utils/SystemUtils;->isAppSignatureValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 1

    const-string v0, "action_gift"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public grade(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "version"

    invoke-static {p1}, Lcom/tencent/open/utils/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.tencent.open.agent.AppGradeActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "http://qzs.qq.com/open/mobile/rate/sdk_rate.html?"

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "action_grade"

    invoke-direct {p0, p2, v0, v5, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Lcom/tencent/open/SocialApiIml$b;

    move-result-object v0

    const-string v1, "action_grade"

    new-instance v2, Lcom/tencent/open/SocialApiIml$a;

    invoke-direct {v2, p0, v0}, Lcom/tencent/open/SocialApiIml$a;-><init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/open/SocialApiIml$b;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "action_grade"

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V

    goto :goto_0
.end method

.method public invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    const-string v0, "com.tencent.open.agent.SocialFriendChooser"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "com.tencent.open.agent.AppInvitationActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "action_invite"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V

    return-void
.end method

.method public reactive(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    const-string v0, "com.tencent.open.agent.SocialFriendChooser"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "com.tencent.open.agent.ReactiveActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "http://qzs.qq.com/open/mobile/reactive/sdk_reactive.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "type"

    const-string v1, "reactive"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_reactive"

    invoke-direct {p0, p2, v0, v5, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Lcom/tencent/open/SocialApiIml$b;

    move-result-object v0

    const-string v1, "action_reactive"

    new-instance v2, Lcom/tencent/open/SocialApiIml$a;

    invoke-direct {v2, p0, v0}, Lcom/tencent/open/SocialApiIml$a;-><init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/open/SocialApiIml$b;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "img"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendImg"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    const-string v1, "reactive"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "img"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "action_reactive"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V

    goto :goto_0
.end method

.method public story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    const-string v0, "com.tencent.open.agent.SendStoryActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "action_story"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V

    return-void
.end method

.method public voice(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 4

    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "version"

    invoke-static {p1}, Lcom/tencent/open/utils/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tauth/UiError;

    const/16 v1, -0xc

    const-string v2, "\u68c0\u6d4b\u4e0d\u5230SD\u5361\uff0c\u65e0\u6cd5\u53d1\u9001\u8bed\u97f3\uff01"

    const-string v3, "\u68c0\u6d4b\u4e0d\u5230SD\u5361\uff0c\u65e0\u6cd5\u53d1\u9001\u8bed\u97f3\uff01"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "image_date"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "image_date"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "\u8bf7\u7a0d\u5019..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    new-instance v1, Lcom/tencent/open/e;

    new-instance v2, Lcom/tencent/open/SocialApiIml$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/tencent/open/SocialApiIml$1;-><init>(Lcom/tencent/open/SocialApiIml;Landroid/os/Bundle;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V

    invoke-direct {v1, v2}, Lcom/tencent/open/e;-><init>(Lcom/tencent/open/e$a;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/open/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0
.end method

.method public writeEncryToken(Landroid/content/Context;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v7, 0x1

    const-string v1, "tencent&sdk&qazxc***14969%%"

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "qzone3.4"

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/tencent/open/c/b;

    invoke-direct {v0, p1}, Lcom/tencent/open/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = \'qq.com\';localStorage[\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"]=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\";</script></head><body></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v1

    const-string v3, "http://qzs.qq.com"

    invoke-virtual {v1, p1, v3}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/c/b;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
