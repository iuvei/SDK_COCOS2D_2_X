.class Lcom/tencent/stat/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/tencent/stat/a;


# direct methods
.method constructor <init>(Lcom/tencent/stat/a;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/stat/b;->a:Lcom/tencent/stat/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/stat/b;->a:Lcom/tencent/stat/a;

    invoke-static {v0}, Lcom/tencent/stat/a;->a(Lcom/tencent/stat/a;)Lcom/tencent/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/stat/b;->a:Lcom/tencent/stat/a;

    invoke-static {v0}, Lcom/tencent/stat/a;->a(Lcom/tencent/stat/a;)Lcom/tencent/stat/common/e;

    move-result-object v0

    new-instance v1, Lcom/tencent/stat/c;

    invoke-direct {v1, p0}, Lcom/tencent/stat/c;-><init>(Lcom/tencent/stat/b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method
