.class public final Lcom/unionpay/mobile/android/model/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/model/c;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/unionpay/mobile/android/model/a;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/model/a;->b:I

    iput-object v1, p0, Lcom/unionpay/mobile/android/model/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mobile/android/model/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mobile/android/model/a;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mobile/android/model/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mobile/android/model/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mobile/android/model/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/unionpay/mobile/android/model/a;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/model/a;->b:I

    iput-object v1, p0, Lcom/unionpay/mobile/android/model/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mobile/android/model/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mobile/android/model/a;->e:Ljava/lang/String;

    iput p1, p0, Lcom/unionpay/mobile/android/model/a;->b:I

    iput p5, p0, Lcom/unionpay/mobile/android/model/a;->a:I

    iput-object p2, p0, Lcom/unionpay/mobile/android/model/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/unionpay/mobile/android/model/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/model/a;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/model/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/model/a;->f:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/model/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/unionpay/mobile/android/model/a;->b:I

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/unionpay/mobile/android/model/a;->a:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/unionpay/mobile/android/model/a;->b:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/unionpay/mobile/android/model/a;->d:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "<font color=\"#FF0000\">%s</font>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unionpay/mobile/android/model/a;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/model/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/model/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
