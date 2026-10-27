.class public abstract Landroid/media/IAudioManagerNative$Stub;
.super Landroid/os/Binder;
.source "IAudioManagerNative.java"

# interfaces
.implements Landroid/media/IAudioManagerNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioManagerNative$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_permissionUpdateBarrier:I = 0x2

.field static final blacklist TRANSACTION_playbackHardeningEvent:I = 0x1

.field static final blacklist TRANSACTION_portMuteEvent:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.media.IAudioManagerNative"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioManagerNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioManagerNative;
    .registers 3

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    const-string v0, "android.media.IAudioManagerNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IAudioManagerNative;

    if-eqz v1, :cond_13

    .line 69
    check-cast v0, Landroid/media/IAudioManagerNative;

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Landroid/media/IAudioManagerNative$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IAudioManagerNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    nop

    .line 80
    const-string v0, "android.media.IAudioManagerNative"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 87
    :cond_17
    packed-switch p1, :pswitch_data_4a

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 110
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, p1, p3}, Landroid/media/IAudioManagerNative$Stub;->portMuteEvent(II)V

    .line 115
    goto :goto_48

    .line 103
    :pswitch_2e
    invoke-virtual {p0}, Landroid/media/IAudioManagerNative$Stub;->permissionUpdateBarrier()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    goto :goto_48

    .line 92
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p3

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/IAudioManagerNative$Stub;->playbackHardeningEvent(IBZ)V

    .line 99
    nop

    .line 122
    :goto_48
    return v1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
