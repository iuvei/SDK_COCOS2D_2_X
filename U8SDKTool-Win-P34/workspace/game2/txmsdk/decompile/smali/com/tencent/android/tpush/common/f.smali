.class final Lcom/tencent/android/tpush/common/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .registers 5

    .prologue
    .line 83
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 84
    iget v1, p2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 85
    if-le v0, v1, :cond_10

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_f
    return v0

    :cond_10
    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    goto :goto_f

    :cond_14
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 80
    check-cast p1, Landroid/net/wifi/ScanResult;

    check-cast p2, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/common/f;->a(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I

    move-result v0

    return v0
.end method
