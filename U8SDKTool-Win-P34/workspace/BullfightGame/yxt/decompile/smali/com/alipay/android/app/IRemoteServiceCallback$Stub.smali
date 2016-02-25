.class public abstract Lcom/alipay/android/app/IRemoteServiceCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/app/IRemoteServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/IRemoteServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/IRemoteServiceCallback$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alipay.android.app.IRemoteServiceCallback"

.field static final TRANSACTION_isHideLoadingScreen:I = 0x3

.field static final TRANSACTION_payEnd:I = 0x2

.field static final TRANSACTION_startActivity:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.alipay.android.app.IRemoteServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IRemoteServiceCallback;
    .registers 3

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v0, "com.alipay.android.app.IRemoteServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/alipay/android/app/IRemoteServiceCallback;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/alipay/android/app/IRemoteServiceCallback;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/alipay/android/app/IRemoteServiceCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_62

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    .line 47
    :sswitch_a
    const-string v0, "com.alipay.android.app.IRemoteServiceCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v0, "com.alipay.android.app.IRemoteServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    .line 61
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 66
    :goto_2f
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 64
    :cond_36
    const/4 v0, 0x0

    goto :goto_2f

    .line 72
    :sswitch_38
    const-string v2, "com.alipay.android.app.IRemoteServiceCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_44

    move v0, v1

    .line 76
    :cond_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->payEnd(ZLjava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 83
    :sswitch_4f
    const-string v2, "com.alipay.android.app.IRemoteServiceCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->isHideLoadingScreen()Z

    move-result v2

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v2, :cond_5e

    move v0, v1

    :cond_5e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 43
    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_38
        0x3 -> :sswitch_4f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
