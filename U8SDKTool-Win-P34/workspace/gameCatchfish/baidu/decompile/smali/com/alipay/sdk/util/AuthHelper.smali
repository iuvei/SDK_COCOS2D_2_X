.class public Lcom/alipay/sdk/util/AuthHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final c:I = 0x49


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/alipay/sdk/app/AuthTask;

    sput-object v0, Lcom/alipay/sdk/util/AuthHelper;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 31
    invoke-static {p0}, Lcom/alipay/sdk/util/AuthHelper;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 32
    new-instance v1, Lcom/alipay/sdk/util/PayHelper;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/util/PayHelper;-><init>(Landroid/app/Activity;)V

    .line 35
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&bizcontext=\"{\"appkey\":\"2014052600006128\"}\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_26
    invoke-virtual {v1, v0}, Lcom/alipay/sdk/util/PayHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 42
    invoke-static {p0, p1}, Lcom/alipay/sdk/util/AuthHelper;->b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_34
    :goto_34
    return-object v0

    .line 38
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&bizcontext={\"appkey\":\"2014052600006128\"}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 46
    :cond_49
    invoke-static {p0, p1}, Lcom/alipay/sdk/util/AuthHelper;->b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 73
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 74
    const-string v2, "com.eg.android.AlipayGphone"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 76
    if-nez v1, :cond_10

    .line 84
    :cond_f
    :goto_f
    return v0

    .line 78
    :cond_10
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_12} :catch_18

    .line 79
    const/16 v2, 0x49

    if-lt v1, v2, :cond_f

    .line 84
    const/4 v0, 0x1

    goto :goto_f

    .line 82
    :catch_18
    move-exception v1

    goto :goto_f
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v1, "params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 55
    sget-object v1, Lcom/alipay/sdk/util/AuthHelper;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_12
    sget-object v0, Lcom/alipay/sdk/util/AuthHelper;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_2a
    .catchall {:try_start_12 .. :try_end_17} :catchall_27

    .line 59
    :goto_17
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_27

    .line 63
    invoke-static {}, Lcom/alipay/sdk/app/Result;->a()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 65
    invoke-static {}, Lcom/alipay/sdk/app/Result;->b()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_26
    return-object v0

    .line 59
    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_2a
    move-exception v0

    goto :goto_17
.end method
