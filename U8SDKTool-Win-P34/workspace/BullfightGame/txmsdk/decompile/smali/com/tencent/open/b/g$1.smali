.class Lcom/tencent/open/b/g$1;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/g;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tencent/open/b/g$1;->a:Lcom/tencent/open/b/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 136
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 137
    return-void

    .line 128
    :pswitch_9
    iget-object v0, p0, Lcom/tencent/open/b/g$1;->a:Lcom/tencent/open/b/g;

    invoke-virtual {v0}, Lcom/tencent/open/b/g;->b()V

    goto :goto_5

    .line 131
    :pswitch_f
    iget-object v0, p0, Lcom/tencent/open/b/g$1;->a:Lcom/tencent/open/b/g;

    invoke-virtual {v0}, Lcom/tencent/open/b/g;->e()V

    goto :goto_5

    .line 126
    nop

    :pswitch_data_16
    .packed-switch 0x3e8
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method
