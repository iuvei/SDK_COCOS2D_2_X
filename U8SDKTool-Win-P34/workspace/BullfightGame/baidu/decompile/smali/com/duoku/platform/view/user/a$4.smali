.class Lcom/duoku/platform/view/user/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/a;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/a$4;->a:Lcom/duoku/platform/view/user/a;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$4;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->g(Lcom/duoku/platform/view/user/a;)V

    .line 513
    return-void
.end method
