.class public final Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic a:Z


# instance fields
.field public authorizedBtnClickCount:I

.field public authorizedTipsCount:I

.field public cancelBtnClickCount:I

.field public downloadBtnClickCount:I

.field public downloadTipsCount:I

.field public gameChannelId:Ljava/lang/String;

.field public gamePackageName:Ljava/lang/String;

.field public gameVersionCode:I

.field public installBtnClickCount:I

.field public installTipsCount:I

.field public networkErrorTipsCount:I

.field public userId:Ljava/lang/String;

.field public userIdType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    .line 33
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    .line 35
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    .line 37
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    .line 39
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    .line 41
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    .line 43
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    .line 45
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    .line 33
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    .line 35
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    .line 37
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    .line 39
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    .line 41
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    .line 43
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    .line 45
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    .line 183
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    .line 185
    iput-object p3, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    .line 186
    iput p4, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    .line 187
    iput-object p5, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    .line 188
    iput p6, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    .line 189
    iput p7, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    .line 190
    iput p8, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    .line 191
    iput p9, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    .line 192
    iput p10, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    .line 193
    iput p11, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    .line 194
    iput p12, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    .line 195
    iput p13, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    .line 196
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    const-string v0, "jce.TipsInfoLog"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 239
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 245
    :cond_5
    return-object v0

    .line 241
    :catch_6
    move-exception v1

    .line 243
    sget-boolean v1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->a:Z

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .registers 6

    .prologue
    .line 297
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 298
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    const-string v2, "userId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 299
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    const-string v2, "userIdType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 300
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    const-string v2, "gamePackageName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 301
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    const-string v2, "gameVersionCode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 302
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    const-string v2, "gameChannelId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 303
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    const-string v2, "authorizedTipsCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 304
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    const-string v2, "downloadTipsCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 305
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    const-string v2, "installTipsCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 306
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    const-string v2, "networkErrorTipsCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 307
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    const-string v2, "cancelBtnClickCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 308
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    const-string v2, "downloadBtnClickCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 309
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    const-string v2, "installBtnClickCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 310
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    const-string v2, "authorizedBtnClickCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 311
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 315
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 316
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/lang/String;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 317
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/lang/String;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 318
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/lang/String;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 319
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 320
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/lang/String;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 321
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 322
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 323
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 324
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 325
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 326
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 327
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 328
    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 329
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 200
    if-nez p1, :cond_4

    .line 206
    :cond_3
    :goto_3
    return v0

    .line 205
    :cond_4
    check-cast p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    .line 206
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto/16 :goto_3
.end method

.method public fullClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    const-string v0, "com.tencent.tmassistantsdk.internal.protocol.jce.TipsInfoLog"

    return-object v0
.end method

.method public getAuthorizedBtnClickCount()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    return v0
.end method

.method public getAuthorizedTipsCount()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    return v0
.end method

.method public getCancelBtnClickCount()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    return v0
.end method

.method public getDownloadBtnClickCount()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    return v0
.end method

.method public getDownloadTipsCount()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    return v0
.end method

.method public getGameChannelId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getGamePackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getGameVersionCode()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    return v0
.end method

.method public getInstallBtnClickCount()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    return v0
.end method

.method public getInstallTipsCount()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    return v0
.end method

.method public getNetworkErrorTipsCount()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 226
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    .line 228
    :catch_8
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    .line 282
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    .line 283
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    .line 284
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    .line 285
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    .line 286
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    .line 287
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    .line 288
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    .line 289
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    .line 290
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    .line 291
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    .line 292
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    .line 293
    return-void
.end method

.method public setAuthorizedBtnClickCount(I)V
    .registers 2

    .prologue
    .line 174
    iput p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    .line 175
    return-void
.end method

.method public setAuthorizedTipsCount(I)V
    .registers 2

    .prologue
    .line 104
    iput p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    .line 105
    return-void
.end method

.method public setCancelBtnClickCount(I)V
    .registers 2

    .prologue
    .line 144
    iput p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    .line 145
    return-void
.end method

.method public setDownloadBtnClickCount(I)V
    .registers 2

    .prologue
    .line 154
    iput p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    .line 155
    return-void
.end method

.method public setDownloadTipsCount(I)V
    .registers 2

    .prologue
    .line 114
    iput p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    .line 115
    return-void
.end method

.method public setGameChannelId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setGamePackageName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setGameVersionCode(I)V
    .registers 2

    .prologue
    .line 84
    iput p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    .line 85
    return-void
.end method

.method public setInstallBtnClickCount(I)V
    .registers 2

    .prologue
    .line 164
    iput p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    .line 165
    return-void
.end method

.method public setInstallTipsCount(I)V
    .registers 2

    .prologue
    .line 124
    iput p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    .line 125
    return-void
.end method

.method public setNetworkErrorTipsCount(I)V
    .registers 2

    .prologue
    .line 134
    iput p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    .line 135
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setUserIdType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .registers 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 252
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 254
    :cond_a
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 256
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 258
    :cond_14
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 260
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 262
    :cond_1e
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 263
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 265
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 267
    :cond_2e
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 268
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 269
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 270
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 271
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 272
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 273
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 274
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 275
    return-void
.end method
