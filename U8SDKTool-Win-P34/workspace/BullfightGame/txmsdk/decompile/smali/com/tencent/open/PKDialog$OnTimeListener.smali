.class Lcom/tencent/open/PKDialog$OnTimeListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/PKDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnTimeListener"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field mAppid:Ljava/lang/String;

.field mUrl:Ljava/lang/String;

.field private mWeakCtx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakL:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .registers 7

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mWeakCtx:Ljava/lang/ref/WeakReference;

    .line 446
    iput-object p2, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mAction:Ljava/lang/String;

    .line 447
    iput-object p3, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mUrl:Ljava/lang/String;

    .line 448
    iput-object p4, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mAppid:Ljava/lang/String;

    .line 449
    iput-object p5, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    .line 450
    return-void
.end method

.method static synthetic access$700(Lcom/tencent/open/PKDialog$OnTimeListener;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/tencent/open/PKDialog$OnTimeListener;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method private onComplete(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 454
    :try_start_0
    invoke-static {p1}, Lcom/tencent/open/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 455
    invoke-virtual {p0, v0}, Lcom/tencent/open/PKDialog$OnTimeListener;->onComplete(Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    .line 461
    :goto_7
    return-void

    .line 456
    :catch_8
    move-exception v0

    .line 457
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 458
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x4

    const-string v2, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/open/PKDialog$OnTimeListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_7
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_c

    .line 488
    iget-object v0, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    .line 491
    :cond_c
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 13

    .prologue
    const-wide/16 v4, 0x0

    .line 465
    check-cast p1, Lorg/json/JSONObject;

    .line 466
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_H5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v6, "ret"

    const/4 v7, -0x6

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mUrl:Ljava/lang/String;

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    .line 468
    iget-object v0, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_3b

    .line 469
    iget-object v0, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    .line 472
    :cond_3b
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 13

    .prologue
    const-wide/16 v4, 0x0

    .line 476
    iget-object v0, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 477
    :goto_1b
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_H5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v8, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    .line 479
    iget-object v0, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_4b

    .line 480
    iget-object v0, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    .line 483
    :cond_4b
    return-void

    .line 476
    :cond_4c
    iget-object v9, p0, Lcom/tencent/open/PKDialog$OnTimeListener;->mUrl:Ljava/lang/String;

    goto :goto_1b
.end method
