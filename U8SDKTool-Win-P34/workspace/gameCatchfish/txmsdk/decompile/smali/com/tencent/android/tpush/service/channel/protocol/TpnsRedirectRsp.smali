.class public final Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public ip:J

.field public port:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    .line 47
    return-void
.end method

.method public constructor <init>(JI)V
    .registers 7

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    .line 51
    iput-wide p1, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    .line 52
    iput p3, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    .line 53
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    const-string v0, "TPNS_CLIENT_PROTOCOL.TpnsRedirectRsp"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 85
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 91
    :cond_5
    return-object v0

    .line 87
    :catch_6
    move-exception v1

    .line 89
    sget-boolean v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .registers 7

    .prologue
    .line 109
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 110
    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    const-string v1, "ip"

    invoke-virtual {v0, v2, v3, v1}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 111
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    const-string v2, "port"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 112
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .registers 7

    .prologue
    .line 116
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 117
    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(JZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 118
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 119
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p1, :cond_4

    .line 63
    :cond_3
    :goto_3
    return v0

    .line 62
    :cond_4
    check-cast p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;

    .line 63
    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    iget-wide v4, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    invoke-static {v2, v3, v4, v5}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    iget v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public fullClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    const-string v0, "com.tencent.android.tpush.service.channel.protocol.TpnsRedirectRsp"

    return-object v0
.end method

.method public getIp()J
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    return-wide v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 72
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    .line 74
    :catch_8
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    .line 104
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    .line 105
    return-void
.end method

.method public setIp(J)V
    .registers 4

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    .line 33
    return-void
.end method

.method public setPort(I)V
    .registers 2

    .prologue
    .line 42
    iput p1, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    .line 43
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .registers 5

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 97
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 98
    return-void
.end method
