.class Lcom/baidu/wallet/core/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/BaseActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/BaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/a;->a:Lcom/baidu/wallet/core/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/a;->a:Lcom/baidu/wallet/core/BaseActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    return-void
.end method
