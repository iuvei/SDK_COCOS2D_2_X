.class public final Lcom/tencent/msdk/pf/ZipShort;
.super Ljava/lang/Object;
.source "ZipShort.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/tencent/msdk/pf/ZipShort;->value:I

    .line 37
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/msdk/pf/ZipShort;-><init>([BI)V

    .line 16
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/msdk/pf/ZipShort;->value:I

    .line 26
    iget v0, p0, Lcom/tencent/msdk/pf/ZipShort;->value:I

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/msdk/pf/ZipShort;->value:I

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_7

    instance-of v1, p1, Lcom/tencent/msdk/pf/ZipShort;

    if-nez v1, :cond_8

    .line 51
    .end local p1    # "o":Ljava/lang/Object;
    :cond_7
    :goto_7
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_8
    iget v1, p0, Lcom/tencent/msdk/pf/ZipShort;->value:I

    check-cast p1, Lcom/tencent/msdk/pf/ZipShort;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/tencent/msdk/pf/ZipShort;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getBytes()[B
    .registers 5

    .prologue
    .line 61
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 62
    .local v0, "result":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/msdk/pf/ZipShort;->value:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 63
    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/msdk/pf/ZipShort;->value:I

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 64
    return-object v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/tencent/msdk/pf/ZipShort;->value:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/tencent/msdk/pf/ZipShort;->value:I

    return v0
.end method
