.class public abstract Landroid/hardware/display/IVirtualDisplayCallback$Stub;
.super Landroid/os/Binder;
.source "IVirtualDisplayCallback.java"

# interfaces
.implements Landroid/hardware/display/IVirtualDisplayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IVirtualDisplayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IVirtualDisplayCallback"

.field static final greylist-max-o TRANSACTION_onPaused:I = 0x1

.field static final greylist-max-o TRANSACTION_onResumed:I = 0x2

.field static final greylist-max-o TRANSACTION_onStopped:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.hardware.display.IVirtualDisplayCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;
    .registers 3

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_4
    const-string v0, "android.hardware.display.IVirtualDisplayCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/display/IVirtualDisplayCallback;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Landroid/hardware/display/IVirtualDisplayCallback;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 77
    packed-switch p0, :pswitch_data_e

    .line 93
    const/4 p0, 0x0

    return-object p0

    .line 89
    :pswitch_5
    const-string p0, "onStopped"

    return-object p0

    .line 85
    :pswitch_8
    const-string p0, "onResumed"

    return-object p0

    .line 81
    :pswitch_b
    const-string p0, "onPaused"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 209
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 100
    invoke-static {p1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    nop

    .line 105
    const-string v0, "android.hardware.display.IVirtualDisplayCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v1

    .line 112
    :cond_17
    packed-switch p1, :pswitch_data_2c

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 126
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->onStopped()V

    .line 127
    goto :goto_2b

    .line 121
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->onResumed()V

    .line 122
    goto :goto_2b

    .line 116
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->onPaused()V

    .line 117
    nop

    .line 134
    :goto_2b
    return v1

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
