.class public Lcom/tencent/tmassistantbase/util/Res;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected final RclassName:Ljava/lang/String;

.field protected ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/tencent/tmassistantbase/util/Res;->ctx:Landroid/content/Context;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tmassistantbase/util/Res;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/util/Res;->RclassName:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private reflectResouce(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/Res;->RclassName:Ljava/lang/String;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_a

    .line 18
    :cond_8
    const/4 v0, 0x0

    .line 28
    :goto_9
    return v0

    .line 21
    :cond_a
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tmassistantbase/util/Res;->RclassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3a} :catch_3c

    move-result v0

    goto :goto_9

    .line 25
    :catch_3c
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    const/4 v0, -0x1

    goto :goto_9
.end method


# virtual methods
.method public drawable(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 37
    const-string v0, "drawable"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tmassistantbase/util/Res;->reflectResouce(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public id(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 45
    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tmassistantbase/util/Res;->reflectResouce(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public layout(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 41
    const-string v0, "layout"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tmassistantbase/util/Res;->reflectResouce(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public string(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 33
    const-string v0, "string"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tmassistantbase/util/Res;->reflectResouce(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public style(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 49
    const-string v0, "style"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tmassistantbase/util/Res;->reflectResouce(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
