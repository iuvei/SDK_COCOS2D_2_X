.class Lcom/baidu/bdgame/sdk/obf/ga$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/baidu/bdgame/sdk/obf/ij;

.field b:Lcom/baidu/bdgame/sdk/obf/ig;

.field c:Ljava/lang/String;

.field d:I

.field e:J

.field final synthetic f:Lcom/baidu/bdgame/sdk/obf/ga;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/ga;)V
    .registers 2

    .prologue
    .line 575
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ga$b;->f:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/ga;Lcom/baidu/bdgame/sdk/obf/ga$1;)V
    .registers 3

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ga$b;-><init>(Lcom/baidu/bdgame/sdk/obf/ga;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/ij;)Z
    .registers 4

    .prologue
    .line 584
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$b;->a:Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ij;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ij;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$b;->a:Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ij;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ij;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$b;->a:Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ij;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ij;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method
