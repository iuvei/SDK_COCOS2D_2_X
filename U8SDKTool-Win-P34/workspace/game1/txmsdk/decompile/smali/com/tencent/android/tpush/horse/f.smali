.class public Lcom/tencent/android/tpush/horse/f;
.super Lcom/tencent/android/tpush/horse/a;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/android/tpush/horse/f;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/a;-><init>()V

    .line 11
    return-void
.end method

.method public static declared-synchronized j()Lcom/tencent/android/tpush/horse/f;
    .registers 2

    .prologue
    .line 14
    const-class v1, Lcom/tencent/android/tpush/horse/f;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/android/tpush/horse/f;->a:Lcom/tencent/android/tpush/horse/f;

    if-nez v0, :cond_e

    .line 15
    new-instance v0, Lcom/tencent/android/tpush/horse/f;

    invoke-direct {v0}, Lcom/tencent/android/tpush/horse/f;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/horse/f;->a:Lcom/tencent/android/tpush/horse/f;

    .line 17
    :cond_e
    sget-object v0, Lcom/tencent/android/tpush/horse/f;->a:Lcom/tencent/android/tpush/horse/f;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public f()V
    .registers 2

    .prologue
    .line 22
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/f;->e()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 24
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 33
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/horse/f;->a(I)V

    .line 34
    return-void
.end method