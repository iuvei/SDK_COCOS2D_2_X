.class public Lcom/baidu/bdgame/sdk/obf/fe;
.super Lcom/baidu/bdgame/sdk/obf/ei;
.source "SourceFile"


# instance fields
.field private k:Lcom/baidu/bdgame/sdk/obf/fg;

.field private l:Lcom/baidu/bdgame/sdk/obf/il;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ei;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fe;)Lcom/baidu/bdgame/sdk/obf/fg;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fe;Lcom/baidu/bdgame/sdk/obf/il;)Lcom/baidu/bdgame/sdk/obf/il;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fe;->l:Lcom/baidu/bdgame/sdk/obf/il;

    return-object p1
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/dm;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, p4, p5}, Lcom/baidu/bdgame/sdk/obf/jd;->a(J)V

    .line 78
    :cond_d
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fe;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, p4, p5}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->N()V

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fe;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fe;->h:Lcom/baidu/bdgame/sdk/obf/iz;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fe;->f:Lcom/baidu/bdgame/sdk/obf/je;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fe;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/fe;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v8, Lcom/baidu/bdgame/sdk/obf/fe$2;

    invoke-direct {v8, p0}, Lcom/baidu/bdgame/sdk/obf/fe$2;-><init>(Lcom/baidu/bdgame/sdk/obf/fe;)V

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 107
    if-nez v0, :cond_4c

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->O()V

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 112
    :cond_4c
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fe;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fe;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fe;Lcom/baidu/bdgame/sdk/obf/dm;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/baidu/bdgame/sdk/obf/fe;->a(Lcom/baidu/bdgame/sdk/obf/dm;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fe;)Lcom/baidu/bdgame/sdk/obf/il;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->l:Lcom/baidu/bdgame/sdk/obf/il;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fe;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fe;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .registers 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fe$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fe$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fe;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fg;->a(Lcom/baidu/bdgame/sdk/obf/fh;)V

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fe;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fg;->b(Z)V

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 59
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fe;->d()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/fe;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fg;->a(J)V

    .line 68
    :goto_2a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fe;->e:Lcom/baidu/bdgame/sdk/obf/dp;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fe;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/fg;->a(Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 71
    return-void

    .line 62
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fe;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fg;->a(J)V

    goto :goto_2a

    .line 66
    :cond_48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fg;->a(J)V

    goto :goto_2a
.end method


# virtual methods
.method protected a(I)Lcom/baidu/bdgame/sdk/obf/jn;
    .registers 3

    .prologue
    .line 116
    if-nez p1, :cond_5

    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_4
.end method

.method public a()V
    .registers 3

    .prologue
    .line 34
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fe;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fg;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe;->k:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 37
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fe;->i()V

    .line 38
    return-void
.end method
