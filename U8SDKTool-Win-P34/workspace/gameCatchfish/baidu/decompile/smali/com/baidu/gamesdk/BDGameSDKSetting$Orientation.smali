.class public final enum Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/gamesdk/BDGameSDKSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LANDSCAPE:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

.field public static final enum PORTRAIT:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

.field private static final synthetic a:[Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->PORTRAIT:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    .line 47
    new-instance v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->LANDSCAPE:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    sget-object v1, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->PORTRAIT:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->LANDSCAPE:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->a:[Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->a:[Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    invoke-virtual {v0}, [Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    return-object v0
.end method
