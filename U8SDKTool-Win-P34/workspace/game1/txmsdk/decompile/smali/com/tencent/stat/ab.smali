.class final Lcom/tencent/stat/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/stat/StatSpecifyReportedInfo;

.field final synthetic c:Lcom/tencent/stat/a/c;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;Lcom/tencent/stat/a/c;I)V
    .registers 5

    iput-object p1, p0, Lcom/tencent/stat/ab;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/stat/ab;->b:Lcom/tencent/stat/StatSpecifyReportedInfo;

    iput-object p3, p0, Lcom/tencent/stat/ab;->c:Lcom/tencent/stat/a/c;

    iput p4, p0, Lcom/tencent/stat/ab;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    new-instance v2, Lcom/tencent/stat/a/b;

    iget-object v0, p0, Lcom/tencent/stat/ab;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/stat/ab;->a:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/stat/ab;->b:Lcom/tencent/stat/StatSpecifyReportedInfo;

    invoke-static {v1, v3, v4}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/stat/StatSpecifyReportedInfo;)I

    move-result v1

    iget-object v3, p0, Lcom/tencent/stat/ab;->c:Lcom/tencent/stat/a/c;

    iget-object v3, v3, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/stat/ab;->b:Lcom/tencent/stat/StatSpecifyReportedInfo;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/tencent/stat/a/b;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v2}, Lcom/tencent/stat/a/b;->b()Lcom/tencent/stat/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/stat/ab;->c:Lcom/tencent/stat/a/c;

    iget-object v1, v1, Lcom/tencent/stat/a/c;->c:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/tencent/stat/a/c;->c:Lorg/json/JSONObject;

    iget v0, p0, Lcom/tencent/stat/ab;->d:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_47

    const-wide/16 v0, 0x1

    :goto_33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/tencent/stat/a/b;->a(J)V

    new-instance v0, Lcom/tencent/stat/aq;

    invoke-direct {v0, v2}, Lcom/tencent/stat/aq;-><init>(Lcom/tencent/stat/a/e;)V

    invoke-virtual {v0}, Lcom/tencent/stat/aq;->a()V

    :goto_46
    return-void

    :cond_47
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4a} :catch_4c

    move-result-wide v0

    goto :goto_33

    :catch_4c
    move-exception v0

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->f()Lcom/tencent/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/stat/ab;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_46
.end method