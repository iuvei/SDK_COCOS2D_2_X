.class public Lcom/tencent/beacon/upload/d;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:J

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v0, p0, Lcom/tencent/beacon/upload/d;->a:J

    .line 9
    iput-wide v0, p0, Lcom/tencent/beacon/upload/d;->b:J

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/beacon/upload/d;->c:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()J
    .registers 3

    .prologue
    .line 30
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/upload/d;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .registers 8

    .prologue
    .line 23
    monitor-enter p0

    :try_start_1
    const-string v0, "recevied: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-wide v0, p0, Lcom/tencent/beacon/upload/d;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/beacon/upload/d;->b:J
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 25
    monitor-exit p0

    return-void

    .line 23
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;JLjava/lang/String;)V
    .registers 9

    .prologue
    .line 15
    monitor-enter p0

    :try_start_1
    const-string v0, "send: %s sz: %d apn: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget v0, p0, Lcom/tencent/beacon/upload/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/beacon/upload/d;->c:I

    .line 17
    iget-wide v0, p0, Lcom/tencent/beacon/upload/d;->a:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/tencent/beacon/upload/d;->a:J
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 18
    monitor-exit p0

    return-void

    .line 15
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .registers 3

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/upload/d;->b:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
