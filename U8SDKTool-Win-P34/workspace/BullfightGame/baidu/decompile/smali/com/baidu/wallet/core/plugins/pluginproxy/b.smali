.class Lcom/baidu/wallet/core/plugins/pluginproxy/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/b;->a:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/b;->a:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->a()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_27} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_27} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    :goto_27
    return-object v0

    :catch_28
    move-exception v0

    :goto_29
    const/4 v0, 0x0

    goto :goto_27

    :catch_2b
    move-exception v0

    goto :goto_29

    :catch_2d
    move-exception v0

    goto :goto_29
.end method
