.class Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;
.super Ljava/lang/Object;
.source "AIRExpandableFileChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AIRExpandableFileChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileInfo"
.end annotation


# instance fields
.field public mFileName:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mParent:Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

.field final synthetic this$0:Lcom/adobe/air/AIRExpandableFileChooser;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRExpandableFileChooser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mParent:Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    iput-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    return-void
.end method
