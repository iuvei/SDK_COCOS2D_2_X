.class Lcom/baidu/sapi2/c$H;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V
    .registers 3

    .prologue
    .line 3607
    iput-object p1, p0, Lcom/baidu/sapi2/c$H;->b:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$H;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 3616
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3617
    iget-object v0, p0, Lcom/baidu/sapi2/c$H;->b:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$H;->b:Lcom/baidu/sapi2/c;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/c;->c(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/c$H;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v0, v1, v2, p2}, Lcom/baidu/sapi2/c;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    .line 3618
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 3610
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 3611
    iget-object v0, p0, Lcom/baidu/sapi2/c$H;->b:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$H;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v0, p1, v1, p2}, Lcom/baidu/sapi2/c;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    .line 3612
    return-void
.end method
