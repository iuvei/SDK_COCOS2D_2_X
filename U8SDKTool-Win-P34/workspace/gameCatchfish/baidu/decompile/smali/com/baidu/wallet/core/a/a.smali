.class Lcom/baidu/wallet/core/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/baidu/wallet/core/a/b$b;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/a/b$b;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/wallet/core/a/a;->b:Lcom/baidu/wallet/core/a/b$b;

    iput-object p2, p0, Lcom/baidu/wallet/core/a/a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/wallet/core/a/a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Lcom/baidu/wallet/core/a/a;->b:Lcom/baidu/wallet/core/a/b$b;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/a/b$b;->a()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/baidu/wallet/core/a/a;->b:Lcom/baidu/wallet/core/a/b$b;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/a/b$b;->a()V

    throw v0
.end method
