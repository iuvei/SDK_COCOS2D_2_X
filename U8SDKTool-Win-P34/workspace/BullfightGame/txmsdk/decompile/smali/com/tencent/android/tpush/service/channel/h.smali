.class Lcom/tencent/android/tpush/service/channel/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/b;

.field private b:Lcom/tencent/android/tpush/service/channel/a/a;

.field private c:Lcom/tencent/android/tpush/service/channel/b/i;


# direct methods
.method public constructor <init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 967
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/h;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/h;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 965
    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/h;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    .line 968
    iput-object p2, p0, Lcom/tencent/android/tpush/service/channel/h;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 969
    iput-object p3, p0, Lcom/tencent/android/tpush/service/channel/h;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    .line 970
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 974
    const-string v0, "XGService"

    const-string v1, "@@HeartBeatRunnable run()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/h;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/b;->i(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/n;

    move-result-object v2

    iget-wide v2, v2, Lcom/tencent/android/tpush/service/channel/n;->b:J

    sub-long/2addr v0, v2

    .line 978
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/h;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/a/a;->e()Lcom/tencent/android/tpush/service/channel/a;

    move-result-object v2

    .line 979
    const/4 v3, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/tencent/android/tpush/service/channel/a;->a(ILjava/lang/Object;)V

    .line 980
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/h;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->i(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/n;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/android/tpush/service/channel/n;->d:Lcom/tencent/android/tpush/service/channel/o;

    .line 981
    if-nez v1, :cond_4c

    .line 982
    const-string v0, "XGService"

    const-string v1, ">> messageHandler is null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/h;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->j(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/h;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/channel/b;->i(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/n;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/qq/taf/jce/JceStruct;

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/h;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    invoke-virtual {v3}, Lcom/tencent/android/tpush/service/channel/b/i;->j()S

    move-result v3

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/tencent/android/tpush/service/channel/o;->a(Lcom/qq/taf/jce/JceStruct;ILcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V

    .line 993
    :goto_4b
    return-void

    .line 987
    :cond_4c
    const-string v0, "XGService"

    const-string v3, ">> remove timeoutRunnable"

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/h;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->g(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/h;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/channel/b;->i(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/n;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/l;

    .line 990
    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/h;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/channel/b;->h(Lcom/tencent/android/tpush/service/channel/b;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 991
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/h;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->i(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/n;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/qq/taf/jce/JceStruct;

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/h;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    invoke-virtual {v3}, Lcom/tencent/android/tpush/service/channel/b/i;->j()S

    move-result v3

    invoke-interface {v1, v0, v3, v4, v2}, Lcom/tencent/android/tpush/service/channel/o;->a(Lcom/qq/taf/jce/JceStruct;ILcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V

    goto :goto_4b
.end method
