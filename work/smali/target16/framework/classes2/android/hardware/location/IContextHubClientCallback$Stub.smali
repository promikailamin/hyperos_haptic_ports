.class public abstract Landroid/hardware/location/IContextHubClientCallback$Stub;
.super Landroid/os/Binder;
.source "IContextHubClientCallback.java"

# interfaces
.implements Landroid/hardware/location/IContextHubClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubClientCallback"

.field static final blacklist TRANSACTION_onClientAuthorizationChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_onHubReset:I = 0x2

.field static final greylist-max-o TRANSACTION_onMessageFromNanoApp:I = 0x1

.field static final greylist-max-o TRANSACTION_onNanoAppAborted:I = 0x3

.field static final greylist-max-o TRANSACTION_onNanoAppDisabled:I = 0x7

.field static final greylist-max-o TRANSACTION_onNanoAppEnabled:I = 0x6

.field static final greylist-max-o TRANSACTION_onNanoAppLoaded:I = 0x4

.field static final greylist-max-o TRANSACTION_onNanoAppUnloaded:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.hardware.location.IContextHubClientCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubClientCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClientCallback;
    .registers 3

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_4
    const-string v0, "android.hardware.location.IContextHubClientCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/location/IContextHubClientCallback;

    if-eqz v1, :cond_13

    .line 78
    check-cast v0, Landroid/hardware/location/IContextHubClientCallback;

    return-object v0

    .line 80
    :cond_13
    new-instance v0, Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 89
    packed-switch p0, :pswitch_data_1e

    .line 125
    const/4 p0, 0x0

    return-object p0

    .line 121
    :pswitch_5
    const-string p0, "onClientAuthorizationChanged"

    return-object p0

    .line 117
    :pswitch_8
    const-string p0, "onNanoAppDisabled"

    return-object p0

    .line 113
    :pswitch_b
    const-string p0, "onNanoAppEnabled"

    return-object p0

    .line 109
    :pswitch_e
    const-string p0, "onNanoAppUnloaded"

    return-object p0

    .line 105
    :pswitch_11
    const-string p0, "onNanoAppLoaded"

    return-object p0

    .line 101
    :pswitch_14
    const-string p0, "onNanoAppAborted"

    return-object p0

    .line 97
    :pswitch_17
    const-string p0, "onHubReset"

    return-object p0

    .line 93
    :pswitch_1a
    const-string p0, "onMessageFromNanoApp"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
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

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 352
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 132
    invoke-static {p1}, Landroid/hardware/location/IContextHubClientCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 136
    nop

    .line 137
    const-string v0, "android.hardware.location.IContextHubClientCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 138
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 141
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v1

    .line 144
    :cond_17
    packed-switch p1, :pswitch_data_7e

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 204
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, p3, p4, p1}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onClientAuthorizationChanged(JI)V

    .line 209
    goto :goto_7c

    .line 196
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, p3, p4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppDisabled(J)V

    .line 199
    goto :goto_7c

    .line 188
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p3, p4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppEnabled(J)V

    .line 191
    goto :goto_7c

    .line 180
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, p3, p4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppUnloaded(J)V

    .line 183
    goto :goto_7c

    .line 172
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, p3, p4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppLoaded(J)V

    .line 175
    goto :goto_7c

    .line 162
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, p3, p4, p1}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppAborted(JI)V

    .line 167
    goto :goto_7c

    .line 156
    :pswitch_69
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onHubReset()V

    .line 157
    goto :goto_7c

    .line 149
    :pswitch_6d
    sget-object p1, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/location/NanoAppMessage;

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, p1}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V

    .line 152
    nop

    .line 216
    :goto_7c
    return v1

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_69
        :pswitch_5a
        :pswitch_4f
        :pswitch_44
        :pswitch_39
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
