.class public Lcom/tencent/msdk/tools/Res;
.super Ljava/lang/Object;
.source "Res.java"


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/tencent/msdk/tools/Res;->ctx:Landroid/content/Context;

    .line 9
    return-void
.end method

.method private reflectResouce(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 12
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object v2, p0, Lcom/tencent/msdk/tools/Res;->ctx:Landroid/content/Context;

    if-nez v2, :cond_f

    .line 13
    :cond_9
    const-string v2, "type || name null"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 21
    :goto_e
    return v1

    .line 17
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/tencent/msdk/tools/Res;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/tools/Res;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, p1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_20

    move-result v1

    goto :goto_e

    .line 18
    :catch_20
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    const-string v2, "getIdentifier exception"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_e
.end method


# virtual methods
.method public drawable(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "drawable"

    invoke-direct {p0, v0, p1}, Lcom/tencent/msdk/tools/Res;->reflectResouce(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public id(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/tencent/msdk/tools/Res;->reflectResouce(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public layout(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "layout"

    invoke-direct {p0, v0, p1}, Lcom/tencent/msdk/tools/Res;->reflectResouce(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public string(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "string"

    invoke-direct {p0, v0, p1}, Lcom/tencent/msdk/tools/Res;->reflectResouce(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public style(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "style"

    invoke-direct {p0, v0, p1}, Lcom/tencent/msdk/tools/Res;->reflectResouce(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
