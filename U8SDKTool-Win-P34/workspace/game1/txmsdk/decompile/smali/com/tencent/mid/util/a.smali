.class public Lcom/tencent/mid/util/a;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/tencent/mid/util/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tencent/mid/util/a;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)[B
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/mid/util/a;->a([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BIII)[B
    .registers 8

    const/4 v3, 0x0

    new-instance v1, Lcom/tencent/mid/util/c;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v1, p3, v0}, Lcom/tencent/mid/util/c;-><init>(I[B)V

    const/4 v0, 0x1

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/tencent/mid/util/c;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget v0, v1, Lcom/tencent/mid/util/c;->b:I

    iget-object v2, v1, Lcom/tencent/mid/util/c;->a:[B

    array-length v2, v2

    if-ne v0, v2, :cond_25

    iget-object v0, v1, Lcom/tencent/mid/util/c;->a:[B

    :goto_24
    return-object v0

    :cond_25
    iget v0, v1, Lcom/tencent/mid/util/c;->b:I

    new-array v0, v0, [B

    iget-object v2, v1, Lcom/tencent/mid/util/c;->a:[B

    iget v1, v1, Lcom/tencent/mid/util/c;->b:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24
.end method

.method public static b([BI)[B
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/mid/util/a;->b([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([BIII)[B
    .registers 9

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mid/util/d;

    const/4 v0, 0x0

    invoke-direct {v3, p3, v0}, Lcom/tencent/mid/util/d;-><init>(I[B)V

    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    iget-boolean v1, v3, Lcom/tencent/mid/util/d;->d:Z

    if-eqz v1, :cond_3d

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_15

    add-int/lit8 v0, v0, 0x4

    :cond_15
    :goto_15
    :pswitch_15
    iget-boolean v1, v3, Lcom/tencent/mid/util/d;->e:Z

    if-eqz v1, :cond_28

    if-lez p2, :cond_28

    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v4, v1, 0x1

    iget-boolean v1, v3, Lcom/tencent/mid/util/d;->f:Z

    if-eqz v1, :cond_49

    const/4 v1, 0x2

    :goto_26
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    :cond_28
    new-array v1, v0, [B

    iput-object v1, v3, Lcom/tencent/mid/util/d;->a:[B

    invoke-virtual {v3, p0, p1, p2, v2}, Lcom/tencent/mid/util/d;->a([BIIZ)Z

    sget-boolean v1, Lcom/tencent/mid/util/a;->a:Z

    if-nez v1, :cond_4b

    iget v1, v3, Lcom/tencent/mid/util/d;->b:I

    if-eq v1, v0, :cond_4b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3d
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_4e

    goto :goto_15

    :pswitch_43
    add-int/lit8 v0, v0, 0x2

    goto :goto_15

    :pswitch_46
    add-int/lit8 v0, v0, 0x3

    goto :goto_15

    :cond_49
    move v1, v2

    goto :goto_26

    :cond_4b
    iget-object v0, v3, Lcom/tencent/mid/util/d;->a:[B

    return-object v0

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_43
        :pswitch_46
    .end packed-switch
.end method
