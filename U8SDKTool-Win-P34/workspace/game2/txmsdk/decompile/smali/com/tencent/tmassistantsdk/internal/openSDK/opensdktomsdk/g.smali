.class Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 963
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iput-object p2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 971
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 973
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->addDownloadTaskFromAuthorize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->insertActionId:J

    .line 976
    :cond_24
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->getClient()Lcom/tencent/tmassistant/b;

    move-result-object v0

    .line 978
    if-nez v0, :cond_2d

    .line 1032
    :cond_2c
    :goto_2c
    return-void

    .line 983
    :cond_2d
    :try_start_2d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 984
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->b:Ljava/lang/String;

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/tmassistant/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    .line 986
    if-ne v5, v1, :cond_78

    .line 987
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistant/b;->a(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    .line 990
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 991
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 992
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 993
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mMainMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1012
    :goto_55
    if-ne v1, v5, :cond_ab

    .line 1014
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/g;->h()Lcom/tencent/tmassistantsdk/internal/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/c/g;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    move-result-object v0

    .line 1015
    if-eqz v0, :cond_2c

    .line 1016
    iget v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->installBtnClickCount:I

    .line 1017
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/g;->h()Lcom/tencent/tmassistantsdk/internal/c/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/c/g;->a(Lcom/qq/taf/jce/JceStruct;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_72} :catch_73

    goto :goto_2c

    .line 1027
    :catch_73
    move-exception v0

    .line 1028
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    .line 995
    :cond_78
    if-nez v1, :cond_82

    .line 996
    :try_start_7a
    const-string v0, "OpensdkToMsdkManager"

    const-string v2, "start success!"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 997
    :cond_82
    if-ne v4, v1, :cond_9b

    .line 1000
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1001
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1002
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1003
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mMainMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_55

    .line 1006
    :cond_9b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1007
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1008
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mMainMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_55

    .line 1021
    :cond_ab
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/g;->h()Lcom/tencent/tmassistantsdk/internal/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/c/g;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    move-result-object v0

    .line 1022
    if-eqz v0, :cond_2c

    .line 1023
    iget v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->downloadBtnClickCount:I

    .line 1024
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/g;->h()Lcom/tencent/tmassistantsdk/internal/c/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/c/g;->a(Lcom/qq/taf/jce/JceStruct;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_c6} :catch_73

    goto/16 :goto_2c
.end method
