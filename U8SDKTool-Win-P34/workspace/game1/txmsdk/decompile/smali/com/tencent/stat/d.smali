.class public Lcom/tencent/stat/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/tencent/stat/d;


# instance fields
.field private a:Ljava/util/Timer;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/d;->b:Lcom/tencent/stat/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/stat/d;->a:Ljava/util/Timer;

    iput-object v0, p0, Lcom/tencent/stat/d;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/d;->c:Landroid/content/Context;

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/stat/d;->a:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/tencent/stat/d;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tencent/stat/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/stat/d;
    .registers 3

    sget-object v0, Lcom/tencent/stat/d;->b:Lcom/tencent/stat/d;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/stat/d;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/stat/d;->b:Lcom/tencent/stat/d;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/stat/d;

    invoke-direct {v0, p0}, Lcom/tencent/stat/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/stat/d;->b:Lcom/tencent/stat/d;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/stat/d;->b:Lcom/tencent/stat/d;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 6

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getStatSendStrategy()Lcom/tencent/stat/StatReportStrategy;

    move-result-object v0

    sget-object v1, Lcom/tencent/stat/StatReportStrategy;->PERIOD:Lcom/tencent/stat/StatReportStrategy;

    if-ne v0, v1, :cond_39

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getSendPeriodMinutes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupPeriodTimer delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_31
    new-instance v2, Lcom/tencent/stat/e;

    invoke-direct {v2, p0}, Lcom/tencent/stat/e;-><init>(Lcom/tencent/stat/d;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/stat/d;->a(Ljava/util/TimerTask;J)V

    :cond_39
    return-void
.end method

.method public a(Ljava/util/TimerTask;J)V
    .registers 8

    iget-object v0, p0, Lcom/tencent/stat/d;->a:Ljava/util/Timer;

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupPeriodTimer schedule delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_24
    iget-object v0, p0, Lcom/tencent/stat/d;->a:Ljava/util/Timer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "setupPeriodTimer schedule timer == null"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_29
.end method
