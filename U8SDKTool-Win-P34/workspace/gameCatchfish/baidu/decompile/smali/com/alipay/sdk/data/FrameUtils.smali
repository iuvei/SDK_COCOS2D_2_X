.class public Lcom/alipay/sdk/data/FrameUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Msp-Param"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/sdk/data/Request;
    .registers 6

    .prologue
    .line 267
    new-instance v0, Lcom/alipay/sdk/data/Envelope;

    invoke-direct {v0}, Lcom/alipay/sdk/data/Envelope;-><init>()V

    .line 268
    sget-object v1, Lcom/alipay/sdk/cons/GlobalConstants;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/Envelope;->b(Ljava/lang/String;)V

    .line 269
    const-string v1, "com.alipay.mobilecashier"

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/Envelope;->c(Ljava/lang/String;)V

    .line 270
    const-string v1, "/device/findAccount"

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/Envelope;->d(Ljava/lang/String;)V

    .line 271
    const-string v1, "3.0.0"

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/Envelope;->e(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v1

    .line 274
    invoke-static {}, Lcom/alipay/sdk/tid/TidInfo;->c()Lcom/alipay/sdk/tid/TidInfo;

    move-result-object v2

    .line 275
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 277
    :try_start_26
    invoke-virtual {v2}, Lcom/alipay/sdk/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 278
    const-string v4, "tid"

    invoke-virtual {v2}, Lcom/alipay/sdk/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    :goto_39
    const-string v4, "utdid"

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/GlobalContext;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v4, "app_key"

    const-string v5, "2014052600006128"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v4, "new_client_key"

    invoke-virtual {v2}, Lcom/alipay/sdk/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v2, "imei"

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/util/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/sdk/util/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v2, "imsi"

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/util/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/util/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_74} :catch_82

    .line 293
    :goto_74
    new-instance v1, Lcom/alipay/sdk/data/Request;

    invoke-direct {v1, v0, v3}, Lcom/alipay/sdk/data/Request;-><init>(Lcom/alipay/sdk/data/Envelope;Lorg/json/JSONObject;)V

    return-object v1

    .line 280
    :cond_7a
    :try_start_7a
    invoke-virtual {v2}, Lcom/alipay/sdk/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/sdk/tid/TidInfo;->b(Ljava/lang/String;)V
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_7a .. :try_end_81} :catch_82

    goto :goto_39

    :catch_82
    move-exception v1

    goto :goto_74
.end method

.method public static a(Lcom/alipay/sdk/data/InteractionData;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/data/Request;
    .registers 16

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/alipay/sdk/tid/TidInfo;->c()Lcom/alipay/sdk/tid/TidInfo;

    move-result-object v1

    .line 44
    invoke-static {v2, p2}, Lcom/alipay/sdk/util/JsonUtils;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 46
    :try_start_f
    const-string v4, "tid"

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v4, "user_agent"

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/GlobalContext;->c()Lcom/alipay/sdk/data/MspConfig;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/alipay/sdk/data/MspConfig;->a(Lcom/alipay/sdk/tid/TidInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v4, "has_alipay"

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/sdk/util/Utils;->b(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 52
    const-string v4, "has_msp_app"

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/sdk/util/Utils;->a(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 55
    const-string v4, "external_info"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v4, "app_key"

    const-string v5, "2014052600006128"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v4, "utdid"

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/GlobalContext;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v0, "new_client_key"

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_5d} :catch_1a2

    .line 60
    :goto_5d
    new-instance v1, Lcom/alipay/sdk/data/Envelope;

    invoke-direct {v1}, Lcom/alipay/sdk/data/Envelope;-><init>()V

    sget-object v0, Lcom/alipay/sdk/cons/GlobalConstants;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/data/Envelope;->b(Ljava/lang/String;)V

    const-string v0, "com.alipay.mobilecashier"

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/data/Envelope;->c(Ljava/lang/String;)V

    const-string v0, "/cashier/main"

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/data/Envelope;->d(Ljava/lang/String;)V

    const-string v0, "4.0.2"

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/data/Envelope;->e(Ljava/lang/String;)V

    if-eqz v3, :cond_1a5

    new-instance v0, Lcom/alipay/sdk/data/Request;

    invoke-direct {v0, v1, v3}, Lcom/alipay/sdk/data/Request;-><init>(Lcom/alipay/sdk/data/Envelope;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v12}, Lcom/alipay/sdk/data/Request;->a(Z)V

    move-object v7, v0

    .line 64
    :goto_81
    if-eqz v7, :cond_1a1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a1

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v0, v8

    if-eqz v0, :cond_1a1

    array-length v9, v8

    move v5, v6

    move-object v0, v2

    move-object v4, v2

    move-object v3, v2

    move-object v1, v2

    :goto_98
    if-ge v5, v9, :cond_f7

    aget-object v10, v8, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_ab

    const-string v1, "biz_type"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e3

    move-object v1, v2

    :cond_ab
    :goto_ab
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_ba

    const-string v3, "biz_no"

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e8

    move-object v3, v2

    :cond_ba
    :goto_ba
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d1

    const-string v4, "trade_no"

    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d0

    const-string v4, "out_trade_no"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ed

    :cond_d0
    move-object v4, v2

    :cond_d1
    :goto_d1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e0

    const-string v0, "app_userid"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f2

    move-object v0, v2

    :cond_e0
    :goto_e0
    add-int/lit8 v5, v5, 0x1

    goto :goto_98

    :cond_e3
    invoke-static {v10}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ab

    :cond_e8
    invoke-static {v10}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_ba

    :cond_ed
    invoke-static {v10}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_d1

    :cond_f2
    invoke-static {v10}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e0

    :cond_f7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11a

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "biz_type="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_138

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "biz_no="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_138
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_156

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "trade_no="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_174

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "app_userid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1a1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_190

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_190
    new-array v1, v12, [Lorg/apache/http/Header;

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Msp-Param"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/alipay/sdk/data/InteractionData;->a([Lorg/apache/http/Header;)V

    invoke-virtual {v7, p0}, Lcom/alipay/sdk/data/Request;->a(Lcom/alipay/sdk/data/InteractionData;)V

    .line 67
    :cond_1a1
    return-object v7

    :catch_1a2
    move-exception v0

    goto/16 :goto_5d

    :cond_1a5
    move-object v7, v2

    goto/16 :goto_81
.end method

.method private static a(Lorg/json/JSONObject;Z)Lcom/alipay/sdk/data/Request;
    .registers 4

    .prologue
    .line 72
    new-instance v1, Lcom/alipay/sdk/data/Envelope;

    invoke-direct {v1}, Lcom/alipay/sdk/data/Envelope;-><init>()V

    .line 73
    sget-object v0, Lcom/alipay/sdk/cons/GlobalConstants;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/data/Envelope;->b(Ljava/lang/String;)V

    .line 74
    const-string v0, "com.alipay.mobilecashier"

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/data/Envelope;->c(Ljava/lang/String;)V

    .line 75
    const-string v0, "/cashier/main"

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/data/Envelope;->d(Ljava/lang/String;)V

    .line 76
    const-string v0, "4.0.2"

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/data/Envelope;->e(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .line 78
    if-eqz p0, :cond_24

    .line 79
    new-instance v0, Lcom/alipay/sdk/data/Request;

    invoke-direct {v0, v1, p0}, Lcom/alipay/sdk/data/Request;-><init>(Lcom/alipay/sdk/data/Envelope;Lorg/json/JSONObject;)V

    .line 80
    invoke-virtual {v0, p1}, Lcom/alipay/sdk/data/Request;->a(Z)V

    .line 82
    :cond_24
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    const-string v0, "biz_type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 167
    const/4 v0, 0x0

    .line 172
    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private static a(Lcom/alipay/sdk/data/InteractionData;Lcom/alipay/sdk/data/Request;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 159
    :cond_8
    :goto_8
    return-void

    .line 103
    :cond_9
    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 104
    array-length v0, v7

    if-eqz v0, :cond_8

    .line 112
    array-length v8, v7

    move v5, v6

    move-object v0, v2

    move-object v4, v2

    move-object v3, v2

    move-object v1, v2

    :goto_18
    if-ge v5, v8, :cond_77

    aget-object v9, v7, v5

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 114
    const-string v1, "biz_type"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    move-object v1, v2

    .line 117
    :cond_2b
    :goto_2b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 118
    const-string v3, "biz_no"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    move-object v3, v2

    .line 121
    :cond_3a
    :goto_3a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 122
    const-string v4, "trade_no"

    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_50

    const-string v4, "out_trade_no"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    :cond_50
    move-object v4, v2

    .line 124
    :cond_51
    :goto_51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_60

    .line 125
    const-string v0, "app_userid"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    move-object v0, v2

    .line 112
    :cond_60
    :goto_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 114
    :cond_63
    invoke-static {v9}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 118
    :cond_68
    invoke-static {v9}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    .line 122
    :cond_6d
    invoke-static {v9}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_51

    .line 125
    :cond_72
    invoke-static {v9}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    .line 129
    :cond_77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "biz_type="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_9a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "biz_no="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_b8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "trade_no="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_d6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f4

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "app_userid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_f4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_110
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/Header;

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Msp-Param"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/alipay/sdk/data/InteractionData;->a([Lorg/apache/http/Header;)V

    .line 158
    invoke-virtual {p1, p0}, Lcom/alipay/sdk/data/Request;->a(Lcom/alipay/sdk/data/InteractionData;)V

    goto/16 :goto_8
.end method

.method public static a(Lcom/alipay/sdk/data/InteractionData;Lorg/apache/http/HttpResponse;)V
    .registers 4

    .prologue
    .line 232
    const-string v0, "Msp-Param"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 233
    if-eqz p0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 234
    invoke-virtual {p0, v0}, Lcom/alipay/sdk/data/InteractionData;->a([Lorg/apache/http/Header;)V

    .line 237
    :cond_e
    return-void
.end method

.method public static a([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/UnZipException;
        }
    .end annotation

    .prologue
    .line 240
    .line 242
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 243
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 244
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 246
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 247
    :goto_13
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2d

    .line 248
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_20} :catch_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_3e

    goto :goto_13

    .line 255
    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 257
    new-instance v0, Lcom/alipay/sdk/exception/UnZipException;

    const-string v1, "UnsupportedEncodingException"

    invoke-direct {v0, v1}, Lcom/alipay/sdk/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 251
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 252
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 253
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 254
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_3d} :catch_21
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3d} :catch_3e

    .line 263
    return-object v2

    .line 258
    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    new-instance v0, Lcom/alipay/sdk/exception/UnZipException;

    const-string v1, "IOException"

    invoke-direct {v0, v1}, Lcom/alipay/sdk/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    const-string v0, "biz_no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 181
    const/4 v0, 0x0

    .line 186
    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    const-string v0, "trade_no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "out_trade_no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 196
    :cond_10
    const/4 v0, 0x0

    .line 201
    :goto_11
    return-object v0

    :cond_12
    invoke-static {p0}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 205
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 206
    const/4 v0, 0x0

    .line 207
    array-length v2, v1

    if-le v2, v3, :cond_1d

    .line 208
    aget-object v0, v1, v3

    .line 209
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 210
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_1d
    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    const-string v0, "app_userid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 222
    const/4 v0, 0x0

    .line 227
    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/alipay/sdk/data/FrameUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method
