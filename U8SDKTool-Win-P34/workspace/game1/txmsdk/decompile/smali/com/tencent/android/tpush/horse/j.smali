.class Lcom/tencent/android/tpush/horse/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/horse/b;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/horse/g;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/horse/g;)V
    .registers 2

    .prologue
    .line 386
    iput-object p1, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 436
    const-string v0, "XGHorse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ onFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->e(Lcom/tencent/android/tpush/horse/g;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 438
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;Z)Z

    .line 439
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/g;->c()V

    .line 472
    :cond_32
    :goto_32
    return-void

    .line 442
    :cond_33
    const-string v1, "XGHorse"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> item:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_ee

    const-string v0, "null"

    :goto_44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v2}, Lcom/tencent/android/tpush/horse/g;->d(Lcom/tencent/android/tpush/horse/g;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/tencent/android/tpush/horse/r;->j()Lcom/tencent/android/tpush/horse/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/r;->c()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 447
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->d(Lcom/tencent/android/tpush/horse/g;)I

    move-result v0

    if-nez v0, :cond_ad

    .line 449
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/f;->c()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 450
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;I)I

    .line 451
    const-string v1, "XGHorse"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_f4

    const-string v0, "null"

    :goto_91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->b(Lcom/tencent/android/tpush/horse/g;)Lcom/tencent/android/tpush/horse/l;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 454
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    const/16 v1, 0x2775

    const-string v2, "create channel fail!"

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;ILjava/lang/String;)V

    .line 460
    :cond_ad
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->d(Lcom/tencent/android/tpush/horse/g;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 461
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->c(Lcom/tencent/android/tpush/horse/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 462
    :try_start_bd
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;I)I

    .line 463
    const-string v0, "XGHorse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> http notify 421>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->c(Lcom/tencent/android/tpush/horse/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 466
    monitor-exit v1

    goto/16 :goto_32

    :catchall_eb
    move-exception v0

    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_bd .. :try_end_ed} :catchall_eb

    throw v0

    .line 442
    :cond_ee
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 451
    :cond_f4
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_91

    .line 469
    :cond_f9
    const-string v0, "XGHorse"

    const-string v1, ">> tcp has remain"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32
.end method

.method public a(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    .registers 8

    .prologue
    const/16 v4, 0x2775

    const/4 v3, 0x0

    .line 389
    const-string v0, "XGHorse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ onSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {v3}, Lcom/tencent/android/tpush/horse/g;->a(I)I

    .line 393
    if-eqz p1, :cond_28

    if-nez p2, :cond_37

    .line 394
    :cond_28
    const-string v0, "XGHorse"

    const-string v1, ">> socketChannel or item is null ,notifyFail()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    const-string v1, "create channel fail!"

    invoke-static {v0, v4, v1}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;ILjava/lang/String;)V

    .line 432
    :goto_36
    return-void

    .line 401
    :cond_37
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 402
    const-string v0, "XGHorse"

    const-string v1, ">> isConnected item:"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->b(Lcom/tencent/android/tpush/horse/g;)Lcom/tencent/android/tpush/horse/l;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 406
    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->j()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->e(Lcom/tencent/android/tpush/horse/g;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 408
    :try_start_5a
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_a1

    .line 423
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->e(Lcom/tencent/android/tpush/horse/g;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 424
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;Z)Z

    .line 426
    :cond_6a
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->c(Lcom/tencent/android/tpush/horse/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 427
    :try_start_71
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;I)I

    .line 428
    const-string v0, "XGHorse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> TcpTask has result >>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->c(Lcom/tencent/android/tpush/horse/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 431
    monitor-exit v1

    goto :goto_36

    :catchall_9e
    move-exception v0

    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_71 .. :try_end_a0} :catchall_9e

    throw v0

    .line 409
    :catch_a1
    move-exception v0

    .line 410
    const-string v1, "XGHorse"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 413
    :cond_ac
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0}, Lcom/tencent/android/tpush/horse/g;->b(Lcom/tencent/android/tpush/horse/g;)Lcom/tencent/android/tpush/horse/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/android/tpush/horse/l;->a(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/horse/data/StrategyItem;)V

    goto :goto_5d

    .line 418
    :cond_b6
    const-string v0, "XGHorse"

    const-string v1, ">> not connected >> notifyFail()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/j;->a:Lcom/tencent/android/tpush/horse/g;

    const-string v1, "create channel fail!"

    invoke-static {v0, v4, v1}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;ILjava/lang/String;)V

    goto :goto_5d
.end method
