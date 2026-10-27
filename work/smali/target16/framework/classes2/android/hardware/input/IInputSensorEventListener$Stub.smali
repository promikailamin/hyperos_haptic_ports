.class public abstract Landroid/hardware/input/IInputSensorEventListener$Stub;
.super Landroid/os/Binder;
.source "IInputSensorEventListener.java"

# interfaces
.implements Landroid/hardware/input/IInputSensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputSensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onInputSensorAccuracyChanged:I = 0x2

.field static final blacklist TRANSACTION_onInputSensorChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.hardware.input.IInputSensorEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputSensorEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.hardware.input.IInputSensorEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/input/IInputSensorEventListener;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/hardware/input/IInputSensorEventListener;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 60
    packed-switch p0, :pswitch_data_c

    .line 72
    const/4 p0, 0x0

    return-object p0

    .line 68
    :pswitch_5
    const-string p0, "onInputSensorAccuracyChanged"

    return-object p0

    .line 64
    :pswitch_8
    const-string p0, "onInputSensorChanged"

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 79
    invoke-static {p1}, Landroid/hardware/input/IInputSensorEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    nop

    .line 84
    const-string v0, "android.hardware.input.IInputSensorEventListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 91
    :cond_17
    packed-switch p1, :pswitch_data_50

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 112
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/input/IInputSensorEventListener$Stub;->onInputSensorAccuracyChanged(III)V

    .line 119
    goto :goto_4e

    .line 96
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v8

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/input/IInputSensorEventListener$Stub;->onInputSensorChanged(IIIJ[F)V

    .line 107
    nop

    .line 126
    :goto_4e
    return v1

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
