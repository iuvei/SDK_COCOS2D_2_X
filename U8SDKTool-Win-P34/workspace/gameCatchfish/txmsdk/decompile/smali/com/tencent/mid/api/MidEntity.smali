.class public Lcom/tencent/mid/api/MidEntity;
.super Ljava/lang/Object;


# static fields
.field public static final TAG_IMEI:Ljava/lang/String; = "ui"

.field public static final TAG_MAC:Ljava/lang/String; = "mc"

.field public static final TAG_MID:Ljava/lang/String; = "mid"

.field public static final TAG_TIMESTAMPS:Ljava/lang/String; = "ts"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mid/api/MidEntity;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mid/api/MidEntity;->b:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/mid/api/MidEntity;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mid/api/MidEntity;->d:J

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/tencent/mid/api/MidEntity;
    .registers 5

    new-instance v1, Lcom/tencent/mid/api/MidEntity;

    invoke-direct {v1}, Lcom/tencent/mid/api/MidEntity;-><init>()V

    invoke-static {p0}, Lcom/tencent/mid/util/Util;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ui"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "ui"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/api/MidEntity;->setImei(Ljava/lang/String;)V

    :cond_21
    const-string v2, "mc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "mc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/api/MidEntity;->setMac(Ljava/lang/String;)V

    :cond_32
    const-string v2, "mid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "mid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/api/MidEntity;->setMid(Ljava/lang/String;)V

    :cond_43
    const-string v2, "ts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "ts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_54} :catch_55

    :cond_54
    :goto_54
    return-object v1

    :catch_55
    move-exception v0

    const-string v2, "MID"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "ui"

    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mc"

    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mid"

    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ts"

    iget-wide v2, p0, Lcom/tencent/mid/api/MidEntity;->d:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22

    :goto_21
    return-object v1

    :catch_22
    move-exception v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->logWarn(Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public compairTo(Lcom/tencent/mid/api/MidEntity;)I
    .registers 8

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mid/api/MidEntity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v0, 0x0

    goto :goto_4

    :cond_1d
    iget-wide v2, p0, Lcom/tencent/mid/api/MidEntity;->d:J

    iget-wide v4, p1, Lcom/tencent/mid/api/MidEntity;->d:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_27
    invoke-virtual {p0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamps()J
    .registers 3

    iget-wide v0, p0, Lcom/tencent/mid/api/MidEntity;->d:J

    return-wide v0
.end method

.method public isMidValid()Z
    .registers 2

    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setImei(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mid/api/MidEntity;->a:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mid/api/MidEntity;->b:Ljava/lang/String;

    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mid/api/MidEntity;->c:Ljava/lang/String;

    return-void
.end method

.method public setTimestamps(J)V
    .registers 4

    iput-wide p1, p0, Lcom/tencent/mid/api/MidEntity;->d:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/tencent/mid/api/MidEntity;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
