.class public Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;


# instance fields
.field public channel_no:Ljava/lang/String;

.field public is_mobile_pwd:Ljava/lang/String;

.field public send_sms_by_bfb:I

.field public sms_length:Ljava/lang/String;

.field public sms_pattern:Ljava/lang/String;

.field public sms_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResponseValidity()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->channel_no:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
