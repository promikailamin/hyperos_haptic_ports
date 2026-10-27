.class public abstract Landroid/media/IMediaRoute2ProviderService$Stub;
.super Landroid/os/Binder;
.source "IMediaRoute2ProviderService.java"

# interfaces
.implements Landroid/media/IMediaRoute2ProviderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRoute2ProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deselectRoute:I = 0x7

.field static final blacklist TRANSACTION_releaseSession:I = 0xa

.field static final blacklist TRANSACTION_requestCreateSession:I = 0x4

.field static final blacklist TRANSACTION_requestCreateSystemMediaSession:I = 0x5

.field static final blacklist TRANSACTION_selectRoute:I = 0x6

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setRouteVolume:I = 0x3

.field static final blacklist TRANSACTION_setSessionVolume:I = 0x9

.field static final blacklist TRANSACTION_transferToRoute:I = 0x8

.field static final blacklist TRANSACTION_updateDiscoveryPreference:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRoute2ProviderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderService;
    .registers 3

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_4
    const-string v0, "android.media.IMediaRoute2ProviderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IMediaRoute2ProviderService;

    if-eqz v1, :cond_13

    .line 84
    check-cast v0, Landroid/media/IMediaRoute2ProviderService;

    return-object v0

    .line 86
    :cond_13
    new-instance v0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 95
    packed-switch p0, :pswitch_data_24

    .line 139
    const/4 p0, 0x0

    return-object p0

    .line 135
    :pswitch_5
    const-string p0, "releaseSession"

    return-object p0

    .line 131
    :pswitch_8
    const-string p0, "setSessionVolume"

    return-object p0

    .line 127
    :pswitch_b
    const-string p0, "transferToRoute"

    return-object p0

    .line 123
    :pswitch_e
    const-string p0, "deselectRoute"

    return-object p0

    .line 119
    :pswitch_11
    const-string p0, "selectRoute"

    return-object p0

    .line 115
    :pswitch_14
    const-string p0, "requestCreateSystemMediaSession"

    return-object p0

    .line 111
    :pswitch_17
    const-string p0, "requestCreateSession"

    return-object p0

    .line 107
    :pswitch_1a
    const-string p0, "setRouteVolume"

    return-object p0

    .line 103
    :pswitch_1d
    const-string p0, "updateDiscoveryPreference"

    return-object p0

    .line 99
    :pswitch_20
    const-string p0, "setCallback"

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x1
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 4

    .line 177
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 179
    sget-object v0, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/RouteDiscoveryPreference;

    .line 180
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 483
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 146
    invoke-static {p1}, Landroid/media/IMediaRoute2ProviderService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    nop

    .line 151
    const-string v3, "android.media.IMediaRoute2ProviderService"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 152
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 155
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    return v7

    .line 158
    :cond_17
    packed-switch p1, :pswitch_data_10e

    .line 289
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 280
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v3, v4, v1}, Landroid/media/IMediaRoute2ProviderService$Stub;->releaseSession(JLjava/lang/String;)V

    .line 285
    goto/16 :goto_10c

    .line 268
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/media/IMediaRoute2ProviderService$Stub;->setSessionVolume(JLjava/lang/String;I)V

    .line 275
    goto/16 :goto_10c

    .line 256
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/media/IMediaRoute2ProviderService$Stub;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 263
    goto/16 :goto_10c

    .line 244
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/media/IMediaRoute2ProviderService$Stub;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 251
    goto/16 :goto_10c

    .line 232
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/media/IMediaRoute2ProviderService$Stub;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 239
    goto/16 :goto_10c

    .line 216
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 218
    move-wide v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 220
    move-wide v5, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 222
    move-wide v8, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 224
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/Bundle;

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    move-object v0, p0

    move-wide v1, v8

    invoke-virtual/range {v0 .. v6}, Landroid/media/IMediaRoute2ProviderService$Stub;->requestCreateSystemMediaSession(JILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    goto :goto_10c

    .line 202
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 208
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    move-wide v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IMediaRoute2ProviderService$Stub;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    goto :goto_10c

    .line 190
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/media/IMediaRoute2ProviderService$Stub;->setRouteVolume(JLjava/lang/String;I)V

    .line 197
    goto :goto_10c

    .line 171
    :pswitch_d4
    sget-object v1, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RouteDiscoveryPreference;

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 175
    if-gez v3, :cond_e4

    const/4 v4, 0x0

    goto :goto_e9

    :cond_e4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 176
    :goto_e9
    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v5, Landroid/media/IMediaRoute2ProviderService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2, v4}, Landroid/media/IMediaRoute2ProviderService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v3, v5}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v1, v4}, Landroid/media/IMediaRoute2ProviderService$Stub;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;Ljava/util/Map;)V

    .line 185
    goto :goto_10c

    .line 163
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderServiceCallback;

    move-result-object v1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v1}, Landroid/media/IMediaRoute2ProviderService$Stub;->setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V

    .line 166
    nop

    .line 292
    :goto_10c
    return v7

    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_d4
        :pswitch_c1
        :pswitch_a4
        :pswitch_7f
        :pswitch_6b
        :pswitch_57
        :pswitch_43
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
