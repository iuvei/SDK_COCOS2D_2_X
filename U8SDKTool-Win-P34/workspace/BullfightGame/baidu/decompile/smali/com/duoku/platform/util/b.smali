.class public Lcom/duoku/platform/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/util/b$a;,
        Lcom/duoku/platform/util/b$b;,
        Lcom/duoku/platform/util/b$c;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/duoku/platform/util/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/duoku/platform/util/b;->a:Z

    .line 67
    return-void

    .line 29
    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)[B
    .registers 3

    .prologue
    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/duoku/platform/util/b;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)[B
    .registers 4

    .prologue
    .line 138
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/duoku/platform/util/b;->a([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BIII)[B
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 160
    new-instance v1, Lcom/duoku/platform/util/b$b;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v1, p3, v0}, Lcom/duoku/platform/util/b$b;-><init>(I[B)V

    .line 162
    const/4 v0, 0x1

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/duoku/platform/util/b$b;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1b
    iget v0, v1, Lcom/duoku/platform/util/b$b;->b:I

    iget-object v2, v1, Lcom/duoku/platform/util/b$b;->a:[B

    array-length v2, v2

    if-ne v0, v2, :cond_25

    .line 168
    iget-object v0, v1, Lcom/duoku/platform/util/b$b;->a:[B

    .line 175
    :goto_24
    return-object v0

    .line 173
    :cond_25
    iget v0, v1, Lcom/duoku/platform/util/b$b;->b:I

    new-array v0, v0, [B

    .line 174
    iget-object v2, v1, Lcom/duoku/platform/util/b$b;->a:[B

    iget v1, v1, Lcom/duoku/platform/util/b$b;->b:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24
.end method

.method public static b([BI)[B
    .registers 4

    .prologue
    .line 496
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/duoku/platform/util/b;->b([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([BIII)[B
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 512
    new-instance v3, Lcom/duoku/platform/util/b$c;

    const/4 v0, 0x0

    invoke-direct {v3, p3, v0}, Lcom/duoku/platform/util/b$c;-><init>(I[B)V

    .line 515
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 518
    iget-boolean v1, v3, Lcom/duoku/platform/util/b$c;->d:Z

    if-eqz v1, :cond_3d

    .line 519
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_15

    .line 520
    add-int/lit8 v0, v0, 0x4

    .line 531
    :cond_15
    :goto_15
    :pswitch_15
    iget-boolean v1, v3, Lcom/duoku/platform/util/b$c;->e:Z

    if-eqz v1, :cond_28

    if-lez p2, :cond_28

    .line 532
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v4, v1, 0x1

    .line 533
    iget-boolean v1, v3, Lcom/duoku/platform/util/b$c;->f:Z

    if-eqz v1, :cond_49

    const/4 v1, 0x2

    :goto_26
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 536
    :cond_28
    new-array v1, v0, [B

    iput-object v1, v3, Lcom/duoku/platform/util/b$c;->a:[B

    .line 537
    invoke-virtual {v3, p0, p1, p2, v2}, Lcom/duoku/platform/util/b$c;->a([BIIZ)Z

    .line 539
    sget-boolean v1, Lcom/duoku/platform/util/b;->a:Z

    if-nez v1, :cond_4b

    iget v1, v3, Lcom/duoku/platform/util/b$c;->b:I

    if-eq v1, v0, :cond_4b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 523
    :cond_3d
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_4e

    goto :goto_15

    .line 525
    :pswitch_43
    add-int/lit8 v0, v0, 0x2

    goto :goto_15

    .line 526
    :pswitch_46
    add-int/lit8 v0, v0, 0x3

    goto :goto_15

    :cond_49
    move v1, v2

    .line 533
    goto :goto_26

    .line 541
    :cond_4b
    iget-object v0, v3, Lcom/duoku/platform/util/b$c;->a:[B

    return-object v0

    .line 523
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_43
        :pswitch_46
    .end packed-switch
.end method
