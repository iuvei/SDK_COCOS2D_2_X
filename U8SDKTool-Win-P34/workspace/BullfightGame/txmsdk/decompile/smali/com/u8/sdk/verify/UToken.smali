.class public Lcom/u8/sdk/verify/UToken;
.super Ljava/lang/Object;
.source "UToken.java"


# instance fields
.field private extension:Ljava/lang/String;

.field private sdkUserID:Ljava/lang/String;

.field private sdkUsername:Ljava/lang/String;

.field private suc:Z

.field private token:Ljava/lang/String;

.field private userID:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/u8/sdk/verify/UToken;->suc:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/u8/sdk/verify/UToken;->userID:I

    iput-object p2, p0, Lcom/u8/sdk/verify/UToken;->sdkUserID:Ljava/lang/String;

    iput-object p3, p0, Lcom/u8/sdk/verify/UToken;->username:Ljava/lang/String;

    iput-object p4, p0, Lcom/u8/sdk/verify/UToken;->sdkUsername:Ljava/lang/String;

    iput-object p5, p0, Lcom/u8/sdk/verify/UToken;->token:Ljava/lang/String;

    iput-object p6, p0, Lcom/u8/sdk/verify/UToken;->extension:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/u8/sdk/verify/UToken;->suc:Z

    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/verify/UToken;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/verify/UToken;->sdkUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/verify/UToken;->sdkUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/verify/UToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()I
    .locals 1

    iget v0, p0, Lcom/u8/sdk/verify/UToken;->userID:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/verify/UToken;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isSuc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/u8/sdk/verify/UToken;->suc:Z

    return v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/u8/sdk/verify/UToken;->extension:Ljava/lang/String;

    return-void
.end method

.method public setSdkUserID(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/u8/sdk/verify/UToken;->sdkUserID:Ljava/lang/String;

    return-void
.end method

.method public setSdkUsername(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/u8/sdk/verify/UToken;->sdkUsername:Ljava/lang/String;

    return-void
.end method

.method public setSuc(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/u8/sdk/verify/UToken;->suc:Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/u8/sdk/verify/UToken;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserID(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/u8/sdk/verify/UToken;->userID:I

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/u8/sdk/verify/UToken;->username:Ljava/lang/String;

    return-void
.end method
