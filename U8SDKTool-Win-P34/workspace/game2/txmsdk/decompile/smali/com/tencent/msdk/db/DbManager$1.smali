.class final Lcom/tencent/msdk/db/DbManager$1;
.super Lcom/tencent/msdk/Singleton;
.source "DbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/db/DbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/msdk/Singleton",
        "<",
        "Lcom/tencent/msdk/db/DbManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tencent/msdk/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/tencent/msdk/db/DbManager;
    .registers 4

    .prologue
    .line 22
    new-instance v0, Lcom/tencent/msdk/db/DbManager;

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/db/DbManager;-><init>(Landroid/content/Context;Lcom/tencent/msdk/db/DbManager$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/tencent/msdk/db/DbManager$1;->create()Lcom/tencent/msdk/db/DbManager;

    move-result-object v0

    return-object v0
.end method
