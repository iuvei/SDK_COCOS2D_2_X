.class final Lcom/unionpay/mobile/android/widgets/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/UPWidget;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/UPWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/av;->a:Lcom/unionpay/mobile/android/widgets/UPWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 3

    const-string v0, "uppay"

    const-string v1, "onGlobalLayout() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/av;->a:Lcom/unionpay/mobile/android/widgets/UPWidget;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->a(Lcom/unionpay/mobile/android/widgets/UPWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/av;->a:Lcom/unionpay/mobile/android/widgets/UPWidget;

    invoke-static {v1}, Lcom/unionpay/mobile/android/widgets/UPWidget;->a(Lcom/unionpay/mobile/android/widgets/UPWidget;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/unionpay/mobile/android/widgets/UPWidget;->l()I

    move-result v1

    if-gt v0, v1, :cond_31

    invoke-static {}, Lcom/unionpay/mobile/android/widgets/UPWidget;->l()I

    move-result v1

    if-gt v0, v1, :cond_31

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/av;->a:Lcom/unionpay/mobile/android/widgets/UPWidget;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->k()V

    :cond_31
    const-string v0, "uppay"

    const-string v1, "onGlobalLayout() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
