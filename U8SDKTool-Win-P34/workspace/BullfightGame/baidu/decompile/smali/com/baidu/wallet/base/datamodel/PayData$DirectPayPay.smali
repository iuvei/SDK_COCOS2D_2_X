.class public Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/base/datamodel/PayData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectPayPay"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6e0cf8b709cb7580L


# instance fields
.field public balance:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayBalance;

.field public composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

.field public easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public easypayMustPayAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->easypayMustPayAmount()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "1"

    goto :goto_a
.end method

.method public hasDiscountOrCoupon()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->hasDiscountOrCoupon()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
