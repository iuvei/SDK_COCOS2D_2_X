.class Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;)V
    .registers 2

    .prologue
    .line 591
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/c;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    .line 597
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/c;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->getClient()Lcom/tencent/tmassistant/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/c;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistant/b;->a(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_3b

    .line 600
    iget v1, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5d

    .line 602
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 603
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 604
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 605
    const-string v3, "receiveDataLen"

    iget-wide v4, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mReceiveDataLen:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 606
    const-string v3, "totalDataLen"

    iget-wide v4, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mTotalDataLen:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 607
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 608
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/c;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mMainMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 620
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_7d

    iget v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mState:I

    if-ne v0, v6, :cond_7d

    .line 622
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/g;->h()Lcom/tencent/tmassistantsdk/internal/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/c;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/c/g;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_5c

    .line 624
    iget v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installTipsCount:I

    .line 625
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/g;->h()Lcom/tencent/tmassistantsdk/internal/c/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/c/g;->a(Lcom/qq/taf/jce/JceStruct;)V

    .line 640
    :cond_5c
    :goto_5c
    return-void

    .line 609
    :cond_5d
    iget v1, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mState:I

    if-ne v1, v6, :cond_3b

    .line 611
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 612
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 613
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 614
    iget-object v2, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 615
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/c;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mMainMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_77} :catch_78

    goto :goto_3b

    .line 636
    :catch_78
    move-exception v0

    .line 637
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c

    .line 629
    :cond_7d
    :try_start_7d
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/g;->h()Lcom/tencent/tmassistantsdk/internal/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/c;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/c/g;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_5c

    .line 631
    iget v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadTipsCount:I

    .line 632
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/g;->h()Lcom/tencent/tmassistantsdk/internal/c/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/c/g;->a(Lcom/qq/taf/jce/JceStruct;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_98} :catch_78

    goto :goto_5c
.end method
