.class Lcom/baidu/wallet/core/plugins/pluginfake/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginfake/e;->a:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginfake/e;->a:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;->a(Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    :try_start_b
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginfake/e;->a:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPrepareDialog. DIALOG_NO_NETWORK. onClick"

    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method