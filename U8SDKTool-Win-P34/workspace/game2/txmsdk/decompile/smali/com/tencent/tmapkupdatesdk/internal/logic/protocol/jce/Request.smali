.class public final Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field static cache_body:[B

.field static cache_head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;


# instance fields
.field public body:[B

.field public head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    .line 13
    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->body:[B

    .line 17
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->cache_head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    if-nez v0, :cond_d

    .line 42
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;-><init>()V

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->cache_head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    .line 44
    :cond_d
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->cache_head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    .line 45
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->cache_body:[B

    if-nez v0, :cond_27

    .line 47
    new-array v0, v2, [B

    check-cast v0, [B

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->cache_body:[B

    .line 49
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->cache_body:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    .line 51
    :cond_27
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->cache_body:[B

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->body:[B

    .line 52
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 29
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->body:[B

    if-eqz v0, :cond_10

    .line 31
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->body:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 33
    :cond_10
    return-void
.end method
