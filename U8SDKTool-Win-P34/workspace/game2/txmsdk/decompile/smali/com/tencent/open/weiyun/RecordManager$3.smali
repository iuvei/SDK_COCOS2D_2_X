.class Lcom/tencent/open/weiyun/RecordManager$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/weiyun/RecordManager;->getRecord(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Lcom/tencent/open/weiyun/RecordManager;


# direct methods
.method constructor <init>(Lcom/tencent/open/weiyun/RecordManager;Lcom/tencent/tauth/IUiListener;)V
    .registers 3

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tencent/open/weiyun/RecordManager$3;->b:Lcom/tencent/open/weiyun/RecordManager;

    iput-object p2, p0, Lcom/tencent/open/weiyun/RecordManager$3;->a:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/open/weiyun/RecordManager$3;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 161
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x4

    .line 143
    check-cast p1, Lorg/json/JSONObject;

    .line 145
    :try_start_4
    const-string v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 146
    if-nez v0, :cond_22

    .line 147
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 148
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/tencent/open/weiyun/RecordManager$3;->a:Lcom/tencent/tauth/IUiListener;

    invoke-static {v0}, Lcom/tencent/open/utils/Util;->hexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    .line 156
    :goto_21
    return-void

    .line 151
    :cond_22
    iget-object v0, p0, Lcom/tencent/open/weiyun/RecordManager$3;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v1, Lcom/tencent/tauth/UiError;

    const/4 v2, -0x4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_32} :catch_33

    goto :goto_21

    .line 153
    :catch_33
    move-exception v0

    .line 154
    iget-object v1, p0, Lcom/tencent/open/weiyun/RecordManager$3;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v2, Lcom/tencent/tauth/UiError;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0, v6}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_21
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/open/weiyun/RecordManager$3;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 139
    return-void
.end method
