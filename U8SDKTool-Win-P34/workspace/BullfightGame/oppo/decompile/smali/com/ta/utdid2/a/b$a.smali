.class final Lcom/ta/utdid2/a/b$a;
.super Ljava/lang/Thread;
.source "AidRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lorg/apache/http/client/methods/HttpPost;

.field b:Ljava/lang/String;

.field c:Lcom/ut/device/AidCallback;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field final synthetic g:Lcom/ta/utdid2/a/b;


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/a/b;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 1

    iput-object p1, p0, Lcom/ta/utdid2/a/b$a;->g:Lcom/ta/utdid2/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/a/b$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/a/b$a;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/ta/utdid2/a/b$a;->a:Lorg/apache/http/client/methods/HttpPost;

    return-void
.end method

.method public constructor <init>(Lcom/ta/utdid2/a/b;Lorg/apache/http/client/methods/HttpPost;Lcom/ut/device/AidCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/ta/utdid2/a/b$a;->g:Lcom/ta/utdid2/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/a/b$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/a/b$a;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/ta/utdid2/a/b$a;->a:Lorg/apache/http/client/methods/HttpPost;

    iput-object p3, p0, Lcom/ta/utdid2/a/b$a;->c:Lcom/ut/device/AidCallback;

    iput-object p4, p0, Lcom/ta/utdid2/a/b$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ta/utdid2/a/b$a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/ta/utdid2/a/b$a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final run()V
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0x3ea

    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->c:Lcom/ut/device/AidCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->c:Lcom/ut/device/AidCallback;

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/ta/utdid2/a/b$a;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/ta/utdid2/a/b$a;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_8

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v2, Lcom/ta/utdid2/b/a/c;->a:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p0, Lcom/ta/utdid2/a/b$a;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/ta/utdid2/a/b$a;->c:Lcom/ut/device/AidCallback;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ta/utdid2/a/b$a;->c:Lcom/ut/device/AidCallback;

    iget-object v3, p0, Lcom/ta/utdid2/a/b$a;->d:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    sget-boolean v0, Lcom/ta/utdid2/b/a/c;->a:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close the bufferreader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->c:Lcom/ut/device/AidCallback;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->g:Lcom/ta/utdid2/a/b;

    invoke-static {v0}, Lcom/ta/utdid2/a/b;->a(Lcom/ta/utdid2/a/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->g:Lcom/ta/utdid2/a/b;

    invoke-static {v0}, Lcom/ta/utdid2/a/b;->a(Lcom/ta/utdid2/a/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    return-void

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/ta/utdid2/a/b$a;->c:Lcom/ut/device/AidCallback;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ta/utdid2/a/b$a;->c:Lcom/ut/device/AidCallback;

    iget-object v3, p0, Lcom/ta/utdid2/a/b$a;->d:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_5
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "response is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v2, p0, Lcom/ta/utdid2/a/b$a;->c:Lcom/ut/device/AidCallback;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ta/utdid2/a/b$a;->c:Lcom/ut/device/AidCallback;

    iget-object v3, p0, Lcom/ta/utdid2/a/b$a;->d:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    :try_start_6
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BufferredReader is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ta/utdid2/a/b$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ta/utdid2/a/b$a;->c:Lcom/ut/device/AidCallback;

    const/16 v2, 0x3e9

    invoke-interface {v1, v2, v0}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/ta/utdid2/a/b$a;->g:Lcom/ta/utdid2/a/b;

    invoke-static {v1}, Lcom/ta/utdid2/a/b;->b(Lcom/ta/utdid2/a/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ta/utdid2/a/b$a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/ta/utdid2/a/b$a;->f:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/ta/utdid2/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
