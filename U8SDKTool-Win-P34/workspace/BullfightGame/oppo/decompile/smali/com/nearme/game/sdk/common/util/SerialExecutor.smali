.class public Lcom/nearme/game/sdk/common/util/SerialExecutor;
.super Ljava/lang/Object;
.source "SerialExecutor.java"


# instance fields
.field public final THREAD_POOL_EXECUTOR:Lcom/nearme/game/sdk/common/util/GCExecutor;

.field private final a:Ljava/util/ArrayDeque;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/nearme/game/sdk/common/util/GCExecutor;

    invoke-direct {v0}, Lcom/nearme/game/sdk/common/util/GCExecutor;-><init>()V

    iput-object v0, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor;->THREAD_POOL_EXECUTOR:Lcom/nearme/game/sdk/common/util/GCExecutor;

    .line 10
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor;->a:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 16
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor;->a:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/nearme/game/sdk/common/util/SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/nearme/game/sdk/common/util/SerialExecutor$1;-><init>(Lcom/nearme/game/sdk/common/util/SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_12

    .line 26
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/util/SerialExecutor;->scheduleNext()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 28
    :cond_12
    monitor-exit p0

    return-void

    .line 16
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleNext()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 32
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 33
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor;->THREAD_POOL_EXECUTOR:Lcom/nearme/game/sdk/common/util/GCExecutor;

    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/common/util/GCExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 35
    :cond_14
    monitor-exit p0

    return-void

    .line 32
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
