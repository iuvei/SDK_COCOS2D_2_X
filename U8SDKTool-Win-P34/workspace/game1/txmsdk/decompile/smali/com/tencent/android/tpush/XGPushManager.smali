.class public Lcom/tencent/android/tpush/XGPushManager;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static final OPERATION_FAIL:I = 0x1

.field public static final OPERATION_REQ_REGISTER:I = 0x64

.field public static final OPERATION_REQ_UNREGISTER:I = 0x65

.field public static final OPERATION_SUCCESS:I

.field private static final a:Ljava/lang/String;

.field private static b:Lcom/tencent/android/tpush/XGPushNotifactionCallback;

.field private static c:I

.field private static d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-class v0, Lcom/tencent/android/tpush/XGPushManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    .line 572
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/XGPushManager;->b:Lcom/tencent/android/tpush/XGPushNotifactionCallback;

    .line 828
    const/4 v0, -0x1

    sput v0, Lcom/tencent/android/tpush/XGPushManager;->c:I

    .line 1059
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/XGPushManager;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/android/tpush/XGLocalMessage;J)J
    .registers 10

    .prologue
    const-wide/16 v0, -0x1

    .line 530
    if-eqz p0, :cond_6

    if-nez p1, :cond_e

    .line 531
    :cond_6
    const-string v2, "TPush"

    const-string v3, ">>> addLocalNotification context == null or msg == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_d
    :goto_d
    return-wide v0

    .line 535
    :cond_e
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.CUSTOM_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    const-string v1, "appPkgName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_2e

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide p2

    .line 542
    :cond_2e
    const-string v1, "accessId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 543
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v1, "custom_content"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getCustom_content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const-string v1, "date"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string v1, "hour"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getHour()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v1, "min"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getMin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v1, "builderId"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getBuilderId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 551
    const-string v1, "ring"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getRing()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    const-string v1, "vibrate"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getVibrate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    const-string v1, "lights"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getLights()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    const-string v1, "ring_raw"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getRing_raw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v1, "icon_type"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getIcon_type()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    const-string v1, "icon_res"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getIcon_res()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v1, "style_id"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getStyle_id()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    const-string v1, "small_icon"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getSmall_icon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v1, "action_type"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getAction_type()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    const-string v1, "activity"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string v1, "intent"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getIntent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    const-string v1, "packageDownloadUrl"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getPackageDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const-string v1, "packageName"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 566
    const-string v1, "msgId"

    neg-long v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 567
    const-string v1, "timeUs"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    neg-long v0, v2

    goto/16 :goto_d
.end method

.method static a(Landroid/app/Activity;)Lcom/tencent/android/tpush/XGPushClickedResult;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 468
    const-string v1, "XGPushMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onClickResult "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v1, "TPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onActivityStarted activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 498
    :cond_39
    :goto_39
    return-object v0

    .line 473
    :cond_3a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 474
    const-string v2, "tag.tpush.MSG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    if-eqz v2, :cond_39

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 478
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->isEnableService(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 484
    new-instance v0, Lcom/tencent/android/tpush/XGPushClickedResult;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGPushClickedResult;-><init>()V

    .line 485
    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/XGPushClickedResult;->parseIntent(Landroid/content/Intent;)V

    .line 487
    const-string v2, "tag.tpush.MSG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v2

    new-instance v3, Lcom/tencent/android/tpush/x;

    invoke-direct {v3, p0, v1}, Lcom/tencent/android/tpush/x;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_39
.end method

.method static synthetic a()Ljava/util/Map;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->d:Ljava/util/Map;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 88
    if-eqz p0, :cond_2f

    .line 89
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "call stop Push Service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/XGPushService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 95
    :cond_2f
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/XGPushManager;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 3

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/tencent/android/tpush/XGPushManager;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;Z)V
    .registers 8

    .prologue
    .line 1042
    const-string v0, "TPush"

    const-string v1, ">>> start service first,then regeister"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :try_start_7
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->c(Landroid/content/Context;)V

    .line 1046
    new-instance v0, Lcom/tencent/android/tpush/ad;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/android/tpush/ad;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 1048
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tencent.android.tpush.action.SERVICE_START"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1050
    new-instance v1, Lcom/tencent/android/tpush/ae;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/ae;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 1052
    sget-object v2, Lcom/tencent/android/tpush/XGPushManager;->d:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;J)Z
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2c} :catch_2d

    .line 1057
    :goto_2c
    return-void

    .line 1054
    :catch_2d
    move-exception v0

    .line 1055
    const-string v1, "TPush"

    const-string v2, "startServiceAndRegisterOrUnregister error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method static a(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V
    .registers 13

    .prologue
    .line 269
    if-nez p0, :cond_15

    .line 270
    if-eqz p1, :cond_d

    .line 271
    const/4 v0, 0x0

    const/16 v1, 0x2711

    const-string v2, "The context parameter can not be null!"

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 380
    :goto_c
    return-void

    .line 275
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 279
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/w;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/android/tpush/w;-><init>(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/android/tpush/a/h;)V
    .registers 8

    .prologue
    .line 640
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPro;->isEnableXGPro(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_80

    if-eqz p1, :cond_80

    .line 641
    const-string v0, "XGPro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportVerify2Mta BusiMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 644
    const-string v1, "busiMsgId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->d()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->h()Lcom/tencent/android/tpush/a/a;

    move-result-object v1

    .line 647
    if-eqz v1, :cond_80

    .line 648
    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/android/tpush/a/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPro;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPro;

    move-result-object v2

    const-string v3, "xg_verify_all"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/android/tpush/XGPro;->a(Ljava/lang/String;Ljava/util/Properties;)V

    .line 652
    invoke-virtual {v1}, Lcom/tencent/android/tpush/a/a;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_80

    .line 653
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPro;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPro;

    move-result-object v1

    const-string v2, "xg_verify_notify"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/android/tpush/XGPro;->a(Ljava/lang/String;Ljava/util/Properties;)V

    .line 658
    :cond_80
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;IJ)V
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 431
    if-nez p0, :cond_c

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_c
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->isEnableService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 458
    :cond_18
    :goto_18
    return-void

    .line 439
    :cond_19
    if-nez p1, :cond_23

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tagName parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_23
    cmp-long v0, p3, v2

    if-gtz v0, :cond_2b

    .line 445
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide p3

    .line 447
    :cond_2b
    cmp-long v0, p3, v2

    if-gez v0, :cond_37

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The accessId not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.TAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    const-string v1, "accId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 453
    const-string v1, "packName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v1, "tagFlag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    const-string v1, "tagName"

    invoke-static {p1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_18
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V
    .registers 23

    .prologue
    .line 929
    if-nez p0, :cond_d

    .line 930
    const/4 v2, 0x0

    const/16 v3, 0x2711

    const-string v4, "The context parameter can not be null!"

    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3, v4}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 1038
    :goto_c
    return-void

    .line 934
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 936
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v2

    new-instance v3, Lcom/tencent/android/tpush/aa;

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p3

    invoke-direct/range {v3 .. v12}, Lcom/tencent/android/tpush/aa;-><init>(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method public static addLocalNotification(Landroid/content/Context;Lcom/tencent/android/tpush/XGLocalMessage;)J
    .registers 4

    .prologue
    .line 525
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Lcom/tencent/android/tpush/XGLocalMessage;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 831
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 832
    const-string v0, "xg_service_enable"

    .line 834
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xg_service_enable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method static synthetic b(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/XGPushManager;->d(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 3

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/tencent/android/tpush/XGPushManager;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.PUSH_CLICK.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 610
    const-string v1, "packName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v1, "clickTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 613
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 614
    return-void
.end method

.method private static declared-synchronized c(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 8

    .prologue
    .line 1161
    const-class v1, Lcom/tencent/android/tpush/XGPushManager;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    const-string v2, "TPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> register to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-static {v0}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1164
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    :cond_28
    if-eqz p2, :cond_39

    .line 1167
    new-instance v0, Lcom/tencent/android/tpush/ab;

    invoke-direct {v0, p2}, Lcom/tencent/android/tpush/ab;-><init>(Lcom/tencent/android/tpush/XGIOperateCallback;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.android.tpush.action.REGISTER.RESULT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1186
    :cond_39
    const-string v0, "TPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> send register intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_56

    .line 1188
    monitor-exit v1

    return-void

    .line 1161
    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static clearLocalNotifications(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 583
    if-nez p0, :cond_a

    .line 584
    const-string v0, "TPush"

    const-string v1, ">>> clearLocalNotifications  context==null."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_9
    :goto_9
    return-void

    .line 588
    :cond_a
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->isEnableService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 592
    invoke-static {p0}, Lcom/tencent/android/tpush/service/l;->b(Landroid/content/Context;)V

    .line 593
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/android/tpush/y;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/y;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_9
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 618
    if-eqz p1, :cond_3a

    .line 619
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> broadcast2NotifactionClickedFeedback intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.FEEDBACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string v1, "TPUSH.FEEDBACK"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string v1, "TPUSH.ERRORCODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 630
    :cond_3a
    return-void
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 6

    .prologue
    .line 1192
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    invoke-static {v0}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1194
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    :cond_d
    if-eqz p2, :cond_1e

    .line 1198
    new-instance v0, Lcom/tencent/android/tpush/t;

    invoke-direct {v0, p2}, Lcom/tencent/android/tpush/t;-><init>(Lcom/tencent/android/tpush/XGIOperateCallback;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tencent.android.tpush.action.UNREGISTER.RESULT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1215
    :cond_1e
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1216
    return-void
.end method

.method public static deleteKeyValueTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 408
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 409
    :cond_e
    const-string v0, "TPush"

    const-string v1, "deleteKeyValueTag context or tagKey invalid."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_15
    return-void

    .line 413
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    const/4 v1, 0x4

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_15
.end method

.method public static deleteTag(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 426
    const/4 v0, 0x2

    const-wide/16 v2, -0x1

    invoke-static {p0, p1, v0, v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 427
    return-void
.end method

.method public static enableService(Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 839
    if-nez p0, :cond_3

    .line 861
    :cond_2
    :goto_2
    return-void

    .line 842
    :cond_3
    if-eqz p1, :cond_3d

    const/4 v0, 0x1

    :goto_6
    sput v0, Lcom/tencent/android/tpush/XGPushManager;->c:I

    .line 843
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/XGPushManager;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/tencent/android/tpush/XGPushManager;->c:I

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 845
    if-nez p1, :cond_2

    .line 846
    const-string v0, "TPush"

    const-string v1, "XG is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance v0, Lcom/tencent/android/tpush/z;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/z;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->unregisterPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto :goto_2

    .line 842
    :cond_3d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static getDefaultNotificationBuilder(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .registers 2

    .prologue
    .line 778
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->getNotificationBuilder(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v0

    .line 779
    if-nez v0, :cond_a

    .line 780
    invoke-static {p0}, Lcom/tencent/android/tpush/a/b;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 782
    :cond_a
    return-object v0
.end method

.method public static getNotifactionCallback()Lcom/tencent/android/tpush/XGPushNotifactionCallback;
    .registers 1

    .prologue
    .line 575
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->b:Lcom/tencent/android/tpush/XGPushNotifactionCallback;

    return-object v0
.end method

.method public static getNotificationBuilder(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .registers 4

    .prologue
    .line 794
    if-nez p0, :cond_b

    .line 795
    const-string v0, "TPush"

    const-string v1, "getNotificationBuilder  context == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v0, 0x0

    .line 798
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/a/b;->a(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v0

    goto :goto_a
.end method

.method public static getServiceStatus(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 106
    if-eqz p0, :cond_7

    .line 107
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->b(Landroid/content/Context;)I

    move-result v0

    .line 109
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isEnableService(Landroid/content/Context;)Z
    .registers 13

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 864
    if-nez p0, :cond_9

    move v0, v1

    .line 913
    :cond_8
    :goto_8
    return v0

    .line 867
    :cond_9
    sget v2, Lcom/tencent/android/tpush/XGPushManager;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_32

    .line 868
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/tencent/android/tpush/XGPushManager;->c:I

    .line 870
    const-string v2, "TPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/android/tpush/XGPushManager;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_32
    sget v2, Lcom/tencent/android/tpush/XGPushManager;->c:I

    if-ne v2, v5, :cond_c5

    .line 873
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 874
    const-string v2, "stopXG"

    invoke-static {v2}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/tencent/android/tpush/service/d/d;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 878
    invoke-static {v2}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 879
    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 880
    const-string v3, "TPush"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get accessids which should be stop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 884
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 885
    array-length v5, v3

    move v2, v0

    :goto_75
    if-ge v2, v5, :cond_89

    aget-object v6, v3, v2

    .line 887
    :try_start_79
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 888
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_86} :catch_cc

    .line 885
    :goto_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 893
    :cond_89
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_c5

    .line 894
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_aa

    .line 895
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 897
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->enableService(Landroid/content/Context;Z)V

    goto/16 :goto_8

    .line 902
    :cond_aa
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_c5

    .line 903
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 905
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->enableService(Landroid/content/Context;Z)V

    goto/16 :goto_8

    .line 913
    :cond_c5
    sget v2, Lcom/tencent/android/tpush/XGPushManager;->c:I

    if-eqz v2, :cond_8

    move v0, v1

    goto/16 :goto_8

    .line 889
    :catch_cc
    move-exception v6

    goto :goto_86
.end method

.method public static msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/a/h;)V
    .registers 6

    .prologue
    .line 810
    if-eqz p0, :cond_6c

    if-eqz p1, :cond_6c

    .line 811
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ msgAck("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->b()J

    move-result-wide v2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 815
    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6c

    .line 816
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.MSG_ACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    const-string v1, "msgId"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 819
    const-string v1, "packName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 821
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Lcom/tencent/android/tpush/a/h;)V

    .line 824
    :cond_6c
    return-void
.end method

.method public static onActivityStarted(Landroid/app/Activity;)Lcom/tencent/android/tpush/XGPushClickedResult;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 502
    const-string v0, "XGPushMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onActivityStarted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->isEnableService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_27
    move-object v0, v1

    .line 521
    :goto_28
    return-object v0

    .line 507
    :cond_29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 508
    if-eqz v2, :cond_4f

    const-string v0, "tag.tpush.NOTIFIC"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 510
    :try_start_37
    const-string v0, "tag.tpush.NOTIFIC"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 512
    const-string v3, "tag.tpush.NOTIFIC"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 513
    if-eqz v0, :cond_4f

    instance-of v3, v0, Lcom/tencent/android/tpush/XGPushClickedResult;

    if-eqz v3, :cond_4f

    .line 514
    check-cast v0, Lcom/tencent/android/tpush/XGPushClickedResult;

    .line 515
    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/XGPushClickedResult;->parseIntent(Landroid/content/Intent;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4d} :catch_4e

    goto :goto_28

    .line 518
    :catch_4e
    move-exception v0

    :cond_4f
    move-object v0, v1

    .line 521
    goto :goto_28
.end method

.method public static onActivityStoped(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 707
    if-nez p0, :cond_2

    .line 715
    :cond_2
    return-void
.end method

.method public static registerPush(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 113
    new-instance v0, Lcom/tencent/android/tpush/s;

    invoke-direct {v0}, Lcom/tencent/android/tpush/s;-><init>()V

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 126
    return-void
.end method

.method public static registerPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 143
    if-nez p1, :cond_b

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The callback parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_b
    const/4 v3, -0x1

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, p1

    move-object v8, v1

    invoke-static/range {v0 .. v8}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V

    .line 149
    return-void
.end method

.method public static registerPush(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 161
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 162
    :cond_4
    const-string v0, "TPush"

    const-string v1, "the parameter context or account of registerPush is invalid."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_b
    return-void

    .line 166
    :cond_c
    new-instance v0, Lcom/tencent/android/tpush/u;

    invoke-direct {v0}, Lcom/tencent/android/tpush/u;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto :goto_b
.end method

.method public static registerPush(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 9

    .prologue
    .line 153
    if-nez p2, :cond_a

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The callback parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_a
    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 158
    return-void
.end method

.method public static registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 15

    .prologue
    const/4 v8, 0x0

    .line 205
    if-nez p5, :cond_b

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The callback parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_b
    if-eqz p0, :cond_1b

    invoke-static {p1}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p2}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-gez p3, :cond_23

    .line 212
    :cond_1b
    const/16 v0, 0x2711

    const-string v1, "The context, account, ticket or ticketType is(are) invalid!"

    invoke-interface {p5, v8, v0, v1}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 218
    :goto_22
    return-void

    .line 217
    :cond_23
    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v8}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V

    goto :goto_22
.end method

.method public static reportNotifactionClear2Mta(Landroid/content/Context;J)V
    .registers 8

    .prologue
    .line 689
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPro;->isEnableXGPro(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 690
    const-string v0, "XGPro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportNotifactionClear2Mta BusiMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 693
    const-string v1, "busiMsgId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPro;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPro;

    move-result-object v1

    const-string v2, "xg_clear"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/android/tpush/XGPro;->a(Ljava/lang/String;Ljava/util/Properties;)V

    .line 697
    :cond_44
    return-void
.end method

.method public static reportNotifactionClicked2Mta(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 668
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPro;->isEnableXGPro(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_57

    if-eqz p1, :cond_57

    .line 669
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> reportNotifactionClicked2Mta intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v0, "busiMsgId"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 672
    const-string v2, "XGPro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportNotifactionClicked2Mta BusiMsgId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 675
    const-string v3, "busiMsgId"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPro;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPro;

    move-result-object v0

    const-string v1, "xg_click"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/XGPro;->a(Ljava/lang/String;Ljava/util/Properties;)V

    .line 679
    :cond_57
    return-void
.end method

.method public static setDefaultNotificationBuilder(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushNotificationBuilder;)V
    .registers 4

    .prologue
    .line 759
    if-nez p0, :cond_a

    .line 760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_a
    if-nez p1, :cond_d

    .line 768
    :goto_c
    return-void

    .line 767
    :cond_d
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tencent/android/tpush/a/b;->a(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushNotificationBuilder;)V

    goto :goto_c
.end method

.method public static setKeyValueTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 396
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    .line 398
    :cond_1a
    const-string v0, "TPush"

    const-string v1, "setKeyValueTag context or tagKey or tagValue invalid."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_21
    return-void

    .line 402
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_21
.end method

.method public static setNotifactionCallback(Lcom/tencent/android/tpush/XGPushNotifactionCallback;)V
    .registers 1

    .prologue
    .line 579
    sput-object p0, Lcom/tencent/android/tpush/XGPushManager;->b:Lcom/tencent/android/tpush/XGPushNotifactionCallback;

    .line 580
    return-void
.end method

.method public static setPushNotificationBuilder(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushNotificationBuilder;)V
    .registers 5

    .prologue
    .line 733
    if-nez p0, :cond_a

    .line 734
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_a
    const/4 v0, 0x1

    if-lt p1, v0, :cond_11

    const/16 v0, 0x1000

    if-le p1, v0, :cond_19

    .line 741
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "notificationBulderId\u4e0d\u5728\u8303\u56f4[1, 4096]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_19
    if-nez p2, :cond_1c

    .line 749
    :goto_1b
    return-void

    .line 747
    :cond_1c
    invoke-static {p0, p1, p2}, Lcom/tencent/android/tpush/a/b;->a(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushNotificationBuilder;)V

    goto :goto_1b
.end method

.method public static setTag(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 391
    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    invoke-static {p0, p1, v0, v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 392
    return-void
.end method

.method public static startPushService(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 76
    if-eqz p0, :cond_31

    .line 77
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "call start Push Service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->e(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_31

    .line 81
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    const-string v1, "Push Service isn\'t Running, need start!"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->c(Landroid/content/Context;)V

    .line 85
    :cond_31
    return-void
.end method

.method public static unregisterPush(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 221
    if-nez p0, :cond_a

    .line 222
    const-string v0, "TPush"

    const-string v1, "the context of unregisterPush is null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_9
    return-void

    .line 225
    :cond_a
    new-instance v0, Lcom/tencent/android/tpush/v;

    invoke-direct {v0}, Lcom/tencent/android/tpush/v;-><init>()V

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->unregisterPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto :goto_9
.end method

.method public static unregisterPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 5

    .prologue
    .line 243
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V

    .line 245
    return-void
.end method
