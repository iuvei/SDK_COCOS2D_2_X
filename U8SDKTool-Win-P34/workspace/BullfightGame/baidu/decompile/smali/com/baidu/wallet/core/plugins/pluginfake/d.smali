.class Lcom/baidu/wallet/core/plugins/pluginfake/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginfake/d;->a:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginfake/d;->a:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;->a(Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    return-void
.end method