.class public Lcom/baidu/android/pushservice/d/u;
.super Lcom/baidu/android/pushservice/d/d;


# instance fields
.field private f:I

.field private g:Lcom/baidu/android/pushservice/e/o;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/d/l;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/e/o;Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0, p1, p7}, Lcom/baidu/android/pushservice/d/d;-><init>(Lcom/baidu/android/pushservice/d/l;Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->m:Ljava/lang/String;

    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->o:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    iput-object p6, p0, Lcom/baidu/android/pushservice/d/u;->g:Lcom/baidu/android/pushservice/e/o;

    iput-object p4, p0, Lcom/baidu/android/pushservice/d/u;->o:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iput-object p3, p0, Lcom/baidu/android/pushservice/d/u;->n:Ljava/lang/String;

    :cond_34
    iget-object v0, p1, Lcom/baidu/android/pushservice/d/l;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/android/pushservice/d/l;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/e/o;Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0, p1, p8}, Lcom/baidu/android/pushservice/d/d;-><init>(Lcom/baidu/android/pushservice/d/l;Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->m:Ljava/lang/String;

    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->o:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    iput-object p7, p0, Lcom/baidu/android/pushservice/d/u;->g:Lcom/baidu/android/pushservice/e/o;

    iput-object p3, p0, Lcom/baidu/android/pushservice/d/u;->k:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iput-object p4, p0, Lcom/baidu/android/pushservice/d/u;->l:Ljava/lang/String;

    :cond_34
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    iput-object p5, p0, Lcom/baidu/android/pushservice/d/u;->m:Ljava/lang/String;

    :cond_3c
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    iput-object p6, p0, Lcom/baidu/android/pushservice/d/u;->n:Ljava/lang/String;

    :cond_44
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/android/pushservice/PushConstants;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/android/pushservice/d/u;->a(I[B)V

    return-void
.end method

.method protected a(I[B)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/u;->g:Lcom/baidu/android/pushservice/e/o;

    if-eqz v0, :cond_25

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_62

    const-string v0, "app_id"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channel_id"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user_id"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/u;->g:Lcom/baidu/android/pushservice/e/o;

    invoke-interface {v0, p1, v1}, Lcom/baidu/android/pushservice/e/o;->a(ILjava/util/HashMap;)V

    :cond_25
    new-instance v1, Lcom/baidu/android/pushservice/f/c;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/f/c;-><init>()V

    iget v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b8

    const-string v0, "020701"

    iput-object v0, v1, Lcom/baidu/android/pushservice/f/c;->g:Ljava/lang/String;

    :cond_33
    :goto_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/android/pushservice/f/c;->h:J

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/frontia/a/d/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/f/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/u;->h:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/f/c;->k:Ljava/lang/String;

    if-nez p1, :cond_e4

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/u;->j:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/f/c;->c:Ljava/lang/String;

    new-instance v0, Lcom/baidu/android/pushservice/f/k;

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->h:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/baidu/android/pushservice/f/k;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/baidu/android/pushservice/f/k;->b:I

    invoke-virtual {v0, v2}, Lcom/baidu/android/pushservice/f/k;->c(I)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/f/t;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/k;)J

    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/u;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/f/t;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/c;)J
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_98

    :cond_61
    :goto_61
    return-void

    :cond_62
    :try_start_62
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error_msg"

    const-string v3, "error_msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_77} :catch_78

    goto :goto_20

    :catch_78
    move-exception v0

    :try_start_79
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "BaseApiProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResult E: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_97} :catch_98

    goto :goto_20

    :catch_98
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "BaseApiProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    :cond_b8
    :try_start_b8
    iget v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c3

    const-string v0, "020703"

    iput-object v0, v1, Lcom/baidu/android/pushservice/f/c;->g:Ljava/lang/String;

    goto/16 :goto_33

    :cond_c3
    iget v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_ce

    const-string v0, "020702"

    iput-object v0, v1, Lcom/baidu/android/pushservice/f/c;->g:Ljava/lang/String;

    goto/16 :goto_33

    :cond_ce
    iget v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_d9

    const-string v0, "020705"

    iput-object v0, v1, Lcom/baidu/android/pushservice/f/c;->g:Ljava/lang/String;

    goto/16 :goto_33

    :cond_d9
    iget v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_33

    const-string v0, "020707"

    iput-object v0, v1, Lcom/baidu/android/pushservice/f/c;->g:Ljava/lang/String;

    goto/16 :goto_33

    :cond_e4
    iput p1, v1, Lcom/baidu/android/pushservice/f/c;->j:I
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_e6} :catch_98

    :try_start_e6
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error_msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/f/c;->a:Ljava/lang/String;
    :try_end_f8
    .catch Lorg/json/JSONException; {:try_start_e6 .. :try_end_f8} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f8} :catch_98

    goto/16 :goto_5c

    :catch_fa
    move-exception v0

    :try_start_fb
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "BaseApiProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert BE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_119} :catch_98

    goto/16 :goto_5c
.end method

.method protected a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x5

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/d/d;->a(Ljava/util/List;)V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "method"

    const-string v2, "lightapp_bind"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v0, "unknown"

    :cond_1a
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "bind_name"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    iget v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_32

    iget v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    if-ne v0, v3, :cond_10e

    :cond_32
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "nonce"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->l:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/u;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "referer"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    iget v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    if-ne v0, v3, :cond_100

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "push_type"

    const-string v2, "5"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/u;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_126

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "csrftoken"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "cuid"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/frontia/a/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_86
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "host_app"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->n:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "push_sdk_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/baidu/android/pushservice/a;->a()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_140

    const-string v0, "BaseApiProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L BIND url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_140

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    const-string v2, "BaseApiProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L BIND param -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    :cond_100
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "push_type"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_62

    :cond_10e
    iget v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_118

    iget v0, p0, Lcom/baidu/android/pushservice/d/u;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_62

    :cond_118
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "push_type"

    const-string v2, "3"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_62

    :cond_126
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "push_hash"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/u;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_86

    :cond_140
    return-void
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/d/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "response_params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/android/pushservice/d/u;->h:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/android/pushservice/d/u;->i:Ljava/lang/String;

    const-string v2, "channel_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/u;->j:Ljava/lang/String;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-object v1

    :catch_28
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "BaseApiProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindData Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method
