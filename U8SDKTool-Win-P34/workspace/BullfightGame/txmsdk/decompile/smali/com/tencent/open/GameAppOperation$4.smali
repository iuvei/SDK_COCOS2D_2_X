.class Lcom/tencent/open/GameAppOperation$4;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/GameAppOperation;->isActivityAvailable(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/tencent/open/GameAppOperation;


# direct methods
.method constructor <init>(Lcom/tencent/open/GameAppOperation;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 980
    iput-object p1, p0, Lcom/tencent/open/GameAppOperation$4;->d:Lcom/tencent/open/GameAppOperation;

    iput-object p2, p0, Lcom/tencent/open/GameAppOperation$4;->a:Lcom/tencent/tauth/IUiListener;

    iput-object p3, p0, Lcom/tencent/open/GameAppOperation$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/open/GameAppOperation$4;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 984
    iget-object v0, p0, Lcom/tencent/open/GameAppOperation$4;->d:Lcom/tencent/open/GameAppOperation;

    invoke-static {v0}, Lcom/tencent/open/GameAppOperation;->a(Lcom/tencent/open/GameAppOperation;)Landroid/os/Bundle;

    move-result-object v0

    .line 985
    if-nez v0, :cond_1d

    .line 986
    const-string v0, "accesstoken or openid or appid is null, please login first!"

    .line 987
    const-string v1, "openSDK_LOG.GameAppOper"

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v1, p0, Lcom/tencent/open/GameAppOperation$4;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v2, Lcom/tencent/tauth/UiError;

    const/4 v3, -0x5

    const-string v4, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"

    invoke-direct {v2, v3, v4, v0}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 1005
    :goto_1c
    return-void

    .line 991
    :cond_1d
    const-string v1, "activityid"

    iget-object v2, p0, Lcom/tencent/open/GameAppOperation$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v1, "http://fusion.qq.com/cgi-bin/prize_sharing/get_activity_state.cgi"

    .line 995
    :try_start_26
    iget-object v2, p0, Lcom/tencent/open/GameAppOperation$4;->d:Lcom/tencent/open/GameAppOperation;

    invoke-static {v2}, Lcom/tencent/open/GameAppOperation;->f(Lcom/tencent/open/GameAppOperation;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/GameAppOperation$4;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "GET"

    invoke-static {v2, v3, v1, v0, v4}, Lcom/tencent/open/utils/HttpUtils;->request(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_37} :catch_3e

    move-result-object v0

    .line 1004
    iget-object v1, p0, Lcom/tencent/open/GameAppOperation$4;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_1c

    .line 997
    :catch_3e
    move-exception v0

    .line 998
    const-string v1, "openSDK_LOG.GameAppOper"

    const-string v2, "Exception occur in make_share_url"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 999
    iget-object v1, p0, Lcom/tencent/open/GameAppOperation$4;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v2, Lcom/tencent/tauth/UiError;

    const/4 v3, -0x6

    const-string v4, "Exception occur in make_share_url"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_1c
.end method
