.class public abstract Landroid/hardware/radio/ITunerCallback$Stub;
.super Landroid/os/Binder;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITunerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITunerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITunerCallback"

.field static final greylist-max-o TRANSACTION_onAntennaState:I = 0x7

.field static final greylist-max-o TRANSACTION_onBackgroundScanAvailabilityChange:I = 0x8

.field static final greylist-max-o TRANSACTION_onBackgroundScanComplete:I = 0x9

.field static final blacklist TRANSACTION_onConfigFlagUpdated:I = 0xc

.field static final greylist-max-o TRANSACTION_onConfigurationChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onCurrentProgramInfoChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onEmergencyAnnouncement:I = 0x6

.field static final greylist-max-o TRANSACTION_onError:I = 0x1

.field static final greylist-max-o TRANSACTION_onParametersUpdated:I = 0xd

.field static final greylist-max-o TRANSACTION_onProgramListChanged:I = 0xa

.field static final greylist-max-o TRANSACTION_onProgramListUpdated:I = 0xb

.field static final greylist-max-o TRANSACTION_onTrafficAnnouncement:I = 0x5

.field static final greylist-max-o TRANSACTION_onTuneFailed:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITunerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITunerCallback;
    .registers 3

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_4
    const-string v0, "android.hardware.radio.ITunerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/ITunerCallback;

    if-eqz v1, :cond_13

    .line 99
    check-cast v0, Landroid/hardware/radio/ITunerCallback;

    return-object v0

    .line 101
    :cond_13
    new-instance v0, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 110
    packed-switch p0, :pswitch_data_2c

    .line 166
    const/4 p0, 0x0

    return-object p0

    .line 162
    :pswitch_5
    const-string p0, "onParametersUpdated"

    return-object p0

    .line 158
    :pswitch_8
    const-string p0, "onConfigFlagUpdated"

    return-object p0

    .line 154
    :pswitch_b
    const-string p0, "onProgramListUpdated"

    return-object p0

    .line 150
    :pswitch_e
    const-string p0, "onProgramListChanged"

    return-object p0

    .line 146
    :pswitch_11
    const-string p0, "onBackgroundScanComplete"

    return-object p0

    .line 142
    :pswitch_14
    const-string p0, "onBackgroundScanAvailabilityChange"

    return-object p0

    .line 138
    :pswitch_17
    const-string p0, "onAntennaState"

    return-object p0

    .line 134
    :pswitch_1a
    const-string p0, "onEmergencyAnnouncement"

    return-object p0

    .line 130
    :pswitch_1d
    const-string p0, "onTrafficAnnouncement"

    return-object p0

    .line 126
    :pswitch_20
    const-string p0, "onCurrentProgramInfoChanged"

    return-object p0

    .line 122
    :pswitch_23
    const-string p0, "onConfigurationChanged"

    return-object p0

    .line 118
    :pswitch_26
    const-string p0, "onTuneFailed"

    return-object p0

    .line 114
    :pswitch_29
    const-string p0, "onError"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 3

    .line 288
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 290
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 291
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 105
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 522
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 173
    invoke-static {p1}, Landroid/hardware/radio/ITunerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 177
    nop

    .line 178
    const-string v0, "android.hardware.radio.ITunerCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 182
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return v1

    .line 185
    :cond_17
    packed-switch p1, :pswitch_data_d2

    .line 300
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 285
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 286
    if-gez p1, :cond_27

    const/4 p3, 0x0

    goto :goto_2c

    :cond_27
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 287
    :goto_2c
    const/4 p4, 0x0

    invoke-static {p4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance p4, Landroid/hardware/radio/ITunerCallback$Stub$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2, p3}, Landroid/hardware/radio/ITunerCallback$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {p1, p4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p3}, Landroid/hardware/radio/ITunerCallback$Stub;->onParametersUpdated(Ljava/util/Map;)V

    .line 296
    goto/16 :goto_d1

    .line 274
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/ITunerCallback$Stub;->onConfigFlagUpdated(IZ)V

    .line 279
    goto/16 :goto_d1

    .line 266
    :pswitch_51
    sget-object p1, Landroid/hardware/radio/ProgramList$Chunk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/ProgramList$Chunk;

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ITunerCallback$Stub;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 269
    goto/16 :goto_d1

    .line 260
    :pswitch_61
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onProgramListChanged()V

    .line 261
    goto :goto_d1

    .line 255
    :pswitch_65
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanComplete()V

    .line 256
    goto :goto_d1

    .line 248
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanAvailabilityChange(Z)V

    .line 251
    goto :goto_d1

    .line 240
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ITunerCallback$Stub;->onAntennaState(Z)V

    .line 243
    goto :goto_d1

    .line 232
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ITunerCallback$Stub;->onEmergencyAnnouncement(Z)V

    .line 235
    goto :goto_d1

    .line 224
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ITunerCallback$Stub;->onTrafficAnnouncement(Z)V

    .line 227
    goto :goto_d1

    .line 216
    :pswitch_95
    sget-object p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ITunerCallback$Stub;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 219
    goto :goto_d1

    .line 208
    :pswitch_a4
    sget-object p1, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioManager$BandConfig;

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ITunerCallback$Stub;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 211
    goto :goto_d1

    .line 198
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    sget-object p3, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/ProgramSelector;

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/ITunerCallback$Stub;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    .line 203
    goto :goto_d1

    .line 190
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ITunerCallback$Stub;->onError(I)V

    .line 193
    nop

    .line 303
    :goto_d1
    return v1

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_b3
        :pswitch_a4
        :pswitch_95
        :pswitch_8a
        :pswitch_7f
        :pswitch_74
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_51
        :pswitch_41
        :pswitch_1f
    .end packed-switch
.end method
