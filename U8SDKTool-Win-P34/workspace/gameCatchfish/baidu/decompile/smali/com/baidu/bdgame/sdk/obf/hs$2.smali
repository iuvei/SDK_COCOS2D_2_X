.class final Lcom/baidu/bdgame/sdk/obf/hs$2;
.super Lcom/baidu/bdgame/sdk/obf/hs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/hs;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 5

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/bdgame/sdk/obf/hs;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;Lcom/baidu/bdgame/sdk/obf/hs$1;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/iw;)V
    .registers 3

    .prologue
    .line 70
    const/high16 v0, 0x3f800000

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/iw;->a(F)V

    .line 71
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/iw;->d(I)V

    .line 72
    return-void
.end method
