.class public Lcom/tencent/msdk/tools/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static final digits:[C

.field static timeEnd:J

.field static timeStart:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x0

    .line 175
    sput-wide v0, Lcom/tencent/msdk/tools/CommonUtil;->timeStart:J

    .line 176
    sput-wide v0, Lcom/tencent/msdk/tools/CommonUtil;->timeEnd:J

    .line 246
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Lcom/tencent/msdk/tools/CommonUtil;->digits:[C

    return-void

    :array_10
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final arrayToString([B)Ljava/lang/String;
    .registers 5
    .param p0, "bytes"    # [B

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v0, "buff":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_24

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 64
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 4
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 277
    if-nez p0, :cond_4

    .line 278
    const/4 v1, 0x0

    .line 282
    :goto_3
    return-object v1

    .line 280
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 281
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 282
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_3
.end method

.method public static bytes2BinString([B)Ljava/lang/String;
    .registers 7
    .param p0, "_bytes"    # [B

    .prologue
    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_c

    array-length v5, p0

    if-gtz v5, :cond_13

    .line 137
    :cond_c
    const-string v5, "on CommonUtil.bytes2BinString _bytes is null !"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 138
    const/4 v5, 0x0

    .line 148
    :goto_12
    return-object v5

    .line 140
    :cond_13
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v5, p0

    if-ge v1, v5, :cond_35

    .line 141
    aget-byte v5, p0, v1

    and-int/lit16 v4, v5, 0xff

    .line 142
    .local v4, "v":I
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "hv":Ljava/lang/String;
    const/16 v2, 0x8

    .local v2, "j":I
    :goto_21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v2, v5, :cond_2f

    .line 144
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 146
    :cond_2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 148
    .end local v0    # "hv":Ljava/lang/String;
    .end local v2    # "j":I
    .end local v4    # "v":I
    :cond_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_12
.end method

.method public static bytes2HexStr([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .prologue
    .line 256
    if-eqz p0, :cond_5

    array-length v3, p0

    if-nez v3, :cond_7

    .line 257
    :cond_5
    const/4 v3, 0x0

    .line 267
    :goto_6
    return-object v3

    .line 260
    :cond_7
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [C

    .line 261
    .local v1, "buf":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_30

    .line 262
    aget-byte v0, p0, v2

    .line 263
    .local v0, "b":B
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/tencent/msdk/tools/CommonUtil;->digits:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 264
    ushr-int/lit8 v3, v0, 0x4

    int-to-byte v0, v3

    .line 265
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x0

    sget-object v4, Lcom/tencent/msdk/tools/CommonUtil;->digits:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 267
    .end local v0    # "b":B
    :cond_30
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_6
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .registers 7
    .param p0, "_bytes"    # [B

    .prologue
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_c

    array-length v4, p0

    if-gtz v4, :cond_13

    .line 76
    :cond_c
    const-string v4, "on CommonUtil.bytes2HexString _bytes is null !"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 77
    const/4 v4, 0x0

    .line 88
    :goto_12
    return-object v4

    .line 79
    :cond_13
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v4, p0

    if-ge v1, v4, :cond_34

    .line 80
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 81
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2e

    .line 84
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    :cond_2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 88
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12
.end method

.method public static calcUsedTime()J
    .registers 6

    .prologue
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/msdk/tools/CommonUtil;->timeEnd:J

    .line 182
    sget-wide v2, Lcom/tencent/msdk/tools/CommonUtil;->timeEnd:J

    sget-wide v4, Lcom/tencent/msdk/tools/CommonUtil;->timeStart:J

    sub-long v0, v2, v4

    .line 183
    .local v0, "usedTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useEdTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 184
    return-wide v0
.end method

.method public static char2Byte(C)B
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 97
    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-gt p0, v0, :cond_c

    .line 98
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 104
    :goto_b
    return v0

    .line 99
    :cond_c
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1a

    .line 100
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_b

    .line 101
    :cond_1a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_28

    const/16 v0, 0x46

    if-gt p0, v0, :cond_28

    .line 102
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_b

    .line 104
    :cond_28
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static ckIsEmpty(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 40
    :cond_1a
    const/4 v0, 0x1

    .line 42
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static varargs ckNonEmpty([Ljava/lang/String;)Z
    .registers 6
    .param p0, "argvs"    # [Ljava/lang/String;

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_12

    aget-object v0, v1, v2

    .line 47
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 48
    const/4 v4, 0x1

    .line 51
    .end local v0    # "arg":Ljava/lang/String;
    :goto_e
    return v4

    .line 46
    .restart local v0    # "arg":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 51
    .end local v0    # "arg":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v1, ""

    .line 204
    .local v1, "encoded":Ljava/lang/String;
    :try_start_2
    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_7} :catch_63

    move-result-object v1

    .line 207
    :goto_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 209
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5e

    .line 210
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 211
    .local v2, "focus":C
    const/16 v4, 0x2a

    if-ne v2, v4, :cond_28

    .line 212
    const-string v4, "%2A"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 213
    :cond_28
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_32

    .line 214
    const-string v4, "%20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_25

    .line 215
    :cond_32
    const/16 v4, 0x25

    if-ne v2, v4, :cond_5a

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5a

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_5a

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_5a

    .line 218
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    add-int/lit8 v3, v3, 0x2

    goto :goto_25

    .line 221
    :cond_5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_25

    .line 224
    .end local v2    # "focus":C
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 205
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :catch_63
    move-exception v4

    goto :goto_8
.end method

.method public static generateHttpBaseQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "lowerCase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public static generateQueryJson(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 195
    :cond_8
    const-string v1, ""

    .line 198
    :goto_a
    return-object v1

    .line 197
    :cond_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 198
    .local v0, "aJsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public static generateQueryString(Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_5

    .line 160
    const-string v4, ""

    .line 172
    :cond_4
    :goto_4
    return-object v4

    .line 161
    :cond_5
    const-string v4, ""

    .line 162
    .local v4, "aQueryParam":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 163
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 164
    .local v1, "aKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, "aKeyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, "aParamName":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/msdk/tools/CommonUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "aParamValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    goto :goto_15

    .line 170
    .end local v2    # "aParamName":Ljava/lang/String;
    .end local v3    # "aParamValue":Ljava/lang/String;
    :cond_4d
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method public static getNoQueryUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 293
    .local v1, "dest":Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 294
    .local v3, "sUrl":Ljava/net/URL;
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v4, v5, v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    .local v0, "dUrl":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1e} :catch_20

    move-result-object v1

    .line 299
    .end local v0    # "dUrl":Ljava/net/URL;
    .end local v3    # "sUrl":Ljava/net/URL;
    :goto_1f
    return-object v1

    .line 296
    :catch_20
    move-exception v2

    .line 297
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1f
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .registers 6
    .param p0, "len"    # I

    .prologue
    .line 308
    const-string v3, ""

    .line 309
    .local v3, "returnStr":Ljava/lang/String;
    new-array v0, p0, [C

    .line 310
    .local v0, "ch":[C
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 311
    .local v2, "rd":Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, p0, :cond_1a

    .line 312
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v0, v1

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 314
    :cond_1a
    new-instance v3, Ljava/lang/String;

    .end local v3    # "returnStr":Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 315
    .restart local v3    # "returnStr":Ljava/lang/String;
    return-object v3
.end method

.method public static hexStr2Bytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p0, :cond_a

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 116
    :cond_a
    const/4 v0, 0x0

    .line 125
    :cond_b
    return-object v0

    .line 119
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 120
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v4, v0

    if-ge v2, v4, :cond_b

    .line 121
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 122
    .local v1, "high":C
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 123
    .local v3, "low":C
    invoke-static {v1}, Lcom/tencent/msdk/tools/CommonUtil;->char2Byte(C)B

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    invoke-static {v3}, Lcom/tencent/msdk/tools/CommonUtil;->char2Byte(C)B

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method

.method public static strIsInList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .param p0, "srcStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 236
    if-nez p1, :cond_4

    .line 242
    :cond_3
    :goto_3
    return v2

    .line 238
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    .local v1, "strList":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 240
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public static testTimeBegain()V
    .registers 2

    .prologue
    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/msdk/tools/CommonUtil;->timeStart:J

    .line 179
    return-void
.end method
