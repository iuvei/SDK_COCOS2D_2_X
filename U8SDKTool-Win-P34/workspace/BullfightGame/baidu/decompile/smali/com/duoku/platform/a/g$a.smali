.class Lcom/duoku/platform/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/Button;

.field e:Landroid/widget/ImageView;

.field final synthetic f:Lcom/duoku/platform/a/g;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/a/g;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lcom/duoku/platform/a/g$a;->f:Lcom/duoku/platform/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/a/g;Lcom/duoku/platform/a/g$a;)V
    .registers 3

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/duoku/platform/a/g$a;-><init>(Lcom/duoku/platform/a/g;)V

    return-void
.end method
