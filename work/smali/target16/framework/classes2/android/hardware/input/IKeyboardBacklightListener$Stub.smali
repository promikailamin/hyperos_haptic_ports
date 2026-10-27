.class public abstract Landroid/hardware/input/IKeyboardBacklightListener$Stub;
.super Landroid/os/Binder;
.source "IKeyboardBacklightListener.java"

# interfaces
.implements Landroid/hardware/input/IKeyboardBacklightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IKeyboardBacklightListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IKeyboardBacklightListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBrightnessChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "android.hardware.input.IKeyboardBacklightListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IKeyboardBacklightListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyboardBacklightListener;
    .registers 3

    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_4
    const-string v0, "android.hardware.input.IKeyboardBacklightListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/input/IKeyboardBacklightListener;

    if-eqz v1, :cond_13

    .line 45
    check-cast v0, Landroid/hardware/input/IKeyboardBacklightListener;

    return-object v0

    .line 47
    :cond_13
    new-instance v0, Landroid/hardware/input/IKeyboardBacklightListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/input/IKeyboardBacklightListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 56
    packed-switch p0, :pswitch_data_8

    .line 64
    const/4 p0, 0x0

    return-object p0

    .line 60
    :pswitch_5
    const-string p0, "onBrightnessChanged"

    return-object p0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 51
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 71
    invoke-static {p1}, Landroid/hardware/input/IKeyboardBacklightListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 75
    nop

    .line 76
    const-string v0, "android.hardware.input.IKeyboardBacklightListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 80
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return v1

    .line 83
    :cond_17
    packed-switch p1, :pswitch_data_38

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 88
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 90
    sget-object p3, Landroid/hardware/input/IKeyboardBacklightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/IKeyboardBacklightState;

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/input/IKeyboardBacklightListener$Stub;->onBrightnessChanged(ILandroid/hardware/input/IKeyboardBacklightState;Z)V

    .line 95
    nop

    .line 102
    return v1

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
