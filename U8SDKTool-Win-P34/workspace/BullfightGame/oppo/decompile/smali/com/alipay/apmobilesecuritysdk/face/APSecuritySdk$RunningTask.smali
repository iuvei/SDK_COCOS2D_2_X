.class Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunningTask"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;


# direct methods
.method public constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->b:I

    iput-object p5, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->e:Ljava/lang/String;

    invoke-static {p3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->c:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->f:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->d(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->a(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    iget v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->b:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "https://mobilegw.alipay.com/mgw.htm"

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/b/a;->a:Ljava/lang/String;

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    iget v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask$1;

    invoke-direct {v4, p0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask$1;-><init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/taobao/dp/DeviceSecuritySDK;->initAsync(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V

    const/16 v0, 0xbb8

    :goto_3
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->e(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Z

    move-result v1

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0xa

    goto :goto_3

    :pswitch_0
    const-string v1, "http://mobilegw.stable.alipay.net/mgw.htm"

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/b/a;->a:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const-string v1, "https://mobilegw.alipay.com/mgw.htm"

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/b/a;->a:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string v1, "http://mobilegw-1-64.test.alipay.net/mgw.htm"

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/b/a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->a(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_4
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "enable"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tid"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utdid"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "umid"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->f(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/SecureSdk;->getApdidToken(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->f:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-direct {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;-><init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->f(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->clientKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->f:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    invoke-interface {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;->onResult(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v0, v5}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->a(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v0, v5}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->a(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1, v5}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->a(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_4
    move v0, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
