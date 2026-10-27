.class public abstract Landroid/media/IMediaRouter2$Stub;
.super Landroid/os/Binder;
.source "IMediaRouter2.java"

# interfaces
.implements Landroid/media/IMediaRouter2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouter2$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyDeviceSuggestionRequested:I = 0x8

.field static final blacklist TRANSACTION_notifyDeviceSuggestionsUpdated:I = 0x7

.field static final blacklist TRANSACTION_notifyRouterRegistered:I = 0x1

.field static final blacklist TRANSACTION_notifyRoutesUpdated:I = 0x2

.field static final blacklist TRANSACTION_notifySessionCreated:I = 0x3

.field static final blacklist TRANSACTION_notifySessionInfoChanged:I = 0x4

.field static final blacklist TRANSACTION_notifySessionReleased:I = 0x5

.field static final blacklist TRANSACTION_requestCreateSessionByManager:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.media.IMediaRouter2"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouter2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;
    .registers 3

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    const-string v0, "android.media.IMediaRouter2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IMediaRouter2;

    if-eqz v1, :cond_13

    .line 69
    check-cast v0, Landroid/media/IMediaRouter2;

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Landroid/media/IMediaRouter2$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IMediaRouter2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 80
    packed-switch p0, :pswitch_data_1e

    .line 116
    const/4 p0, 0x0

    return-object p0

    .line 112
    :pswitch_5
    const-string p0, "notifyDeviceSuggestionRequested"

    return-object p0

    .line 108
    :pswitch_8
    const-string p0, "notifyDeviceSuggestionsUpdated"

    return-object p0

    .line 104
    :pswitch_b
    const-string p0, "requestCreateSessionByManager"

    return-object p0

    .line 100
    :pswitch_e
    const-string p0, "notifySessionReleased"

    return-object p0

    .line 96
    :pswitch_11
    const-string p0, "notifySessionInfoChanged"

    return-object p0

    .line 92
    :pswitch_14
    const-string p0, "notifySessionCreated"

    return-object p0

    .line 88
    :pswitch_17
    const-string p0, "notifyRoutesUpdated"

    return-object p0

    .line 84
    :pswitch_1a
    const-string p0, "notifyRouterRegistered"

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

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 349
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 123
    invoke-static {p1}, Landroid/media/IMediaRouter2$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    nop

    .line 128
    const-string v0, "android.media.IMediaRouter2"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 135
    :cond_17
    packed-switch p1, :pswitch_data_b8

    .line 212
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 207
    :pswitch_20
    invoke-virtual {p0}, Landroid/media/IMediaRouter2$Stub;->notifyDeviceSuggestionRequested()V

    .line 208
    goto/16 :goto_b6

    .line 198
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 200
    sget-object p3, Landroid/media/SuggestedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p3

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, p1, p3}, Landroid/media/IMediaRouter2$Stub;->notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/util/List;)V

    .line 203
    goto/16 :goto_b6

    .line 184
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 186
    sget-object p1, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/media/RoutingSessionInfo;

    .line 188
    sget-object p1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/media/MediaRoute2Info;

    .line 190
    sget-object p1, Landroid/media/RoutingChangeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/media/RoutingChangeInfo;

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/media/IMediaRouter2$Stub;->requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    .line 193
    goto :goto_b6

    .line 176
    :pswitch_5e
    move-object v2, p0

    sget-object p1, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/RoutingSessionInfo;

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, p1}, Landroid/media/IMediaRouter2$Stub;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 179
    goto :goto_b6

    .line 168
    :pswitch_6e
    move-object v2, p0

    sget-object p1, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/RoutingSessionInfo;

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, p1}, Landroid/media/IMediaRouter2$Stub;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V

    .line 171
    goto :goto_b6

    .line 158
    :pswitch_7e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 160
    sget-object p3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/RoutingSessionInfo;

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, p1, p3}, Landroid/media/IMediaRouter2$Stub;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V

    .line 163
    goto :goto_b6

    .line 150
    :pswitch_92
    move-object v2, p0

    sget-object p1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1}, Landroid/media/IMediaRouter2$Stub;->notifyRoutesUpdated(Ljava/util/List;)V

    .line 153
    goto :goto_b6

    .line 140
    :pswitch_a0
    move-object v2, p0

    sget-object p1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 142
    sget-object p3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/RoutingSessionInfo;

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1, p3}, Landroid/media/IMediaRouter2$Stub;->notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 145
    nop

    .line 215
    :goto_b6
    return v1

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_92
        :pswitch_7e
        :pswitch_6e
        :pswitch_5e
        :pswitch_37
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method
