.class abstract Lcom/baidu/wallet/base/widget/r;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/LinearLayout$LayoutParams;

.field private h:Landroid/view/LayoutInflater;

.field private i:Landroid/view/View$OnClickListener;

.field protected mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "EbpayPromptDialog"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->style(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/baidu/wallet/base/widget/n;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/n;-><init>(Lcom/baidu/wallet/base/widget/r;)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/r;->i:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/baidu/wallet/base/widget/n;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/n;-><init>(Lcom/baidu/wallet/base/widget/r;)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/r;->i:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/r;->g:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addContentView(I)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/r;->h:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/r;->g:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addContentView(ILandroid/widget/LinearLayout$LayoutParams;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/r;->h:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public hideButtons()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    const-string v1, "dialog_btns"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideNegativeButton()V
    .registers 4

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->f:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    const-string v2, "wallet_base_dialog_btn_selector"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public hidePositiveButton()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->f:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    return-void
.end method

.method public hideTitle()V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    const-string v1, "dialog_title_line"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideTitleLine()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    const-string v1, "dialog_title_line"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, "BaseDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog. onCreate. savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/r;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    const-string v1, "wallet_base_layout_dialog_base"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/r;->setContentView(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    const-string v1, "dialog_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/r;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    const-string v1, "positive_btn"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    const-string v1, "negative_btn"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    const-string v1, "dialog_title_close"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/r;->e:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    const-string v1, "btn_line"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/r;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/r;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/r;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->e:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/r;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    const-string v1, "dialog_content_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/r;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/r;->g:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->g:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/r;->h:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v3}, Lcom/baidu/wallet/base/widget/r;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lcom/baidu/wallet/base/widget/r;->setCancelable(Z)V

    return-void
.end method

.method public setNegativeBtn(ILandroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/baidu/wallet/base/widget/r;->i:Landroid/view/View$OnClickListener;

    :cond_f
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    return-void
.end method

.method public setNegativeBtn(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/baidu/wallet/base/widget/r;->i:Landroid/view/View$OnClickListener;

    :cond_a
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method

.method public setNegativeBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->d:Landroid/widget/Button;

    if-nez p2, :cond_15

    iget-object p2, p0, Lcom/baidu/wallet/base/widget/r;->i:Landroid/view/View$OnClickListener;

    :cond_15
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    return-void
.end method

.method public setPositiveBtn(ILandroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/baidu/wallet/base/widget/r;->i:Landroid/view/View$OnClickListener;

    :cond_f
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    return-void
.end method

.method public setPositiveBtn(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/baidu/wallet/base/widget/r;->i:Landroid/view/View$OnClickListener;

    :cond_a
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method

.method public setPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->c:Landroid/widget/Button;

    if-nez p2, :cond_15

    iget-object p2, p0, Lcom/baidu/wallet/base/widget/r;->i:Landroid/view/View$OnClickListener;

    :cond_15
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    return-void
.end method

.method public setTitleText(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->a:Landroid/widget/TextView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4
.end method

.method public setTitleText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->a:Landroid/widget/TextView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setTitleTextBackgroud(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->a:Landroid/widget/TextView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_4
.end method

.method protected showCloseBtn()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/r;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_a
    return-void
.end method
