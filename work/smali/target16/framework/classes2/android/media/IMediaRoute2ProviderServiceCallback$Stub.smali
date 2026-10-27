.class public abstract Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaRoute2ProviderServiceCallback.java"

# interfaces
.implements Landroid/media/IMediaRoute2ProviderServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRoute2ProviderServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyProviderUpdated:I = 0x1

.field static final blacklist TRANSACTION_notifyRequestFailed:I = 0x5

.field static final blacklist TRANSACTION_notifySessionCreated:I = 0x2

.field static final blacklist TRANSACTION_notifySessionReleased:I = 0x4

.field static final blacklist TRANSACTION_notifySessionsUpdated:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.media.IMediaRoute2ProviderServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderServiceCallback;
    .registers 3

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_4
    const-string v0, "android.media.IMediaRoute2ProviderServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-eqz v1, :cond_13

    .line 56
    check-cast v0, Landroid/media/IMediaRoute2ProviderServiceCallback;

    return-object v0

    .line 58
    :cond_13
    new-instance v0, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string p0, "notifyRequestFailed"

    return-object p0

    .line 83
    :pswitch_8
    const-string p0, "notifySessionReleased"

    return-object p0

    .line 79
    :pswitch_b
    const-string p0, "notifySessionsUpdated"

    return-object p0

    .line 75
    :pswitch_e
    const-string p0, "notifySessionCreated"

    return-object p0

    .line 71
    :pswitch_11
    const-string p0, "notifyProviderUpdated"

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

    .line 249
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 98
    invoke-static {p1}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.media.IMediaRoute2ProviderServiceCallback"

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
    packed-switch p1, :pswitch_data_6e

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 149
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, p3, p4, p1}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifyRequestFailed(JI)V

    .line 154
    goto :goto_6c

    .line 141
    :pswitch_2e
    sget-object p1, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/RoutingSessionInfo;

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, p1}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 144
    goto :goto_6c

    .line 133
    :pswitch_3d
    sget-object p1, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, p1}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifySessionsUpdated(Ljava/util/List;)V

    .line 136
    goto :goto_6c

    .line 123
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 125
    sget-object p1, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/RoutingSessionInfo;

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, p3, p4, p1}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V

    .line 128
    goto :goto_6c

    .line 115
    :pswitch_5d
    sget-object p1, Landroid/media/MediaRoute2ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRoute2ProviderInfo;

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, p1}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifyProviderUpdated(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 118
    nop

    .line 161
    :goto_6c
    return v1

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_4a
        :pswitch_3d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
