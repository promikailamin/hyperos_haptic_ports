.class public abstract Landroid/telephony/mbms/IStreamingServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IStreamingServiceCallback.java"

# interfaces
.implements Landroid/telephony/mbms/IStreamingServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/IStreamingServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IStreamingServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.IStreamingServiceCallback"

.field static final greylist-max-o TRANSACTION_onBroadcastSignalStrengthUpdated:I = 0x4

.field static final greylist-max-o TRANSACTION_onError:I = 0x1

.field static final greylist-max-o TRANSACTION_onMediaDescriptionUpdated:I = 0x3

.field static final greylist-max-o TRANSACTION_onStreamMethodUpdated:I = 0x5

.field static final greylist-max-o TRANSACTION_onStreamStateUpdated:I = 0x2


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.telephony.mbms.IStreamingServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IStreamingServiceCallback;
    .registers 3

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_4
    const-string v0, "android.telephony.mbms.IStreamingServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/mbms/IStreamingServiceCallback;

    if-eqz v1, :cond_13

    .line 56
    check-cast v0, Landroid/telephony/mbms/IStreamingServiceCallback;

    return-object v0

    .line 58
    :cond_13
    new-instance v0, Landroid/telephony/mbms/IStreamingServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 67
    packed-switch p0, :pswitch_data_14

    .line 91
    const/4 p0, 0x0

    return-object p0

    .line 87
    :pswitch_5
    const-string p0, "onStreamMethodUpdated"

    return-object p0

    .line 83
    :pswitch_8
    const-string p0, "onBroadcastSignalStrengthUpdated"

    return-object p0

    .line 79
    :pswitch_b
    const-string p0, "onMediaDescriptionUpdated"

    return-object p0

    .line 75
    :pswitch_e
    const-string p0, "onStreamStateUpdated"

    return-object p0

    .line 71
    :pswitch_11
    const-string p0, "onError"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 247
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 98
    invoke-static {p1}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 102
    nop

    .line 103
    const-string v0, "android.telephony.mbms.IStreamingServiceCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 107
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 110
    :cond_17
    packed-switch p1, :pswitch_data_58

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 148
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->onStreamMethodUpdated(I)V

    .line 151
    goto :goto_57

    .line 140
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->onBroadcastSignalStrengthUpdated(I)V

    .line 143
    goto :goto_57

    .line 134
    :pswitch_35
    invoke-virtual {p0}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->onMediaDescriptionUpdated()V

    .line 135
    goto :goto_57

    .line 125
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1, p3}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->onStreamStateUpdated(II)V

    .line 130
    goto :goto_57

    .line 115
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, p1, p3}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->onError(ILjava/lang/String;)V

    .line 120
    nop

    .line 158
    :goto_57
    return v1

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_48
        :pswitch_39
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
