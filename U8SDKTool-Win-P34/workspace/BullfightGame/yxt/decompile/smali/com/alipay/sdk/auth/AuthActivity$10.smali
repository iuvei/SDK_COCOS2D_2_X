.class Lcom/alipay/sdk/auth/AuthActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
    .registers 2

    .prologue
    .line 290
    iput-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$10;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 294
    new-instance v0, Lcom/alipay/sdk/auth/AuthActivity$10$1;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/auth/AuthActivity$10$1;-><init>(Lcom/alipay/sdk/auth/AuthActivity$10;)V

    invoke-virtual {v0}, Lcom/alipay/sdk/auth/AuthActivity$10$1;->start()V

    .line 301
    return-void
.end method
