.class Lcom/u8/sdk/BaiduSDK$4;
.super Ljava/lang/Object;
.source "BaiduSDK.java"

# interfaces
.implements Lcom/baidu/gamesdk/IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/BaiduSDK;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/gamesdk/IResponse",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/BaiduSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/BaiduSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/BaiduSDK$4;->this$0:Lcom/u8/sdk/BaiduSDK;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/u8/sdk/BaiduSDK$4;->onResponse(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 12
    .param p1, "resultCode"    # I
    .param p2, "resultDesc"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/Void;

    .prologue
    const/4 v7, 0x5

    .line 146
    sparse-switch p1, :sswitch_data_56

    .line 173
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "login failed."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 177
    :goto_1a
    return-void

    .line 148
    :sswitch_1b
    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->getLoginUid()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->getLoginAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "token":Ljava/lang/String;
    const/4 v0, -0x1

    .line 162
    .local v0, "requesttype":I
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 163
    iget-object v4, p0, Lcom/u8/sdk/BaiduSDK$4;->this$0:Lcom/u8/sdk/BaiduSDK;

    # invokes: Lcom/u8/sdk/BaiduSDK;->encodeLoginResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v0, v3, v2}, Lcom/u8/sdk/BaiduSDK;->access$2(Lcom/u8/sdk/BaiduSDK;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/u8/sdk/BaiduSDK$4;->this$0:Lcom/u8/sdk/BaiduSDK;

    invoke-virtual {v4}, Lcom/u8/sdk/BaiduSDK;->ShowfloatView()V

    goto :goto_1a

    .line 169
    .end local v0    # "requesttype":I
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "uid":Ljava/lang/String;
    :sswitch_3f
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "login cancelled."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_1a

    .line 146
    :sswitch_data_56
    .sparse-switch
        -0x14 -> :sswitch_3f
        0x0 -> :sswitch_1b
    .end sparse-switch
.end method
