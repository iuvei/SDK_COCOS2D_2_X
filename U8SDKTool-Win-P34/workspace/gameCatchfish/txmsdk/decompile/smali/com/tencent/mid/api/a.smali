.class final Lcom/tencent/mid/api/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mid/api/MidCallback;


# instance fields
.field final synthetic a:Lcom/tencent/mid/api/MidCallback;


# direct methods
.method constructor <init>(Lcom/tencent/mid/api/MidCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mid/api/a;->a:Lcom/tencent/mid/api/MidCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 6

    const-string v0, "MID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get mid, errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/mid/api/a;->a:Lcom/tencent/mid/api/MidCallback;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/api/MidEntity;->parse(Ljava/lang/String;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success to get mid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mid/util/Util;->logInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mid/api/a;->a:Lcom/tencent/mid/api/MidCallback;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method
