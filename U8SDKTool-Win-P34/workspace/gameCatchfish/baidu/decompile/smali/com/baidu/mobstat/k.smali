.class Lcom/baidu/mobstat/k;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/l;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/baidu/mobstat/k;->b:J

    iput-wide v0, p0, Lcom/baidu/mobstat/k;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/k;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/k;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/k;->a(J)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mobstat/k;->b:J

    return-wide v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mobstat/k;->d:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/baidu/mobstat/k;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 6

    new-instance v0, Lcom/baidu/mobstat/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/l;-><init>(Lcom/baidu/mobstat/k;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/baidu/mobstat/k;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mobstat/k;->b:J

    iput-wide v0, p0, Lcom/baidu/mobstat/k;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/k;->d:I

    iget-object v0, p0, Lcom/baidu/mobstat/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/k;->a(J)V

    return-void
.end method

.method public b(J)V
    .registers 4

    iput-wide p1, p0, Lcom/baidu/mobstat/k;->c:J

    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .registers 9

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "s"

    iget-wide v4, p0, Lcom/baidu/mobstat/k;->b:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "e"

    iget-wide v4, p0, Lcom/baidu/mobstat/k;->c:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "i"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "c"

    iget v1, p0, Lcom/baidu/mobstat/k;->d:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_2a
    iget-object v0, p0, Lcom/baidu/mobstat/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_60

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "n"

    iget-object v0, p0, Lcom/baidu/mobstat/k;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/l;

    invoke-virtual {v0}, Lcom/baidu/mobstat/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "d"

    iget-object v0, p0, Lcom/baidu/mobstat/k;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/l;

    invoke-virtual {v0}, Lcom/baidu/mobstat/l;->b()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    :cond_60
    const-string v0, "p"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_65} :catch_66

    :goto_65
    return-object v2

    :catch_66
    move-exception v0

    const-string v0, "stat"

    const-string v1, "StatSession.constructJSONObject() failed"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/baidu/mobstat/k;->d:I

    return v0
.end method
