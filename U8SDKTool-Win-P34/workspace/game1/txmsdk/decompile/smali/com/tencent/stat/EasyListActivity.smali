.class public Lcom/tencent/stat/EasyListActivity;
.super Landroid/app/ListActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    invoke-static {p0}, Lcom/tencent/stat/StatService;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-static {p0}, Lcom/tencent/stat/StatService;->onResume(Landroid/content/Context;)V

    return-void
.end method
