.class public Lcom/alipay/sdk/net/RequestWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/alipay/sdk/data/InteractionData;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/net/RequestWrapper;->a:I

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/alipay/sdk/data/InteractionData;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/net/RequestWrapper;->a:I

    .line 56
    iput-object p1, p0, Lcom/alipay/sdk/net/RequestWrapper;->b:Lcom/alipay/sdk/data/InteractionData;

    .line 57
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/data/InteractionData;Lcom/alipay/sdk/data/Response;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/sdk/net/RequestUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 223
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {p5, v2}, Lcom/alipay/sdk/data/Response;->a(I)V

    .line 224
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/alipay/sdk/data/Response;->a(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/alipay/sdk/net/RequestWrapper;->b:Lcom/alipay/sdk/data/InteractionData;

    invoke-static {v1, v0}, Lcom/alipay/sdk/data/FrameUtils;->a(Lcom/alipay/sdk/data/InteractionData;Lorg/apache/http/HttpResponse;)V

    .line 228
    invoke-static {v0}, Lcom/alipay/sdk/net/RequestUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_23
    .catchall {:try_start_0 .. :try_end_1e} :catchall_2a

    move-result-object v0

    .line 234
    invoke-static {}, Lcom/alipay/sdk/net/RequestUtils;->a()V

    return-object v0

    .line 232
    :catch_23
    move-exception v0

    :try_start_24
    new-instance v0, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    .line 234
    :catchall_2a
    move-exception v0

    invoke-static {}, Lcom/alipay/sdk/net/RequestUtils;->a()V

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 149
    .line 152
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_53
    .catchall {:try_start_1 .. :try_end_6} :catchall_43

    .line 153
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 155
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    :goto_19
    invoke-virtual {v1, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_2e

    .line 159
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24
    .catchall {:try_start_6 .. :try_end_23} :catchall_51

    goto :goto_19

    .line 164
    :catch_24
    move-exception v1

    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_51

    .line 167
    if-eqz v2, :cond_2d

    .line 169
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_3e

    .line 175
    :cond_2d
    :goto_2d
    return-object v0

    .line 162
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_34} :catch_24
    .catchall {:try_start_2e .. :try_end_34} :catchall_51

    move-result-object v0

    .line 167
    :try_start_35
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_2d

    .line 170
    :catch_39
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    :catch_3e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 167
    :catchall_43
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_46
    if-eqz v2, :cond_4b

    .line 169
    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 172
    :cond_4b
    :goto_4b
    throw v0

    .line 170
    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    .line 167
    :catchall_51
    move-exception v0

    goto :goto_46

    .line 164
    :catch_53
    move-exception v1

    move-object v2, v0

    goto :goto_25
.end method

.method private a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)Lorg/json/JSONObject;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;,
            Lcom/alipay/sdk/exception/FailOperatingException;,
            Lcom/alipay/sdk/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->f()Ljava/lang/String;

    move-result-object v6

    .line 116
    :try_start_4
    invoke-virtual {p2}, Lcom/alipay/sdk/data/Request;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v6}, Lcom/alipay/sdk/data/Request;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/alipay/sdk/data/Request;->b()Lcom/alipay/sdk/data/InteractionData;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/data/InteractionData;Lcom/alipay/sdk/data/Response;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/alipay/sdk/data/Response;->a(J)V

    .line 126
    invoke-virtual {p2}, Lcom/alipay/sdk/data/Request;->c()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 127
    invoke-static {v0, p3}, Lcom/alipay/sdk/net/RequestWrapper;->a(Ljava/lang/String;Lcom/alipay/sdk/data/Response;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alipay/sdk/data/Response;->c()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_48

    iget v1, p0, Lcom/alipay/sdk/net/RequestWrapper;->a:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_48

    iget v0, p0, Lcom/alipay/sdk/net/RequestWrapper;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/sdk/net/RequestWrapper;->a:I

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)Lorg/json/JSONObject;

    move-result-object v0

    .line 135
    :goto_47
    return-object v0

    .line 127
    :cond_48
    invoke-virtual {p3}, Lcom/alipay/sdk/data/Response;->c()I

    move-result v1

    if-eqz v1, :cond_5a

    new-instance v0, Lcom/alipay/sdk/exception/FailOperatingException;

    invoke-virtual {p3}, Lcom/alipay/sdk/data/Response;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/sdk/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_58
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_4 .. :try_end_58} :catch_58
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_4 .. :try_end_58} :catch_75
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_4 .. :try_end_58} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_58} :catch_a8

    .line 136
    :catch_58
    move-exception v0

    throw v0

    .line 127
    :cond_5a
    const/4 v1, 0x0

    :try_start_5b
    iput v1, p0, Lcom/alipay/sdk/net/RequestWrapper;->a:I

    const-string v1, "res_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_77

    new-instance v0, Lcom/alipay/sdk/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "response data is empty"

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
    :try_end_75
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_5b .. :try_end_75} :catch_58
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_5b .. :try_end_75} :catch_75
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_5b .. :try_end_75} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_75} :catch_a8

    .line 138
    :catch_75
    move-exception v0

    throw v0

    .line 127
    :cond_77
    :try_start_77
    invoke-static {v6, v0}, Lcom/alipay/sdk/encrypt/TriDes;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "respData:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8e
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_77 .. :try_end_8e} :catch_58
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_77 .. :try_end_8e} :catch_75
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_77 .. :try_end_8e} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8e} :catch_a8

    goto :goto_47

    .line 140
    :catch_8f
    move-exception v0

    throw v0

    .line 130
    :cond_91
    :try_start_91
    invoke-static {v0, p3}, Lcom/alipay/sdk/net/RequestWrapper;->a(Ljava/lang/String;Lcom/alipay/sdk/data/Response;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "respData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a7
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_91 .. :try_end_a7} :catch_58
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_91 .. :try_end_a7} :catch_75
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_91 .. :try_end_a7} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a7} :catch_a8

    goto :goto_47

    .line 143
    :catch_a8
    move-exception v0

    new-instance v0, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v0
.end method

.method private a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/alipay/sdk/exception/AppErrorException;,
            Lcom/alipay/sdk/exception/NetErrorException;,
            Lcom/alipay/sdk/exception/FailOperatingException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p5, p3}, Lcom/alipay/sdk/net/RequestWrapper;->a(Ljava/lang/String;Lcom/alipay/sdk/data/Response;)Lorg/json/JSONObject;

    move-result-object v0

    .line 184
    invoke-virtual {p3}, Lcom/alipay/sdk/data/Response;->c()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1c

    iget v1, p0, Lcom/alipay/sdk/net/RequestWrapper;->a:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1c

    .line 186
    iget v0, p0, Lcom/alipay/sdk/net/RequestWrapper;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/sdk/net/RequestWrapper;->a:I

    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)Lorg/json/JSONObject;

    move-result-object v0

    .line 202
    :goto_1b
    return-object v0

    .line 188
    :cond_1c
    invoke-virtual {p3}, Lcom/alipay/sdk/data/Response;->c()I

    move-result v1

    if-eqz v1, :cond_2c

    .line 189
    new-instance v0, Lcom/alipay/sdk/exception/FailOperatingException;

    invoke-virtual {p3}, Lcom/alipay/sdk/data/Response;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/sdk/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_2c
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/sdk/net/RequestWrapper;->a:I

    .line 194
    const-string v1, "res_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 196
    new-instance v0, Lcom/alipay/sdk/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "response data is empty"

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_47
    invoke-static {p4, v0}, Lcom/alipay/sdk/encrypt/TriDes;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "respData:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private static a(Lcom/alipay/sdk/data/Response;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/alipay/sdk/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {p1, p0}, Lcom/alipay/sdk/net/RequestWrapper;->a(Ljava/lang/String;Lcom/alipay/sdk/data/Response;)Lorg/json/JSONObject;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "respData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/sdk/data/Response;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/alipay/sdk/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1f7

    .line 240
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 242
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_7c

    .line 246
    const-string v1, "code"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/alipay/sdk/data/Response;->a(I)V

    .line 247
    const-string v1, "error_msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/sdk/data/Response;->a(Ljava/lang/String;)V

    .line 249
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_77

    .line 251
    invoke-virtual {p1}, Lcom/alipay/sdk/data/Response;->c()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_4a

    .line 253
    const-string v1, "public_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/sys/GlobalContext;->c()Lcom/alipay/sdk/data/MspConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/sdk/data/MspConfig;->a(Ljava/lang/String;)V

    .line 256
    :cond_4a
    new-instance v1, Lcom/alipay/sdk/data/Envelope;

    invoke-direct {v1}, Lcom/alipay/sdk/data/Envelope;-><init>()V

    .line 257
    const-string v2, "next_api_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->d(Ljava/lang/String;)V

    .line 258
    const-string v2, "next_api_version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->e(Ljava/lang/String;)V

    .line 259
    const-string v2, "next_namespace"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->c(Ljava/lang/String;)V

    .line 260
    const-string v2, "next_request_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->b(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, v1}, Lcom/alipay/sdk/data/Response;->a(Lcom/alipay/sdk/data/Envelope;)V

    .line 271
    :goto_76
    return-object v0

    .line 264
    :cond_77
    invoke-virtual {p1}, Lcom/alipay/sdk/data/Response;->c()I

    .line 271
    :goto_7a
    const/4 v0, 0x0

    goto :goto_76

    .line 268
    :cond_7c
    invoke-virtual {p1, v2}, Lcom/alipay/sdk/data/Response;->a(I)V

    .line 269
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/alipay/sdk/data/Response;->a(Ljava/lang/String;)V

    goto :goto_7a
.end method

.method private static a(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 275
    const-string v0, "public_key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 277
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/GlobalContext;->c()Lcom/alipay/sdk/data/MspConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/data/MspConfig;->a(Ljava/lang/String;)V

    .line 279
    :cond_17
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Z)Lcom/alipay/sdk/protocol/FrameData;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;,
            Lcom/alipay/sdk/exception/FailOperatingException;,
            Lcom/alipay/sdk/exception/AppErrorException;,
            Lcom/alipay/sdk/exception/UnZipException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Lcom/alipay/sdk/data/Response;

    invoke-direct {v1}, Lcom/alipay/sdk/data/Response;-><init>()V

    .line 70
    invoke-direct {p0, p1, p2, v1}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)Lorg/json/JSONObject;

    move-result-object v2

    .line 73
    const-string v0, "gzip"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 74
    if-eqz v0, :cond_85

    .line 75
    const-string v0, "form"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_50

    const-string v3, "quickpay"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 77
    const-string v3, "quickpay"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/alipay/sdk/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 80
    :try_start_2b
    invoke-static {v0}, Lcom/alipay/sdk/data/FrameUtils;->a([B)[B

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/alipay/sdk/encrypt/MD5;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string v4, "md5"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 84
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 85
    const-string v0, "form"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_50} :catch_71
    .catch Lcom/alipay/sdk/exception/UnZipException; {:try_start_2b .. :try_end_50} :catch_7a
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_50} :catch_7c

    .line 102
    :cond_50
    :goto_50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "responsestring decoded "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/alipay/sdk/protocol/FrameData;

    invoke-direct {v0, p2, v1}, Lcom/alipay/sdk/protocol/FrameData;-><init>(Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)V

    .line 104
    invoke-virtual {v0, v2}, Lcom/alipay/sdk/protocol/FrameData;->a(Lorg/json/JSONObject;)V

    .line 105
    if-eqz p3, :cond_89

    .line 108
    :goto_68
    return-object v0

    .line 87
    :cond_69
    :try_start_69
    new-instance v0, Lcom/alipay/sdk/exception/UnZipException;

    const-string v1, "client md5  not equal server md5"

    invoke-direct {v0, v1}, Lcom/alipay/sdk/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_71
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_69 .. :try_end_71} :catch_71
    .catch Lcom/alipay/sdk/exception/UnZipException; {:try_start_69 .. :try_end_71} :catch_7a
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_71} :catch_7c

    .line 91
    :catch_71
    move-exception v0

    new-instance v0, Lcom/alipay/sdk/exception/UnZipException;

    const-string v1, "unzip byte array unsupport encoding"

    invoke-direct {v0, v1}, Lcom/alipay/sdk/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :catch_7a
    move-exception v0

    throw v0

    .line 96
    :catch_7c
    move-exception v0

    new-instance v0, Lcom/alipay/sdk/exception/UnZipException;

    const-string v1, "unzip string not jsonObject"

    invoke-direct {v0, v1}, Lcom/alipay/sdk/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_85
    invoke-virtual {v1}, Lcom/alipay/sdk/data/Response;->b()V

    goto :goto_50

    .line 107
    :cond_89
    invoke-static {v0}, Lcom/alipay/sdk/protocol/FrameFactoryManager;->a(Lcom/alipay/sdk/protocol/FrameData;)Lcom/alipay/sdk/protocol/FrameData;

    move-result-object v0

    goto :goto_68
.end method
