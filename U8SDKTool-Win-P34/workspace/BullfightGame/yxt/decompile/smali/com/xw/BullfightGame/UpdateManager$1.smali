.class Lcom/xw/BullfightGame/UpdateManager$1;
.super Landroid/os/Handler;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xw/BullfightGame/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xw/BullfightGame/UpdateManager;


# direct methods
.method constructor <init>(Lcom/xw/BullfightGame/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xw/BullfightGame/UpdateManager$1;->this$0:Lcom/xw/BullfightGame/UpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xw/BullfightGame/UpdateManager$1;->this$0:Lcom/xw/BullfightGame/UpdateManager;

    # getter for: Lcom/xw/BullfightGame/UpdateManager;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/xw/BullfightGame/UpdateManager;->access$0(Lcom/xw/BullfightGame/UpdateManager;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/xw/BullfightGame/UpdateManager$1;->this$0:Lcom/xw/BullfightGame/UpdateManager;

    # getter for: Lcom/xw/BullfightGame/UpdateManager;->progress:I
    invoke-static {v1}, Lcom/xw/BullfightGame/UpdateManager;->access$1(Lcom/xw/BullfightGame/UpdateManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/xw/BullfightGame/UpdateManager$1;->this$0:Lcom/xw/BullfightGame/UpdateManager;

    # getter for: Lcom/xw/BullfightGame/UpdateManager;->updateProgressBar:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/xw/BullfightGame/UpdateManager;->access$2(Lcom/xw/BullfightGame/UpdateManager;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xw/BullfightGame/UpdateManager$1;->this$0:Lcom/xw/BullfightGame/UpdateManager;

    # getter for: Lcom/xw/BullfightGame/UpdateManager;->progress:I
    invoke-static {v2}, Lcom/xw/BullfightGame/UpdateManager;->access$1(Lcom/xw/BullfightGame/UpdateManager;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xw/BullfightGame/UpdateManager$1;->this$0:Lcom/xw/BullfightGame/UpdateManager;

    # invokes: Lcom/xw/BullfightGame/UpdateManager;->restart()V
    invoke-static {v0}, Lcom/xw/BullfightGame/UpdateManager;->access$3(Lcom/xw/BullfightGame/UpdateManager;)V

    iget-object v0, p0, Lcom/xw/BullfightGame/UpdateManager$1;->this$0:Lcom/xw/BullfightGame/UpdateManager;

    # invokes: Lcom/xw/BullfightGame/UpdateManager;->installApk()V
    invoke-static {v0}, Lcom/xw/BullfightGame/UpdateManager;->access$4(Lcom/xw/BullfightGame/UpdateManager;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xw/BullfightGame/UpdateManager$1;->this$0:Lcom/xw/BullfightGame/UpdateManager;

    # invokes: Lcom/xw/BullfightGame/UpdateManager;->restart()V
    invoke-static {v0}, Lcom/xw/BullfightGame/UpdateManager;->access$3(Lcom/xw/BullfightGame/UpdateManager;)V

    iget-object v0, p0, Lcom/xw/BullfightGame/UpdateManager$1;->this$0:Lcom/xw/BullfightGame/UpdateManager;

    # invokes: Lcom/xw/BullfightGame/UpdateManager;->showFail()V
    invoke-static {v0}, Lcom/xw/BullfightGame/UpdateManager;->access$5(Lcom/xw/BullfightGame/UpdateManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
