.class public final enum Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

.field public static final enum DOWNLOADCOMPLETE:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

.field public static final enum DOWNLOADING:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

.field public static final enum INIT:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

.field public static final enum LOAD:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

.field public static final enum ORIGINAL:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;


# instance fields
.field private statusValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->ORIGINAL:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->INIT:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->DOWNLOADING:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    const-string v1, "DOWNLOADCOMPLETE"

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->DOWNLOADCOMPLETE:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    const-string v1, "LOAD"

    invoke-direct {v0, v1, v6, v6}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->LOAD:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    sget-object v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->ORIGINAL:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->INIT:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->DOWNLOADING:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->DOWNLOADCOMPLETE:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->LOAD:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->$VALUES:[Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->statusValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;
    .registers 2

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->$VALUES:[Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v0}, [Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    return-object v0
.end method


# virtual methods
.method public getStatusEnum(I)Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;
    .registers 7

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->values()[Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    iget v4, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->statusValue:I

    if-ne v4, p1, :cond_10

    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->statusValue:I

    return v0
.end method
