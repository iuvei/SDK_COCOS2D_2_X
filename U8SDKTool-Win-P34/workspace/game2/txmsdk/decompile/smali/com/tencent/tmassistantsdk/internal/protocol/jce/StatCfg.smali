.class public final Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic a:Z


# instance fields
.field public internal:I

.field public lineNum:S

.field public netType:B

.field public type:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    .line 23
    iput-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    .line 25
    iput-short v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    .line 27
    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

    .line 71
    return-void
.end method

.method public constructor <init>(BBSI)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    .line 23
    iput-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    .line 25
    iput-short v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    .line 27
    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

    .line 75
    iput-byte p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    .line 76
    iput-byte p2, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    .line 77
    iput-short p3, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    .line 78
    iput p4, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

    .line 79
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    const-string v0, "jce.StatCfg"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 113
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 119
    :cond_5
    return-object v0

    .line 115
    :catch_6
    move-exception v1

    .line 117
    sget-boolean v1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->a:Z

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .registers 6

    .prologue
    .line 141
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 142
    iget-byte v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 143
    iget-byte v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    const-string v2, "netType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 144
    iget-short v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    const-string v2, "lineNum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 145
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

    const-string v2, "internal"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 146
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 150
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 151
    iget-byte v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(BZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 152
    iget-byte v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(BZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 153
    iget-short v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(SZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 154
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 155
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p1, :cond_4

    .line 89
    :cond_3
    :goto_3
    return v0

    .line 88
    :cond_4
    check-cast p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;

    .line 89
    iget-byte v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    iget-byte v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-byte v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    iget-byte v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-short v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    iget-short v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

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
    const-string v0, "com.tencent.tmassistantsdk.internal.protocol.jce.StatCfg"

    return-object v0
.end method

.method public getInternal()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

    return v0
.end method

.method public getLineNum()S
    .registers 2

    .prologue
    .line 51
    iget-short v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    return v0
.end method

.method public getNetType()B
    .registers 2

    .prologue
    .line 41
    iget-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    return v0
.end method

.method public getType()B
    .registers 2

    .prologue
    .line 31
    iget-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    .line 102
    :catch_8
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    iget-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    .line 134
    iget-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    .line 135
    iget-short v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    .line 136
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

    .line 137
    return-void
.end method

.method public setInternal(I)V
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

    .line 67
    return-void
.end method

.method public setLineNum(S)V
    .registers 2

    .prologue
    .line 56
    iput-short p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    .line 57
    return-void
.end method

.method public setNetType(B)V
    .registers 2

    .prologue
    .line 46
    iput-byte p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    .line 47
    return-void
.end method

.method public setType(B)V
    .registers 2

    .prologue
    .line 36
    iput-byte p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    .line 37
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .registers 4

    .prologue
    .line 124
    iget-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->type:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 125
    iget-byte v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->netType:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 126
    iget-short v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->lineNum:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 127
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatCfg;->internal:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 128
    return-void
.end method
