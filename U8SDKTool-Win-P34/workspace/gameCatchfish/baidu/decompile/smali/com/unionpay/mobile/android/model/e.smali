.class public final Lcom/unionpay/mobile/android/model/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/model/d;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/e;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/model/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_10

    check-cast v0, Lorg/json/JSONObject;

    :goto_f
    return-object v0

    :cond_10
    move-object v0, v1

    goto :goto_f
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/model/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
