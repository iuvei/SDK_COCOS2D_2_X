.class final Lcom/unionpay/mobile/android/widgets/ae$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/widgets/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/ae;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/widgets/ae;Lorg/json/JSONObject;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ae$a;->a:Lcom/unionpay/mobile/android/widgets/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae$a;->d:Ljava/lang/String;

    const-string v0, "pattern"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae$a;->b:Ljava/lang/String;

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae$a;->c:Ljava/lang/String;

    const-string v0, "isCheck"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ae$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, "false"

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ae$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    :cond_10
    return v0
.end method
