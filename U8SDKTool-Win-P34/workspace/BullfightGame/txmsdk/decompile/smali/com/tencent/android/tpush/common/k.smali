.class public Lcom/tencent/android/tpush/common/k;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 40
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 41
    :cond_8
    const/4 v0, 0x0

    .line 45
    :goto_9
    return-object v0

    .line 43
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lcom/tencent/android/tpush/common/k;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 44
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1d

    move-result-object v0

    goto :goto_9

    .line 46
    :catch_1d
    move-exception v0

    .line 47
    throw v0
.end method

.method public static a(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    if-nez p0, :cond_5

    .line 27
    const-string v0, ""

    .line 33
    :goto_4
    return-object v0

    .line 29
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/common/k;->a([B)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_4

    .line 34
    :catch_1e
    move-exception v0

    .line 35
    throw v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 4

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_22

    .line 54
    aget-byte v2, p0, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 57
    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 6

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 62
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 64
    div-int/lit8 v3, v0, 0x2

    .line 65
    array-length v4, v1

    if-ge v3, v4, :cond_2d

    .line 66
    add-int/lit8 v2, v2, -0x61

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 67
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 68
    aget-byte v4, v1, v3

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 62
    :cond_2d
    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    .line 71
    :cond_30
    return-object v1
.end method
