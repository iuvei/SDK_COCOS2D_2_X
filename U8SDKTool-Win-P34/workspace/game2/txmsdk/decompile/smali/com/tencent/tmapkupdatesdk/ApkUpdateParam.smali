.class public Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public actionFlag:I

.field public packageName:Ljava/lang/String;

.field public targetGrayVersionCode:I

.field public targetVersionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;->packageName:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;->actionFlag:I

    .line 27
    iput p3, p0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;->targetVersionCode:I

    .line 28
    return-void
.end method
