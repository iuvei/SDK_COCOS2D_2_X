.class public Lcom/baidu/bdgame/sdk/obf/fr;
.super Lcom/baidu/bdgame/sdk/obf/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/fr$b;,
        Lcom/baidu/bdgame/sdk/obf/fr$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "YiBaoCashCard"


# instance fields
.field private l:Lcom/baidu/bdgame/sdk/obf/fz;

.field private m:Lcom/baidu/bdgame/sdk/obf/fw;

.field private n:Lcom/baidu/bdgame/sdk/obf/fu;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fr$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fr$b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/baidu/bdgame/sdk/obf/fs;

.field private r:Lcom/baidu/bdgame/sdk/obf/fs;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/baidu/bdgame/sdk/obf/ig;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    const-string v0, "YiBaoCashCard"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ek;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private a(IJ)I
    .registers 10

    .prologue
    const/16 v0, 0x3c

    .line 436
    .line 437
    if-nez p1, :cond_5

    .line 447
    :cond_4
    :goto_4
    return v0

    .line 440
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 441
    rsub-int/lit8 v2, p1, 0x3c

    if-gt v1, v2, :cond_4

    .line 444
    add-int v0, p1, v1

    goto :goto_4
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fr;Lcom/baidu/bdgame/sdk/obf/ig;)Lcom/baidu/bdgame/sdk/obf/ig;
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->t:Lcom/baidu/bdgame/sdk/obf/ig;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fr;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fr;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fr;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fr;Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;IJ)V
    .registers 6

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/baidu/bdgame/sdk/obf/fr;->b(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fr;Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fr;->b(Lcom/baidu/bdgame/sdk/obf/ij;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/fr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fw;->a(Ljava/util/List;)V

    .line 332
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fu;->a(Ljava/util/List;)V

    .line 333
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/fr;->l:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/fz;->k()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x32

    invoke-static {v5}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/fr;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_53

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/fr;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/bdgame/sdk/obf/fr$a;

    .line 256
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fr$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 257
    iget v5, v4, Lcom/baidu/bdgame/sdk/obf/fr$a;->g:I

    iget-wide v6, v4, Lcom/baidu/bdgame/sdk/obf/fr$a;->h:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/baidu/bdgame/sdk/obf/fr;->a(IJ)I

    move-result v5

    .line 258
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/bdgame/sdk/obf/fr;->q:Lcom/baidu/bdgame/sdk/obf/fs;

    iget-object v7, v4, Lcom/baidu/bdgame/sdk/obf/fr$a;->e:Lcom/baidu/bdgame/sdk/obf/ig;

    iget-object v4, v4, Lcom/baidu/bdgame/sdk/obf/fr$a;->f:Ljava/lang/String;

    invoke-virtual {v6, v7, v4, v5}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;I)V

    .line 305
    :cond_52
    :goto_52
    return-void

    .line 264
    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/fu;->N()V

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/fu;->k()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/bdgame/sdk/obf/fr;->h:Lcom/baidu/bdgame/sdk/obf/iz;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/bdgame/sdk/obf/fr;->f:Lcom/baidu/bdgame/sdk/obf/je;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bdgame/sdk/obf/fr;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bdgame/sdk/obf/fr;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/fr$4;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/baidu/bdgame/sdk/obf/fr$4;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v10

    move-object v6, v15

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v15, v4

    invoke-static/range {v5 .. v15}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v4

    .line 302
    if-nez v4, :cond_52

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/fu;->O()V

    goto :goto_52
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fr;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fr;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fr;Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fr;->a(Lcom/baidu/bdgame/sdk/obf/ij;)V

    return-void
.end method

.method private b(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;IJ)V
    .registers 10

    .prologue
    .line 317
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 318
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/fr$a;

    .line 319
    iget-object v2, v0, Lcom/baidu/bdgame/sdk/obf/fr$a;->e:Lcom/baidu/bdgame/sdk/obf/ig;

    if-ne v2, p1, :cond_e

    .line 320
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/fr$a;->f:Ljava/lang/String;

    .line 321
    iput p3, v0, Lcom/baidu/bdgame/sdk/obf/fr$a;->g:I

    .line 322
    iput-wide p4, v0, Lcom/baidu/bdgame/sdk/obf/fr$a;->h:J

    .line 327
    :cond_24
    return-void
.end method

.method private b(Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 5

    .prologue
    .line 342
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fu;->N()V

    .line 343
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fu;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/fr$5;

    invoke-direct {v2, p0, p1}, Lcom/baidu/bdgame/sdk/obf/fr$5;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;Lcom/baidu/bdgame/sdk/obf/ij;)V

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/ij;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 359
    if-nez v0, :cond_26

    .line 360
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fu;->O()V

    .line 361
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fu;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 363
    :cond_26
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/fr;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->m()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/fr;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fr;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/fr;Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fr;->d(Lcom/baidu/bdgame/sdk/obf/ij;)V

    return-void
.end method

.method private c(Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 5

    .prologue
    .line 412
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fw;->N()V

    .line 413
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fw;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/fr$8;

    invoke-direct {v2, p0, p1}, Lcom/baidu/bdgame/sdk/obf/fr$8;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;Lcom/baidu/bdgame/sdk/obf/ij;)V

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/ij;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 429
    if-nez v0, :cond_26

    .line 430
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fw;->O()V

    .line 431
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fu;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 433
    :cond_26
    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/fr;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fr;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/fr;Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fr;->c(Lcom/baidu/bdgame/sdk/obf/ij;)V

    return-void
.end method

.method private d(Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 10

    .prologue
    .line 455
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->l:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fz;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 457
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_41

    .line 458
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/fr$b;

    .line 459
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fr$b;->a(Lcom/baidu/bdgame/sdk/obf/ij;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 460
    iget v1, v0, Lcom/baidu/bdgame/sdk/obf/fr$b;->d:I

    iget-wide v2, v0, Lcom/baidu/bdgame/sdk/obf/fr$b;->e:J

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fr;->a(IJ)I

    move-result v1

    .line 461
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fr;->r:Lcom/baidu/bdgame/sdk/obf/fs;

    iget-object v3, v0, Lcom/baidu/bdgame/sdk/obf/fr$b;->b:Lcom/baidu/bdgame/sdk/obf/ig;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/fr$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;I)V

    .line 508
    :cond_40
    :goto_40
    return-void

    .line 468
    :cond_41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fw;->N()V

    .line 469
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fw;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fr;->h:Lcom/baidu/bdgame/sdk/obf/iz;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fr;->f:Lcom/baidu/bdgame/sdk/obf/je;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/fr;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    iget-object v6, p0, Lcom/baidu/bdgame/sdk/obf/fr;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v7, Lcom/baidu/bdgame/sdk/obf/fr$9;

    invoke-direct {v7, p0, p1}, Lcom/baidu/bdgame/sdk/obf/fr$9;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;Lcom/baidu/bdgame/sdk/obf/ij;)V

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/ij;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 504
    if-nez v0, :cond_40

    .line 505
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fw;->O()V

    .line 506
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fu;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    goto :goto_40
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/fr;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->n()V

    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/fw;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/fr;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->p()V

    return-void
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/fu;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    return-object v0
.end method

.method private i()V
    .registers 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->e()V

    .line 75
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->m()V

    .line 76
    return-void
.end method

.method private j()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->k()V

    .line 83
    return-void
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/fr;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->o()V

    return-void
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/fr;)Ljava/util/List;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->o:Ljava/util/List;

    return-object v0
.end method

.method private k()V
    .registers 7

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->l:Lcom/baidu/bdgame/sdk/obf/fz;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fr$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fr$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fz;->a(Lcom/baidu/bdgame/sdk/obf/ee;)V

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->l:Lcom/baidu/bdgame/sdk/obf/fz;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fz;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->l:Lcom/baidu/bdgame/sdk/obf/fz;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dm;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/fz;->a(Ljava/util/List;JJ)V

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->l:Lcom/baidu/bdgame/sdk/obf/fz;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/fs;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->q:Lcom/baidu/bdgame/sdk/obf/fs;

    return-object v0
.end method

.method private l()V
    .registers 3

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->p:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fw;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fw;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fr$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fr$10;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fw;->a(Lcom/baidu/bdgame/sdk/obf/fw$a;)V

    .line 128
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fs;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    invoke-direct {v0, v1, p0}, Lcom/baidu/bdgame/sdk/obf/fs;-><init>(Lcom/baidu/bdgame/sdk/obf/it;Lcom/baidu/bdgame/sdk/obf/fr;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->r:Lcom/baidu/bdgame/sdk/obf/fs;

    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->r:Lcom/baidu/bdgame/sdk/obf/fs;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fr$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fr$11;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/gp;)V

    .line 141
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->r:Lcom/baidu/bdgame/sdk/obf/fs;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fr;->a(Lcom/baidu/bdgame/sdk/obf/fs;)V

    .line 144
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fu;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fu;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    .line 146
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/gj;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/fu;->a(Lcom/baidu/bdgame/sdk/obf/gj;)V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->o:Ljava/util/List;

    .line 148
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fs;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-direct {v0, v1, p0}, Lcom/baidu/bdgame/sdk/obf/fs;-><init>(Lcom/baidu/bdgame/sdk/obf/it;Lcom/baidu/bdgame/sdk/obf/fr;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->q:Lcom/baidu/bdgame/sdk/obf/fs;

    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->q:Lcom/baidu/bdgame/sdk/obf/fs;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fr;->a(Lcom/baidu/bdgame/sdk/obf/fs;)V

    .line 150
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->q:Lcom/baidu/bdgame/sdk/obf/fs;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fr$12;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fr$12;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/gp;)V

    .line 160
    return-void
.end method

.method static synthetic m(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/ig;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->t:Lcom/baidu/bdgame/sdk/obf/ig;

    return-object v0
.end method

.method private m()V
    .registers 4

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->l()V

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fw;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_yibao_cash_card_query_card_info"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fw;->f(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/fr$13;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/fr$13;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 204
    if-nez v0, :cond_3e

    .line 205
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fw;->O()V

    .line 206
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fw;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 208
    :cond_3e
    return-void
.end method

.method static synthetic n(Lcom/baidu/bdgame/sdk/obf/fr;)Ljava/util/List;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->p:Ljava/util/List;

    return-object v0
.end method

.method private n()V
    .registers 5

    .prologue
    .line 214
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fr$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fr$2;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fu;->a(Lcom/baidu/bdgame/sdk/obf/gk;)V

    .line 223
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fr$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fr$3;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fu;->a(Lcom/baidu/bdgame/sdk/obf/gm;)V

    .line 231
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fu;->a(Ljava/util/List;)V

    .line 233
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->d()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 234
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/fr;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fu;->a(J)V

    .line 238
    :goto_28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fu;->b(J)V

    .line 239
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 240
    return-void

    .line 236
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fu;->a(J)V

    goto :goto_28
.end method

.method static synthetic o(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/fs;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->r:Lcom/baidu/bdgame/sdk/obf/fs;

    return-object v0
.end method

.method private o()V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->n:Lcom/baidu/bdgame/sdk/obf/fu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fu;->b(Z)V

    .line 245
    return-void
.end method

.method private p()V
    .registers 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fr$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fr$6;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fw;->a(Lcom/baidu/bdgame/sdk/obf/gl;)V

    .line 382
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fr$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fr$7;-><init>(Lcom/baidu/bdgame/sdk/obf/fr;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fw;->a(Lcom/baidu/bdgame/sdk/obf/gm;)V

    .line 390
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fw;->a(Ljava/util/List;)V

    .line 396
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->d()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 397
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/fr;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fw;->a(J)V

    .line 401
    :goto_28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fw;->b(J)V

    .line 402
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 403
    return-void

    .line 399
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->m:Lcom/baidu/bdgame/sdk/obf/fw;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fw;->a(J)V

    goto :goto_28
.end method


# virtual methods
.method protected a(I)Lcom/baidu/bdgame/sdk/obf/jn;
    .registers 3

    .prologue
    .line 539
    if-nez p1, :cond_5

    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->a:Lcom/baidu/bdgame/sdk/obf/jn;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_4
.end method

.method public a()V
    .registers 3

    .prologue
    .line 60
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fz;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fz;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->l:Lcom/baidu/bdgame/sdk/obf/fz;

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->l:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fz;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x31

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 64
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->i()V

    .line 68
    :goto_23
    return-void

    .line 66
    :cond_24
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fr;->j()V

    goto :goto_23
.end method

.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->t:Lcom/baidu/bdgame/sdk/obf/ig;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fr;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void

    .line 511
    :cond_a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->t:Lcom/baidu/bdgame/sdk/obf/ig;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ig;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/fs;)V
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/dm;)V

    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->h:Lcom/baidu/bdgame/sdk/obf/iz;

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 167
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->f:Lcom/baidu/bdgame/sdk/obf/je;

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 169
    return-void
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;IJ)V
    .registers 10

    .prologue
    .line 526
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 527
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/fr$b;

    .line 528
    iget-object v2, v0, Lcom/baidu/bdgame/sdk/obf/fr$b;->b:Lcom/baidu/bdgame/sdk/obf/ig;

    if-ne v2, p1, :cond_e

    .line 529
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/fr$b;->c:Ljava/lang/String;

    .line 530
    iput p3, v0, Lcom/baidu/bdgame/sdk/obf/fr$b;->d:I

    .line 531
    iput-wide p4, v0, Lcom/baidu/bdgame/sdk/obf/fr$b;->e:J

    .line 536
    :cond_24
    return-void
.end method
