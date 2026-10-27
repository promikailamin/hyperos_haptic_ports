.class public abstract Landroid/media/IMediaRouter2Manager$Stub;
.super Landroid/os/Binder;
.source "IMediaRouter2Manager.java"

# interfaces
.implements Landroid/media/IMediaRouter2Manager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouter2Manager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_invalidateInstance:I = 0xb

.field static final blacklist TRANSACTION_notifyDeviceSuggestionRequested:I = 0x7

.field static final blacklist TRANSACTION_notifyDeviceSuggestionsUpdated:I = 0x6

.field static final blacklist TRANSACTION_notifyDiscoveryPreferenceChanged:I = 0x4

.field static final blacklist TRANSACTION_notifyRequestFailed:I = 0x9

.field static final blacklist TRANSACTION_notifyRouteListingPreferenceChange:I = 0x5

.field static final blacklist TRANSACTION_notifyRoutesUpdated:I = 0x8

.field static final blacklist TRANSACTION_notifySessionCreated:I = 0x1

.field static final blacklist TRANSACTION_notifySessionReleased:I = 0x3

.field static final blacklist TRANSACTION_notifySessionUpdated:I = 0x2

.field static final blacklist TRANSACTION_notifySystemSessionOverridesChanged:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.media.IMediaRouter2Manager"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouter2Manager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;
    .registers 3

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_4
    const-string v0, "android.media.IMediaRouter2Manager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IMediaRouter2Manager;

    if-eqz v1, :cond_13

    .line 74
    check-cast v0, Landroid/media/IMediaRouter2Manager;

    return-object v0

    .line 76
    :cond_13
    new-instance v0, Landroid/media/IMediaRouter2Manager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IMediaRouter2Manager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 85
    packed-switch p0, :pswitch_data_26

    .line 133
    const/4 p0, 0x0

    return-object p0

    .line 129
    :pswitch_5
    const-string p0, "invalidateInstance"

    return-object p0

    .line 125
    :pswitch_8
    const-string p0, "notifySystemSessionOverridesChanged"

    return-object p0

    .line 121
    :pswitch_b
    const-string p0, "notifyRequestFailed"

    return-object p0

    .line 117
    :pswitch_e
    const-string p0, "notifyRoutesUpdated"

    return-object p0

    .line 113
    :pswitch_11
    const-string p0, "notifyDeviceSuggestionRequested"

    return-object p0

    .line 109
    :pswitch_14
    const-string p0, "notifyDeviceSuggestionsUpdated"

    return-object p0

    .line 105
    :pswitch_17
    const-string p0, "notifyRouteListingPreferenceChange"

    return-object p0

    .line 101
    :pswitch_1a
    const-string p0, "notifyDiscoveryPreferenceChanged"

    return-object p0

    .line 97
    :pswitch_1d
    const-string p0, "notifySessionReleased"

    return-object p0

    .line 93
    :pswitch_20
    const-string p0, "notifySessionUpdated"

    return-object p0

    .line 89
    :pswitch_23
    const-string p0, "notifySessionCreated"

    return-object p0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 424
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 140
    invoke-static {p1}, Landroid/media/IMediaRouter2Manager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 144
    nop

    .line 145
    const-string v0, "android.media.IMediaRouter2Manager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 146
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 149
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v1

    .line 152
    :cond_17
    packed-switch p1, :pswitch_data_c6

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 247
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/IMediaRouter2Manager$Stub;->invalidateInstance()V

    .line 248
    goto/16 :goto_c4

    .line 240
    :pswitch_24
    sget-object p1, Landroid/media/AppId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, p1}, Landroid/media/IMediaRouter2Manager$Stub;->notifySystemSessionOverridesChanged(Ljava/util/List;)V

    .line 243
    goto/16 :goto_c4

    .line 230
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, p1, p3}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRequestFailed(II)V

    .line 235
    goto/16 :goto_c4

    .line 222
    :pswitch_42
    sget-object p1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, p1}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRoutesUpdated(Ljava/util/List;)V

    .line 225
    goto/16 :goto_c4

    .line 216
    :pswitch_50
    invoke-virtual {p0}, Landroid/media/IMediaRouter2Manager$Stub;->notifyDeviceSuggestionRequested()V

    .line 217
    goto :goto_c4

    .line 205
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 209
    sget-object p4, Landroid/media/SuggestedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/IMediaRouter2Manager$Stub;->notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 212
    goto :goto_c4

    .line 195
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 197
    sget-object p3, Landroid/media/RouteListingPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/RouteListingPreference;

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1, p3}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRouteListingPreferenceChange(Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    .line 200
    goto :goto_c4

    .line 185
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 187
    sget-object p3, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/RouteDiscoveryPreference;

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, p1, p3}, Landroid/media/IMediaRouter2Manager$Stub;->notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    .line 190
    goto :goto_c4

    .line 177
    :pswitch_8f
    sget-object p1, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/RoutingSessionInfo;

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, p1}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 180
    goto :goto_c4

    .line 167
    :pswitch_9e
    sget-object p1, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/RoutingSessionInfo;

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, p1, p3}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;Z)V

    .line 172
    goto :goto_c4

    .line 157
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 159
    sget-object p3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/RoutingSessionInfo;

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1, p3}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V

    .line 162
    nop

    .line 255
    :goto_c4
    return v1

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_9e
        :pswitch_8f
        :pswitch_7c
        :pswitch_69
        :pswitch_54
        :pswitch_50
        :pswitch_42
        :pswitch_32
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method
