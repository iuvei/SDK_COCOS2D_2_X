.class abstract Lcom/tencent/open/LocationApi$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/LocationApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/LocationApi;


# direct methods
.method private constructor <init>(Lcom/tencent/open/LocationApi;)V
    .registers 2

    .prologue
    .line 283
    iput-object p1, p0, Lcom/tencent/open/LocationApi$a;->a:Lcom/tencent/open/LocationApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/LocationApi;Lcom/tencent/open/LocationApi$1;)V
    .registers 3

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/tencent/open/LocationApi$a;-><init>(Lcom/tencent/open/LocationApi;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Exception;)V
.end method

.method public onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;)V
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 304
    return-void
.end method

.method public onHttpStatusException(Lcom/tencent/open/utils/HttpUtils$HttpStatusException;)V
    .registers 2

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 319
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 289
    return-void
.end method

.method public onJSONException(Lorg/json/JSONException;)V
    .registers 2

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 299
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;)V
    .registers 2

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 294
    return-void
.end method

.method public onNetworkUnavailableException(Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;)V
    .registers 2

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 314
    return-void
.end method

.method public onSocketTimeoutException(Ljava/net/SocketTimeoutException;)V
    .registers 2

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 309
    return-void
.end method

.method public onUnknowException(Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 324
    return-void
.end method