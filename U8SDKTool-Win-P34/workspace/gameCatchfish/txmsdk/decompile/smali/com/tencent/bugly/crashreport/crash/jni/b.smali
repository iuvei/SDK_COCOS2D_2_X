.class public Lcom/tencent/bugly/crashreport/crash/jni/b;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    .line 28
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    .line 29
    iput p2, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/proguard/x;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 236
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_10

    .line 238
    :cond_8
    const-string v1, "get eup record file args error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 297
    :cond_f
    :goto_f
    return-object v0

    .line 242
    :cond_10
    new-instance v1, Ljava/io/File;

    const-string v2, "rqd_record.eup"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 249
    :try_start_23
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_82
    .catchall {:try_start_23 .. :try_end_28} :catchall_93

    .line 250
    :try_start_28
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_36

    const-string v3, "NATIVE_RQD_REPORT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 253
    :cond_36
    const-string v3, "record read fail! %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_41} :catch_a3
    .catchall {:try_start_28 .. :try_end_41} :catchall_a1

    .line 254
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_f

    .line 294
    :catch_45
    move-exception v1

    .line 296
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 257
    :cond_4a
    :try_start_4a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 260
    :goto_50
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 262
    if-nez v1, :cond_5a

    move-object v1, v3

    .line 264
    goto :goto_50

    .line 268
    :cond_5a
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 269
    goto :goto_50

    .line 272
    :cond_5f
    if-eqz v1, :cond_75

    .line 274
    const-string v3, "record not pair! drop! %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_6c} :catch_a3
    .catchall {:try_start_4a .. :try_end_6c} :catchall_a1

    .line 275
    :try_start_6c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_f

    .line 294
    :catch_70
    move-exception v1

    .line 296
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 278
    :cond_75
    :try_start_75
    invoke-static {p0, v4, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/proguard/x;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_a3
    .catchall {:try_start_75 .. :try_end_78} :catchall_a1

    move-result-object v0

    .line 288
    :try_start_79
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_f

    .line 294
    :catch_7d
    move-exception v1

    .line 296
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 281
    :catch_82
    move-exception v1

    move-object v2, v0

    .line 283
    :goto_84
    :try_start_84
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_a1

    .line 284
    if-eqz v2, :cond_f

    .line 292
    :try_start_89
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_f

    .line 294
    :catch_8d
    move-exception v1

    .line 296
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 288
    :catchall_93
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_96
    if-eqz v2, :cond_9b

    .line 292
    :try_start_98
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    .line 297
    :cond_9b
    :goto_9b
    throw v0

    .line 294
    :catch_9c
    move-exception v1

    .line 296
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9b

    .line 288
    :catchall_a1
    move-exception v0

    goto :goto_96

    .line 281
    :catch_a3
    move-exception v1

    goto :goto_84
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/proguard/x;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;",
            ")",
            "Lcom/tencent/bugly/proguard/x;"
        }
    .end annotation

    .prologue
    .line 99
    if-nez p1, :cond_4

    .line 100
    const/4 v2, 0x0

    .line 198
    :cond_3
    :goto_3
    return-object v2

    .line 102
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v2

    .line 103
    if-nez v2, :cond_14

    .line 105
    const-string v2, "abnormal com info not created"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 106
    const/4 v2, 0x0

    goto :goto_3

    .line 109
    :cond_14
    const-string v2, "intStateStr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_34

    .line 112
    :cond_2a
    const-string v2, "no intStateStr"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 113
    const/4 v2, 0x0

    goto :goto_3

    .line 116
    :cond_34
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 117
    if-nez v3, :cond_4f

    .line 119
    const-string v2, "parse intSateMap fail"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 120
    const/4 v2, 0x0

    goto :goto_3

    .line 126
    :cond_4f
    :try_start_4f
    const-string v2, "ep"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 127
    const-string v2, "et"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 128
    const-string v2, "sino"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 129
    const-string v2, "sico"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 130
    const-string v2, "spd"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 131
    const-string v2, "sud"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 132
    const-string v2, "ets"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    .line 133
    const-string v2, "etms"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 135
    const-string v2, "soVersion"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 136
    if-nez v12, :cond_c7

    .line 138
    const-string v2, "error format at version"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 142
    :cond_c7
    const-string v2, "errorAddr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    if-nez v2, :cond_1ac

    const-string v7, "unknown2"

    .line 145
    :goto_d5
    const-string v2, "codeMsg"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    if-nez v2, :cond_1af

    const-string v9, "unknown2"

    .line 148
    :goto_e3
    const-string v2, "tombPath"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    if-nez v2, :cond_1b2

    const-string v11, "unknown2"

    .line 151
    :goto_f1
    const-string v2, "signalName"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    if-nez v2, :cond_1b5

    const-string v6, "unknown2"

    .line 154
    :goto_ff
    const-string v2, "errnoMsg"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v2, "stack"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    if-nez v2, :cond_1b8

    const-string v3, "unknown2"

    .line 159
    :goto_114
    const-string v2, "jstack"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    if-eqz v2, :cond_1bb

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "java:\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    :goto_137
    const-wide/16 v18, 0x3e8

    mul-long v4, v4, v18

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    add-long v4, v4, v16

    .line 171
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UNKNOWN("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 174
    if-lez v14, :cond_17b

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    const-string v9, "KERNEL"

    .line 186
    :cond_17b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v12}, Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;->packageCrashDatas(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/x;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_3

    .line 189
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tencent/bugly/proguard/x;->k:Z
    :try_end_19b
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_19b} :catch_19d

    goto/16 :goto_3

    .line 193
    :catch_19d
    move-exception v2

    .line 195
    const-string v3, "error format"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_1ac
    move-object v7, v2

    .line 143
    goto/16 :goto_d5

    :cond_1af
    move-object v9, v2

    .line 146
    goto/16 :goto_e3

    :cond_1b2
    move-object v11, v2

    .line 149
    goto/16 :goto_f1

    :cond_1b5
    move-object v6, v2

    .line 152
    goto/16 :goto_ff

    :cond_1b8
    move-object v3, v2

    .line 157
    goto/16 :goto_114

    :cond_1bb
    move-object v2, v3

    goto/16 :goto_137
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 210
    if-nez p0, :cond_4

    .line 224
    :cond_3
    :goto_3
    return-object v0

    .line 213
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    :goto_9
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 217
    if-nez v2, :cond_17

    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 220
    :cond_17
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 75
    if-nez p0, :cond_5

    .line 76
    const-string p0, ""

    .line 87
    :cond_4
    :goto_4
    return-object p0

    .line 77
    :cond_5
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    if-nez v1, :cond_10

    array-length v0, v1

    if-eqz v0, :cond_4

    .line 81
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    array-length v3, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_2f

    aget-object v4, v1, v0

    .line 84
    const-string v5, "java.lang.Thread.getStackTrace("

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 87
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 309
    new-instance v0, Ljava/io/File;

    const-string v1, "rqd_record.eup"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_14

    .line 314
    :cond_13
    :goto_13
    return-void

    .line 312
    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 313
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    goto :goto_13
.end method

.method private static c(Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 42
    if-nez p0, :cond_6

    .line 68
    :goto_5
    return-object v0

    .line 47
    :cond_6
    :try_start_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 49
    array-length v5, v4

    move v2, v3

    :goto_13
    if-ge v2, v5, :cond_4f

    aget-object v6, v4, v2

    .line 51
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 52
    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3b

    .line 54
    const-string v1, "error format at %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_2d

    goto :goto_5

    .line 64
    :catch_2d
    move-exception v1

    .line 66
    const-string v2, "error format intStateStr %s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 58
    :cond_3b
    const/4 v6, 0x1

    :try_start_3c
    aget-object v6, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 59
    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4c} :catch_2d

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_4f
    move-object v0, v1

    .line 62
    goto :goto_5
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 20
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    if-ge v0, v1, :cond_f

    .line 21
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_f
    if-eqz p1, :cond_1c

    .line 23
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_1c
    return-void
.end method


# virtual methods
.method public a(BLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 5

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    return-object p0
.end method

.method public a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 5

    .prologue
    .line 53
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    return-object p0
.end method

.method public a(DLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 7

    .prologue
    .line 88
    invoke-direct {p0, p3}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    return-object p0
.end method

.method public a(FLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 5

    .prologue
    .line 81
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    return-object p0
.end method

.method public a(ILjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 5

    .prologue
    .line 67
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    return-object p0
.end method

.method public a(JLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 7

    .prologue
    .line 74
    invoke-direct {p0, p3}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    return-object p0
.end method

.method public a(Lcom/tencent/bugly/proguard/j;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 5

    .prologue
    .line 357
    const/16 v0, 0x7b

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 358
    if-nez p1, :cond_1b

    .line 359
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :goto_14
    const/16 v0, 0x7d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 365
    return-object p0

    .line 361
    :cond_1b
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/StringBuilder;I)V

    goto :goto_14
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/crashreport/crash/jni/b;"
        }
    .end annotation

    .prologue
    .line 309
    if-nez p1, :cond_a

    .line 310
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :goto_9
    return-object p0

    .line 311
    :cond_a
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_18

    .line 312
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(BLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_9

    .line 313
    :cond_18
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    .line 314
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_9

    .line 315
    :cond_26
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_34

    .line 316
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(SLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_9

    .line 317
    :cond_34
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_42

    .line 318
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ILjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_9

    .line 319
    :cond_42
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_50

    .line 320
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(JLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_9

    .line 321
    :cond_50
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5e

    .line 322
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(FLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_9

    .line 323
    :cond_5e
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6c

    .line 324
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(DLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_9

    .line 325
    :cond_6c
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_76

    .line 326
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_9

    .line 327
    :cond_76
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_80

    .line 328
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_9

    .line 329
    :cond_80
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_8a

    .line 330
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Collection;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_9

    .line 331
    :cond_8a
    instance-of v0, p1, Lcom/tencent/bugly/proguard/j;

    if-eqz v0, :cond_95

    .line 332
    check-cast p1, Lcom/tencent/bugly/proguard/j;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Lcom/tencent/bugly/proguard/j;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto/16 :goto_9

    .line 333
    :cond_95
    instance-of v0, p1, [B

    if-eqz v0, :cond_a0

    .line 334
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a([BLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto/16 :goto_9

    .line 335
    :cond_a0
    instance-of v0, p1, [Z

    if-eqz v0, :cond_ab

    .line 336
    check-cast p1, [Z

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto/16 :goto_9

    .line 337
    :cond_ab
    instance-of v0, p1, [S

    if-eqz v0, :cond_b6

    .line 338
    check-cast p1, [S

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a([SLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto/16 :goto_9

    .line 339
    :cond_b6
    instance-of v0, p1, [I

    if-eqz v0, :cond_c1

    .line 340
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a([ILjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto/16 :goto_9

    .line 341
    :cond_c1
    instance-of v0, p1, [J

    if-eqz v0, :cond_cc

    .line 342
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a([JLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto/16 :goto_9

    .line 343
    :cond_cc
    instance-of v0, p1, [F

    if-eqz v0, :cond_d7

    .line 344
    check-cast p1, [F

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a([FLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto/16 :goto_9

    .line 345
    :cond_d7
    instance-of v0, p1, [D

    if-eqz v0, :cond_e2

    .line 346
    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a([DLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto/16 :goto_9

    .line 347
    :cond_e2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 348
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto/16 :goto_9

    .line 350
    :cond_f3
    new-instance v0, Lcom/tencent/bugly/proguard/b;

    const-string v1, "write object error: unsupport type."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 5

    .prologue
    .line 95
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 96
    if-nez p1, :cond_d

    .line 97
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :goto_c
    return-object p0

    .line 99
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c
.end method

.method public a(Ljava/util/Collection;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/crashreport/crash/jni/b;"
        }
    .end annotation

    .prologue
    .line 283
    if-nez p1, :cond_d

    .line 284
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :goto_c
    return-object p0

    :cond_d
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    move-result-object p0

    goto :goto_c
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/crashreport/crash/jni/b;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 240
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 241
    if-nez p1, :cond_e

    .line 242
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :goto_d
    return-object p0

    .line 245
    :cond_e
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 246
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", {}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 249
    :cond_24
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 251
    new-instance v2, Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 252
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    const/16 v4, 0x28

    invoke-virtual {v1, v4, v5}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 256
    const/16 v0, 0x29

    invoke-virtual {v1, v0, v5}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_51

    .line 258
    :cond_76
    const/16 v0, 0x7d

    invoke-virtual {p0, v0, v5}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_d
.end method

.method public a(SLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 5

    .prologue
    .line 60
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    return-object p0
.end method

.method public a(ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_13

    const/16 v0, 0x54

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    return-object p0

    .line 40
    :cond_13
    const/16 v0, 0x46

    goto :goto_9
.end method

.method public a([BLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 108
    if-nez p1, :cond_e

    .line 109
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :goto_d
    return-object p0

    .line 112
    :cond_e
    array-length v0, p1

    if-nez v0, :cond_1e

    .line 113
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 116
    :cond_1e
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 118
    array-length v2, p1

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v2, :cond_41

    aget-byte v3, p1, v0

    .line 119
    invoke-virtual {v1, v3, v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(BLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 120
    :cond_41
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_d
.end method

.method public a([DLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 222
    if-nez p1, :cond_e

    .line 223
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :goto_d
    return-object p0

    .line 226
    :cond_e
    array-length v0, p1

    if-nez v0, :cond_1e

    .line 227
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 230
    :cond_1e
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 232
    array-length v2, p1

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v2, :cond_41

    aget-wide v4, p1, v0

    .line 233
    invoke-virtual {v1, v4, v5, v3}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(DLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 234
    :cond_41
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v3}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_d
.end method

.method public a([FLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 202
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 203
    if-nez p1, :cond_e

    .line 204
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :goto_d
    return-object p0

    .line 207
    :cond_e
    array-length v0, p1

    if-nez v0, :cond_1e

    .line 208
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 211
    :cond_1e
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 213
    array-length v2, p1

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v2, :cond_41

    aget v3, p1, v0

    .line 214
    invoke-virtual {v1, v3, v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(FLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 215
    :cond_41
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_d
.end method

.method public a([ILjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 165
    if-nez p1, :cond_e

    .line 166
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :goto_d
    return-object p0

    .line 169
    :cond_e
    array-length v0, p1

    if-nez v0, :cond_1e

    .line 170
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 173
    :cond_1e
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 175
    array-length v2, p1

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v2, :cond_41

    aget v3, p1, v0

    .line 176
    invoke-virtual {v1, v3, v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ILjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 177
    :cond_41
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_d
.end method

.method public a([JLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 184
    if-nez p1, :cond_e

    .line 185
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :goto_d
    return-object p0

    .line 188
    :cond_e
    array-length v0, p1

    if-nez v0, :cond_1e

    .line 189
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 192
    :cond_1e
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 194
    array-length v2, p1

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v2, :cond_41

    aget-wide v4, p1, v0

    .line 195
    invoke-virtual {v1, v4, v5, v3}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(JLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 196
    :cond_41
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v3}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_d
.end method

.method public a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/crashreport/crash/jni/b;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 265
    if-nez p1, :cond_e

    .line 266
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_d
    return-object p0

    .line 269
    :cond_e
    array-length v0, p1

    if-nez v0, :cond_1e

    .line 270
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 273
    :cond_1e
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 275
    array-length v2, p1

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v2, :cond_41

    aget-object v3, p1, v0

    .line 276
    invoke-virtual {v1, v3, v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 277
    :cond_41
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_d
.end method

.method public a([SLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-direct {p0, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)V

    .line 146
    if-nez p1, :cond_e

    .line 147
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :goto_d
    return-object p0

    .line 150
    :cond_e
    array-length v0, p1

    if-nez v0, :cond_1e

    .line 151
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 154
    :cond_1e
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 156
    array-length v2, p1

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v2, :cond_41

    aget-short v3, p1, v0

    .line 157
    invoke-virtual {v1, v3, v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(SLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 158
    :cond_41
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(CLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    goto :goto_d
.end method
