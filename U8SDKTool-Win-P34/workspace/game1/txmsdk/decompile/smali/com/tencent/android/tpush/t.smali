.class final Lcom/tencent/android/tpush/t;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/XGIOperateCallback;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 2

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/tencent/android/tpush/t;->a:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    .line 1202
    invoke-static {p1, p0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 1204
    :try_start_3
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v6

    new-instance v0, Lcom/tencent/android/tpush/ac;

    iget-object v1, p0, Lcom/tencent/android/tpush/t;->a:Lcom/tencent/android/tpush/XGIOperateCallback;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/android/tpush/ac;-><init>(Lcom/tencent/android/tpush/XGIOperateCallback;Landroid/content/Context;Landroid/content/Intent;II)V

    invoke-virtual {v6, v0}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    .line 1211
    :goto_15
    return-void

    .line 1208
    :catch_16
    move-exception v0

    goto :goto_15
.end method
