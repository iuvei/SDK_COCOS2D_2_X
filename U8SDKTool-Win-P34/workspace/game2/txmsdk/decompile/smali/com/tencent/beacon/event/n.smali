.class public final Lcom/tencent/beacon/event/n;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/beacon/event/n;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/n;->a:Lcom/tencent/beacon/event/n;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->b:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->c:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->d:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->e:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->f:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->g:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->h:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->i:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->j:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->k:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->l:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->m:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->n:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->o:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->p:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->q:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->r:Ljava/lang/String;

    .line 239
    if-nez p1, :cond_52

    .line 240
    const-string v0, " UADeviceInfo context == null? pls check!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_52
    const-string v0, " start to create UADeviceInfo"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 244
    invoke-static {p1}, Lcom/tencent/beacon/a/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/a/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->b:Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/a/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    invoke-static {p1}, Lcom/tencent/beacon/a/g;->h(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 249
    if-nez v0, :cond_1b2

    const-string v0, ""

    :goto_8b
    iput-object v0, p0, Lcom/tencent/beacon/event/n;->c:Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/a/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->d:Ljava/lang/String;

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->e:Ljava/lang/String;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/a/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "m"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->f:Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/a/g;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "m"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->g:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/a/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->h:Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/a/g;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->i:Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/tencent/beacon/a/g;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->j:Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/a/g;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->k:Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/tencent/beacon/event/n;->c(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->l:Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/event/n;->t()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "m"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->m:Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tencent/beacon/event/n;->w()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->n:Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/event/n;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->o:Ljava/lang/String;

    .line 263
    invoke-static {}, Lcom/tencent/beacon/event/n;->u()Z

    move-result v0

    if-eqz v0, :cond_1cf

    const-string v0, "Y"

    :goto_17c
    iput-object v0, p0, Lcom/tencent/beacon/event/n;->p:Ljava/lang/String;

    .line 264
    invoke-direct {p0, p1}, Lcom/tencent/beacon/event/n;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/n;->q:Ljava/lang/String;

    .line 265
    invoke-static {p1}, Lcom/tencent/beacon/event/n;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    invoke-static {}, Lcom/tencent/beacon/event/n;->v()Z

    move-result v0

    if-eqz v0, :cond_1d2

    move v0, v1

    :goto_191
    if-eqz v0, :cond_1d4

    const-string v0, "Y"

    :goto_195
    iput-object v0, p0, Lcom/tencent/beacon/event/n;->r:Ljava/lang/String;

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 268
    const-string v0, " detail create cost\uff1a %d  values:\n %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    return-void

    .line 249
    :cond_1b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8b

    .line 263
    :cond_1cf
    const-string v0, "N"

    goto :goto_17c

    :cond_1d2
    move v0, v2

    .line 265
    goto :goto_191

    :cond_1d4
    const-string v0, "N"

    goto :goto_195
.end method

.method public static declared-synchronized a()Lcom/tencent/beacon/event/n;
    .registers 2

    .prologue
    .line 45
    const-class v0, Lcom/tencent/beacon/event/n;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/beacon/event/n;->a:Lcom/tencent/beacon/event/n;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/beacon/event/n;
    .registers 3

    .prologue
    .line 37
    const-class v1, Lcom/tencent/beacon/event/n;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/event/n;->a:Lcom/tencent/beacon/event/n;

    if-nez v0, :cond_10

    if-eqz p0, :cond_10

    .line 38
    new-instance v0, Lcom/tencent/beacon/event/n;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/n;-><init>(Landroid/content/Context;)V

    .line 39
    sput-object v0, Lcom/tencent/beacon/event/n;->a:Lcom/tencent/beacon/event/n;

    .line 41
    :cond_10
    sget-object v0, Lcom/tencent/beacon/event/n;->a:Lcom/tencent/beacon/event/n;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 496
    if-eqz p0, :cond_b

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 503
    :cond_b
    :goto_b
    return v0

    .line 499
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_17

    .line 501
    const/4 v0, 0x1

    goto :goto_b

    .line 503
    :catch_17
    move-exception v1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 431
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 433
    if-nez v0, :cond_d

    .line 434
    const-string v0, "N"

    .line 438
    :goto_c
    return-object v0

    .line 435
    :cond_d
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 436
    if-nez v0, :cond_16

    .line 437
    const-string v0, "N"

    goto :goto_c

    .line 438
    :cond_16
    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "Y"

    goto :goto_c

    :cond_21
    const-string v0, "N"

    goto :goto_c
.end method

.method private static c(Landroid/content/Context;)I
    .registers 9

    .prologue
    const/16 v1, 0xa0

    .line 403
    .line 404
    if-nez p0, :cond_5

    .line 427
    :cond_4
    :goto_4
    return v1

    .line 408
    :cond_5
    :try_start_5
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 409
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 411
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 412
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x3f800000

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    .line 414
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe8000000000000L

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_2d

    .line 415
    const/16 v1, 0x78

    goto :goto_4

    .line 416
    :cond_2d
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x3ff8000000000000L

    cmpl-double v0, v4, v6

    if-nez v0, :cond_39

    .line 417
    const/16 v1, 0xf0

    goto :goto_4

    .line 418
    :cond_39
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L

    cmpl-double v0, v4, v6

    if-nez v0, :cond_45

    .line 419
    const/16 v1, 0x140

    goto :goto_4

    .line 420
    :cond_45
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_47} :catch_52

    float-to-double v2, v0

    const-wide/high16 v4, 0x4008000000000000L

    cmpl-double v0, v2, v4

    if-nez v0, :cond_57

    .line 421
    const/16 v0, 0x1e0

    :goto_50
    move v1, v0

    .line 426
    goto :goto_4

    .line 424
    :catch_52
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_57
    move v0, v1

    goto :goto_50
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 470
    .line 471
    if-nez p0, :cond_5

    .line 492
    :goto_4
    return v1

    .line 474
    :cond_5
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/root"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    :try_start_c
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 477
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 478
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_1a

    :cond_18
    :goto_18
    move v1, v0

    .line 492
    goto :goto_4

    .line 482
    :catch_1a
    move-exception v2

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "com.noshufou.android.su"

    aput-object v2, v3, v1

    const-string v2, "com.miui.uac"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "eu.chainfire.supersu"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "com.lbe.security.miui"

    aput-object v4, v3, v2

    .line 485
    array-length v4, v3

    move v2, v1

    :goto_32
    if-ge v2, v4, :cond_3f

    aget-object v5, v3, v2

    .line 486
    invoke-static {v5, p0}, Lcom/tencent/beacon/event/n;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_3f
    move v0, v1

    goto :goto_18
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 645
    if-nez p1, :cond_d

    .line 646
    const-string v0, "getSensor2 but context == null!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    const/4 v0, 0x0

    .line 697
    :goto_c
    return-object v0

    .line 650
    :cond_d
    const-string v0, "getSensor2 start"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    const-string v5, "X"

    .line 653
    const-string v4, "X"

    .line 654
    const-string v3, "X"

    .line 655
    const-string v2, "X"

    .line 657
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_87

    move v0, v6

    :goto_27
    if-eqz v0, :cond_89

    .line 658
    const-string v0, "Y"

    move-object v1, v0

    .line 663
    :goto_2c
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v7, 0xa

    if-lt v0, v7, :cond_ab

    .line 667
    :try_start_36
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 669
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    if-eqz v7, :cond_8d

    .line 670
    const-string v5, "Y"

    .line 674
    :goto_47
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 675
    const-string v4, "Y"

    .line 680
    :goto_50
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 681
    if-nez v0, :cond_93

    .line 682
    const-string v3, "N"

    .line 687
    :goto_58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 689
    const-string v0, "Y"
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_66} :catch_9c

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 697
    :goto_69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_87
    move v0, v1

    .line 657
    goto :goto_27

    .line 660
    :cond_89
    const-string v0, "N"

    move-object v1, v0

    goto :goto_2c

    .line 672
    :cond_8d
    :try_start_8d
    const-string v5, "N"

    goto :goto_47

    .line 677
    :cond_90
    const-string v4, "N"

    goto :goto_50

    .line 684
    :cond_93
    const-string v3, "Y"

    goto :goto_58

    .line 691
    :cond_96
    const-string v0, "N"
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_98} :catch_9c

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 695
    goto :goto_69

    .line 694
    :catch_9c
    move-exception v0

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    const-string v5, "getSensor2 error!"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_69

    :cond_ab
    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_69
.end method

.method private static s()Ljava/lang/String;
    .registers 5

    .prologue
    .line 278
    const-string v0, ""

    .line 279
    const/4 v3, 0x0

    .line 280
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "/system/bin/cat"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string v4, "/proc/cpuinfo"

    aput-object v4, v1, v2

    .line 282
    :try_start_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 283
    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 286
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_26} :catch_4d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_26} :catch_5d
    .catchall {:try_start_10 .. :try_end_26} :catchall_6d

    .line 288
    :cond_26
    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 289
    const-string v3, "Processor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 290
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_43} :catch_7e
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_43} :catch_7c
    .catchall {:try_start_26 .. :try_end_43} :catchall_7a

    move-result-object v0

    .line 292
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 309
    :cond_47
    :goto_47
    return-object v0

    .line 303
    :catch_48
    move-exception v1

    .line 304
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 295
    :catch_4d
    move-exception v1

    move-object v2, v3

    .line 296
    :goto_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_7a

    .line 300
    if-eqz v2, :cond_47

    .line 302
    :try_start_54
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_47

    .line 303
    :catch_58
    move-exception v1

    .line 304
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 297
    :catch_5d
    move-exception v1

    move-object v2, v3

    .line 298
    :goto_5f
    :try_start_5f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_7a

    .line 300
    if-eqz v2, :cond_47

    .line 302
    :try_start_64
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_47

    .line 303
    :catch_68
    move-exception v1

    .line 304
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 300
    :catchall_6d
    move-exception v0

    move-object v2, v3

    :goto_6f
    if-eqz v2, :cond_74

    .line 302
    :try_start_71
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    .line 305
    :cond_74
    :goto_74
    throw v0

    .line 303
    :catch_75
    move-exception v1

    .line 304
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74

    .line 300
    :catchall_7a
    move-exception v0

    goto :goto_6f

    .line 297
    :catch_7c
    move-exception v1

    goto :goto_5f

    .line 295
    :catch_7e
    move-exception v1

    goto :goto_4f
.end method

.method private static t()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 320
    const/4 v3, 0x0

    .line 321
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/system/bin/cat"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v4, v1, v2

    .line 324
    :try_start_e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 325
    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 328
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_24} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_24} :catch_4d
    .catchall {:try_start_e .. :try_end_24} :catchall_5c

    .line 329
    :try_start_24
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 331
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_6e
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_34} :catch_6b
    .catchall {:try_start_24 .. :try_end_34} :catchall_68

    .line 339
    :cond_34
    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    .line 348
    :cond_37
    :goto_37
    return v0

    .line 342
    :catch_38
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 334
    :catch_3d
    move-exception v1

    move-object v2, v3

    .line 335
    :goto_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_68

    .line 339
    if-eqz v2, :cond_37

    .line 341
    :try_start_44
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_37

    .line 342
    :catch_48
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 336
    :catch_4d
    move-exception v1

    .line 337
    :goto_4e
    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5c

    .line 339
    if-eqz v3, :cond_37

    .line 341
    :try_start_53
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_37

    .line 342
    :catch_57
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 339
    :catchall_5c
    move-exception v0

    :goto_5d
    if-eqz v3, :cond_62

    .line 341
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    .line 344
    :cond_62
    :goto_62
    throw v0

    .line 342
    :catch_63
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 339
    :catchall_68
    move-exception v0

    move-object v3, v2

    goto :goto_5d

    .line 336
    :catch_6b
    move-exception v1

    move-object v3, v2

    goto :goto_4e

    .line 334
    :catch_6e
    move-exception v1

    goto :goto_3f
.end method

.method private static u()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 358
    const/4 v3, 0x0

    .line 359
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "/system/bin/cat"

    aput-object v4, v2, v0

    const-string v4, "/proc/cpuinfo"

    aput-object v4, v2, v1

    .line 361
    :try_start_e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 362
    invoke-virtual {v4, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 365
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_24} :catch_41
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_24} :catch_51
    .catchall {:try_start_e .. :try_end_24} :catchall_60

    .line 367
    :cond_24
    :try_start_24
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 368
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 369
    const/4 v4, -0x1

    const-string v5, "armv7"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_72
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_34} :catch_6f
    .catchall {:try_start_24 .. :try_end_34} :catchall_6c

    move-result v3

    if-eq v4, v3, :cond_24

    move v0, v1

    .line 371
    :cond_38
    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 388
    :cond_3b
    :goto_3b
    return v0

    .line 382
    :catch_3c
    move-exception v1

    .line 383
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 374
    :catch_41
    move-exception v1

    move-object v2, v3

    .line 375
    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_6c

    .line 379
    if-eqz v2, :cond_3b

    .line 381
    :try_start_48
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_3b

    .line 382
    :catch_4c
    move-exception v1

    .line 383
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 376
    :catch_51
    move-exception v1

    .line 377
    :goto_52
    :try_start_52
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_60

    .line 379
    if-eqz v3, :cond_3b

    .line 381
    :try_start_57
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_3b

    .line 382
    :catch_5b
    move-exception v1

    .line 383
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 379
    :catchall_60
    move-exception v0

    :goto_61
    if-eqz v3, :cond_66

    .line 381
    :try_start_63
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 384
    :cond_66
    :goto_66
    throw v0

    .line 382
    :catch_67
    move-exception v1

    .line 383
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    .line 379
    :catchall_6c
    move-exception v0

    move-object v3, v2

    goto :goto_61

    .line 376
    :catch_6f
    move-exception v1

    move-object v3, v2

    goto :goto_52

    .line 374
    :catch_72
    move-exception v1

    goto :goto_43
.end method

.method private static v()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    const-string v2, "getIsRootByFile"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/system/bin/"

    aput-object v2, v3, v1

    const-string v2, "/system/xbin/"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/sbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/sbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/vendor/bin/"

    aput-object v4, v3, v2

    move v2, v1

    .line 452
    :goto_24
    :try_start_24
    array-length v4, v3

    if-ge v2, v4, :cond_4f

    .line 453
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_44} :catch_4b

    move-result v4

    if-eqz v4, :cond_48

    .line 461
    :goto_47
    return v0

    .line 452
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 458
    :catch_4b
    move-exception v0

    .line 459
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4f
    move v0, v1

    .line 461
    goto :goto_47
.end method

.method private w()I
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 610
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    new-instance v2, Lcom/tencent/beacon/event/n$a;

    invoke-direct {v2, p0}, Lcom/tencent/beacon/event/n$a;-><init>(Lcom/tencent/beacon/event/n;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 614
    if-nez v1, :cond_14

    .line 624
    :goto_13
    return v0

    .line 618
    :cond_14
    array-length v0, v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_16

    goto :goto_13

    .line 619
    :catch_16
    move-exception v1

    .line 621
    const-string v2, "CPU Count: Failed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method


# virtual methods
.method public final declared-synchronized b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->h:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->i:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->j:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->k:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/tencent/beacon/event/n;->r:Ljava/lang/String;

    return-object v0
.end method
