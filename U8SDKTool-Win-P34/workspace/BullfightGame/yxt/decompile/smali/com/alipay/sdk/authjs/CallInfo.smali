.class public Lcom/alipay/sdk/authjs/CallInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/authjs/CallInfo$1;,
        Lcom/alipay/sdk/authjs/CallInfo$CallError;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "CallInfo"

.field public static final b:Ljava/lang/String; = "call"

.field public static final c:Ljava/lang/String; = "callback"

.field public static final d:Ljava/lang/String; = "bundleName"

.field public static final e:Ljava/lang/String; = "clientId"

.field public static final f:Ljava/lang/String; = "param"

.field public static final g:Ljava/lang/String; = "func"

.field public static final h:Ljava/lang/String; = "msgType"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lorg/json/JSONObject;

.field private n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/authjs/CallInfo;->n:Z

    .line 69
    invoke-virtual {p0, p1}, Lcom/alipay/sdk/authjs/CallInfo;->d(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static final a(Lcom/alipay/sdk/authjs/CallInfo$CallError;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    .line 30
    sget-object v0, Lcom/alipay/sdk/authjs/CallInfo$1;->a:[I

    invoke-virtual {p0}, Lcom/alipay/sdk/authjs/CallInfo$CallError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 41
    const-string v0, "none"

    .line 45
    :goto_d
    return-object v0

    .line 32
    :pswitch_e
    const-string v0, "function not found"

    goto :goto_d

    .line 35
    :pswitch_11
    const-string v0, "invalid parameter"

    goto :goto_d

    .line 38
    :pswitch_14
    const-string v0, "runtime error"

    goto :goto_d

    .line 30
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/sdk/authjs/CallInfo;->i:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alipay/sdk/authjs/CallInfo;->m:Lorg/json/JSONObject;

    .line 110
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/alipay/sdk/authjs/CallInfo;->n:Z

    .line 66
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/sdk/authjs/CallInfo;->n:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/sdk/authjs/CallInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alipay/sdk/authjs/CallInfo;->j:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/sdk/authjs/CallInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/sdk/authjs/CallInfo;->k:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/sdk/authjs/CallInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/sdk/authjs/CallInfo;->l:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/sdk/authjs/CallInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/sdk/authjs/CallInfo;->m:Lorg/json/JSONObject;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 114
    const-string v1, "clientId"

    iget-object v2, p0, Lcom/alipay/sdk/authjs/CallInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v1, "func"

    iget-object v2, p0, Lcom/alipay/sdk/authjs/CallInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v1, "param"

    iget-object v2, p0, Lcom/alipay/sdk/authjs/CallInfo;->m:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v1, "msgType"

    iget-object v2, p0, Lcom/alipay/sdk/authjs/CallInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
