.class public Lcom/tencent/stat/a/g;
.super Lcom/tencent/stat/a/e;


# instance fields
.field private a:Lcom/tencent/stat/StatGameUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tencent/stat/StatGameUser;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 6

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;ILcom/tencent/stat/StatSpecifyReportedInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/a/g;->a:Lcom/tencent/stat/StatGameUser;

    invoke-virtual {p3}, Lcom/tencent/stat/StatGameUser;->clone()Lcom/tencent/stat/StatGameUser;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/a/g;->a:Lcom/tencent/stat/StatGameUser;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/stat/a/f;
    .registers 2

    sget-object v0, Lcom/tencent/stat/a/f;->g:Lcom/tencent/stat/a/f;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/stat/a/g;->a:Lcom/tencent/stat/StatGameUser;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const-string v0, "wod"

    iget-object v1, p0, Lcom/tencent/stat/a/g;->a:Lcom/tencent/stat/StatGameUser;

    invoke-virtual {v1}, Lcom/tencent/stat/StatGameUser;->getWorldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gid"

    iget-object v1, p0, Lcom/tencent/stat/a/g;->a:Lcom/tencent/stat/StatGameUser;

    invoke-virtual {v1}, Lcom/tencent/stat/StatGameUser;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lev"

    iget-object v1, p0, Lcom/tencent/stat/a/g;->a:Lcom/tencent/stat/StatGameUser;

    invoke-virtual {v1}, Lcom/tencent/stat/StatGameUser;->getLevel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_5
.end method
