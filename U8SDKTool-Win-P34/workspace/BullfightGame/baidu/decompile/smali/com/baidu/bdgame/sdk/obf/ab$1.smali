.class final Lcom/baidu/bdgame/sdk/obf/ab$1;
.super Lcom/baidu/bdgame/sdk/obf/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 31
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/ab$1;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/bdgame/sdk/obf/ab$1;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/bdgame/sdk/obf/ab;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;Lcom/baidu/bdgame/sdk/obf/ab$1;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    const-string v1, "UserName"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ab$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v1, "Password"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ab$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    return-object v0
.end method
