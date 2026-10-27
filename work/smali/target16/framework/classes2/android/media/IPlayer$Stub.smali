.class public abstract Landroid/media/IPlayer$Stub;
.super Landroid/os/Binder;
.source "IPlayer.java"

# interfaces
.implements Landroid/media/IPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IPlayer"

.field static final greylist-max-o TRANSACTION_applyVolumeShaper:I = 0x7

.field static final greylist-max-o TRANSACTION_pause:I = 0x2

.field static final greylist-max-o TRANSACTION_setPan:I = 0x5

.field static final greylist-max-o TRANSACTION_setStartDelayMs:I = 0x6

.field static final greylist-max-o TRANSACTION_setVolume:I = 0x4

.field static final greylist-max-o TRANSACTION_start:I = 0x1

.field static final greylist-max-o TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.media.IPlayer"

    invoke-virtual {p0, p0, v0}, Landroid/media/IPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;
    .registers 3

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_4
    const-string v0, "android.media.IPlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IPlayer;

    if-eqz v1, :cond_13

    .line 62
    check-cast v0, Landroid/media/IPlayer;

    return-object v0

    .line 64
    :cond_13
    new-instance v0, Landroid/media/IPlayer$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 73
    packed-switch p0, :pswitch_data_1a

    .line 105
    const/4 p0, 0x0

    return-object p0

    .line 101
    :pswitch_5
    const-string p0, "applyVolumeShaper"

    return-object p0

    .line 97
    :pswitch_8
    const-string p0, "setStartDelayMs"

    return-object p0

    .line 93
    :pswitch_b
    const-string p0, "setPan"

    return-object p0

    .line 89
    :pswitch_e
    const-string p0, "setVolume"

    return-object p0

    .line 85
    :pswitch_11
    const-string p0, "stop"

    return-object p0

    .line 81
    :pswitch_14
    const-string p0, "pause"

    return-object p0

    .line 77
    :pswitch_17
    const-string p0, "start"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 292
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 112
    invoke-static {p1}, Landroid/media/IPlayer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 116
    nop

    .line 117
    const-string v0, "android.media.IPlayer"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v1

    .line 124
    :cond_17
    packed-switch p1, :pswitch_data_64

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 168
    :pswitch_1f
    sget-object p1, Landroid/media/VolumeShaperConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/VolumeShaperConfiguration;

    .line 170
    sget-object p3, Landroid/media/VolumeShaperOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/VolumeShaperOperation;

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, p1, p3}, Landroid/media/IPlayer$Stub;->applyVolumeShaper(Landroid/media/VolumeShaperConfiguration;Landroid/media/VolumeShaperOperation;)V

    .line 173
    goto :goto_63

    .line 160
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, p1}, Landroid/media/IPlayer$Stub;->setStartDelayMs(I)V

    .line 163
    goto :goto_63

    .line 152
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, p1}, Landroid/media/IPlayer$Stub;->setPan(F)V

    .line 155
    goto :goto_63

    .line 144
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, p1}, Landroid/media/IPlayer$Stub;->setVolume(F)V

    .line 147
    goto :goto_63

    .line 138
    :pswitch_57
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->stop()V

    .line 139
    goto :goto_63

    .line 133
    :pswitch_5b
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->pause()V

    .line 134
    goto :goto_63

    .line 128
    :pswitch_5f
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->start()V

    .line 129
    nop

    .line 180
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_4c
        :pswitch_41
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
