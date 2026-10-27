.class public abstract Landroid/hardware/hdmi/IHdmiRecordListener$Stub;
.super Landroid/os/Binder;
.source "IHdmiRecordListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiRecordListener"

.field static final greylist-max-o TRANSACTION_getOneTouchRecordSource:I = 0x1

.field static final greylist-max-o TRANSACTION_onClearTimerRecordingResult:I = 0x4

.field static final greylist-max-o TRANSACTION_onOneTouchRecordResult:I = 0x2

.field static final greylist-max-o TRANSACTION_onTimerRecordingResult:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "android.hardware.hdmi.IHdmiRecordListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiRecordListener;
    .registers 3

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_4
    const-string v0, "android.hardware.hdmi.IHdmiRecordListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiRecordListener;

    if-eqz v1, :cond_13

    .line 81
    check-cast v0, Landroid/hardware/hdmi/IHdmiRecordListener;

    return-object v0

    .line 83
    :cond_13
    new-instance v0, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 92
    packed-switch p0, :pswitch_data_12

    .line 112
    const/4 p0, 0x0

    return-object p0

    .line 108
    :pswitch_5
    const-string p0, "onClearTimerRecordingResult"

    return-object p0

    .line 104
    :pswitch_8
    const-string p0, "onTimerRecordingResult"

    return-object p0

    .line 100
    :pswitch_b
    const-string p0, "onOneTouchRecordResult"

    return-object p0

    .line 96
    :pswitch_e
    const-string p0, "getOneTouchRecordSource"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 87
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 301
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 119
    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 123
    nop

    .line 124
    const-string v0, "android.hardware.hdmi.IHdmiRecordListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 131
    :cond_17
    packed-switch p1, :pswitch_data_68

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 168
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->onClearTimerRecordingResult(II)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    goto :goto_67

    .line 157
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->onTimerRecordingResult(II)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_67

    .line 146
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->onOneTouchRecordResult(II)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_67

    .line 136
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->getOneTouchRecordSource(I)[B

    move-result-object p1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 141
    nop

    .line 181
    :goto_67
    return v1

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_55
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
