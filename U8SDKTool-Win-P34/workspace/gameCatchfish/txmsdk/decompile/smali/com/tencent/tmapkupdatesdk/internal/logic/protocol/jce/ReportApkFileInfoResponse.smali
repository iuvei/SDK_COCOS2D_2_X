.class public final Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoResponse;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# instance fields
.field public ret:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoResponse;->ret:I

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .registers 5

    .prologue
    .line 31
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoResponse;->ret:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoResponse;->ret:I

    .line 32
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .registers 4

    .prologue
    .line 25
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoResponse;->ret:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 26
    return-void
.end method
