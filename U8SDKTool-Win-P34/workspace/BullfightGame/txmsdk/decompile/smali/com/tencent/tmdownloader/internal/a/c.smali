.class public Lcom/tencent/tmdownloader/internal/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/tencent/tmdownloader/internal/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmdownloader/internal/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 63
    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 69
    :try_start_19
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3d

    .line 72
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v3, "+"

    const-string v4, "%20"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3c} :catch_3e

    move-result-object v0

    .line 83
    :cond_3d
    :goto_3d
    return-object v0

    .line 77
    :catch_3e
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    sget-object v2, Lcom/tencent/tmdownloader/internal/a/c;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 211
    invoke-static {p0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->calcMD5AsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_16
    const-string v1, ""

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 219
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 220
    const-string v1, ".apk"

    .line 229
    :cond_28
    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_3a
    const-string v2, "application/tm.android.apkdiff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 222
    const-string v1, ".diff"

    goto :goto_28

    .line 223
    :cond_45
    const-string v2, "resource/tm.android.unknown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 224
    const-string v1, ".other"

    goto :goto_28
.end method

.method public static a(Ljava/lang/String;J)Z
    .registers 14

    .prologue
    const-wide/32 v8, 0x6400000

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 344
    const-wide/16 v2, -0x1

    .line 345
    invoke-static {p0}, Lcom/tencent/tmdownloader/internal/a/c;->h(Ljava/lang/String;)I

    move-result v4

    .line 346
    if-ne v4, v0, :cond_1f

    .line 348
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->d()J

    move-result-wide v2

    .line 357
    :cond_11
    :goto_11
    long-to-float v4, p1

    const/high16 v5, 0x3fc00000

    mul-float/2addr v4, v5

    float-to-long v4, v4

    .line 358
    cmp-long v6, v4, v8

    if-lez v6, :cond_29

    .line 359
    cmp-long v2, v2, v4

    if-ltz v2, :cond_27

    .line 361
    :cond_1e
    :goto_1e
    return v0

    .line 349
    :cond_1f
    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    .line 350
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->e()J

    move-result-wide v2

    goto :goto_11

    :cond_27
    move v0, v1

    .line 359
    goto :goto_1e

    .line 361
    :cond_29
    cmp-long v2, v2, v8

    if-gez v2, :cond_1e

    move v0, v1

    goto :goto_1e
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .registers 5

    .prologue
    .line 239
    const-class v1, Lcom/tencent/tmdownloader/internal/a/c;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    if-nez v0, :cond_11

    .line 242
    const-string v0, ""
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_68

    .line 268
    :goto_f
    monitor-exit v1

    return-object v0

    .line 246
    :cond_11
    :try_start_11
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_27

    .line 247
    const-string v0, ""
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1c
    .catchall {:try_start_11 .. :try_end_1b} :catchall_68

    goto :goto_f

    .line 249
    :catch_1c
    move-exception v0

    .line 250
    :try_start_1d
    sget-object v2, Lcom/tencent/tmdownloader/internal/a/c;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    const-string v0, ""

    goto :goto_f

    .line 254
    :cond_27
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 255
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 256
    if-nez v0, :cond_38

    .line 257
    const-string v0, ""

    goto :goto_f

    .line 259
    :cond_38
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_42

    .line 260
    const-string v0, "wifi"

    goto :goto_f

    .line 262
    :cond_42
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 263
    if-nez v0, :cond_4b

    .line 264
    const-string v0, ""

    goto :goto_f

    .line 266
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 267
    sget-object v2, Lcom/tencent/tmdownloader/internal/a/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netInfo  =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_1d .. :try_end_67} :catchall_68

    goto :goto_f

    .line 239
    :catchall_68
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 93
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 99
    if-eqz v1, :cond_2f

    .line 100
    const/4 v1, 0x0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 103
    sget-object v1, Lcom/tencent/tmdownloader/internal/a/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_51
    return-object v0

    :cond_52
    const/4 v0, 0x0

    goto :goto_51
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 293
    :try_start_1
    invoke-static {p0, p1}, Lcom/tencent/tmdownloader/internal/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_16
    .catchall {:try_start_1 .. :try_end_11} :catchall_22

    move-result v1

    if-eqz v1, :cond_15

    .line 297
    const/4 v0, 0x1

    .line 305
    :cond_15
    :goto_15
    return v0

    .line 299
    :catch_16
    move-exception v1

    .line 300
    :try_start_17
    sget-object v2, Lcom/tencent/tmdownloader/internal/a/c;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_22

    goto :goto_15

    .line 303
    :catchall_22
    move-exception v0

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    if-eqz p0, :cond_7

    .line 117
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static c()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    if-nez v0, :cond_13

    .line 275
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/c;->a:Ljava/lang/String;

    const-string v2, "GlobalUtil.getInstance().getContext() == null."

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_12
    return v1

    .line 280
    :cond_13
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 281
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_27

    .line 283
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :goto_25
    move v1, v0

    .line 285
    goto :goto_12

    :cond_27
    move v0, v1

    goto :goto_25
.end method

.method public static d()J
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 370
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 371
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    mul-long/2addr v2, v4

    .line 373
    cmp-long v4, v2, v0

    if-gez v4, :cond_22

    .line 376
    :goto_21
    return-wide v0

    :cond_22
    move-wide v0, v2

    goto :goto_21
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 129
    .line 130
    const-string v0, "?"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v1, "*"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "$"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "&"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "@"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "#"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "<"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, ">"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "|"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, ":"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "\\"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "\""

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public static e()J
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 381
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 382
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 383
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    mul-long/2addr v2, v4

    .line 387
    cmp-long v4, v2, v0

    if-gez v4, :cond_41

    .line 391
    :cond_40
    :goto_40
    return-wide v0

    :cond_41
    move-wide v0, v2

    goto :goto_40
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 148
    if-nez p0, :cond_6

    .line 150
    const/4 v0, 0x0

    .line 182
    :goto_5
    return-object v0

    .line 154
    :cond_6
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 155
    if-lez v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_18

    :cond_16
    move-object v0, p0

    .line 157
    goto :goto_5

    .line 159
    :cond_18
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    .line 160
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    move v1, v2

    .line 167
    :cond_2c
    if-nez v1, :cond_5a

    move-object v0, p0

    .line 175
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    .line 179
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_5

    .line 173
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v3, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 191
    :try_start_1
    invoke-static {p0}, Lcom/tencent/tmdownloader/internal/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    .line 193
    const/4 v0, 0x1

    .line 198
    :goto_b
    return v0

    .line 194
    :catch_c
    move-exception v1

    .line 195
    sget-object v2, Lcom/tencent/tmdownloader/internal/a/c;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 314
    if-nez p0, :cond_4

    .line 333
    :cond_3
    :goto_3
    return v0

    .line 322
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_15
    .catchall {:try_start_4 .. :try_end_10} :catchall_21

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    const/4 v0, 0x1

    goto :goto_3

    .line 327
    :catch_15
    move-exception v1

    .line 328
    :try_start_16
    sget-object v2, Lcom/tencent/tmdownloader/internal/a/c;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_21

    goto :goto_3

    .line 331
    :catchall_21
    move-exception v0

    throw v0
.end method

.method public static h(Ljava/lang/String;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 400
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 409
    :cond_7
    :goto_7
    return v0

    .line 404
    :cond_8
    if-eqz p0, :cond_14

    const-string v1, "/data/data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 405
    const/4 v0, 0x1

    goto :goto_7

    .line 406
    :cond_14
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 407
    const/4 v0, 0x2

    goto :goto_7
.end method
