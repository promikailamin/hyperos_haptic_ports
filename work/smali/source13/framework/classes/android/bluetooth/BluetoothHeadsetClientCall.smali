.class public final Landroid/bluetooth/BluetoothHeadsetClientCall;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClientCall.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/bluetooth/Attributable;


# static fields
.field public static final greylist-max-o CALL_STATE_ACTIVE:I = 0x0

.field public static final greylist-max-o CALL_STATE_ALERTING:I = 0x3

.field public static final greylist-max-o CALL_STATE_DIALING:I = 0x2

.field public static final greylist-max-o CALL_STATE_HELD:I = 0x1

.field public static final greylist-max-o CALL_STATE_HELD_BY_RESPONSE_AND_HOLD:I = 0x6

.field public static final greylist-max-o CALL_STATE_INCOMING:I = 0x4

.field public static final greylist-max-o CALL_STATE_TERMINATED:I = 0x7

.field public static final greylist-max-o CALL_STATE_WAITING:I = 0x5

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCreationElapsedMilli:J

.field private final greylist-max-o mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final greylist-max-o mId:I

.field private final greylist-max-o mInBandRing:Z

.field private greylist-max-o mMultiParty:Z

.field private greylist-max-o mNumber:Ljava/lang/String;

.field private final greylist-max-o mOutgoing:Z

.field private greylist-max-o mState:I

.field private final greylist-max-o mUUID:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 291
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHeadsetClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZZ)V
    .registers 17
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "state"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "multiParty"    # Z
    .param p6, "outgoing"    # Z
    .param p7, "inBandRing"    # Z

    .line 87
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZZ)V

    .line 88
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZZ)V
    .registers 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "state"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "multiParty"    # Z
    .param p7, "outgoing"    # Z
    .param p8, "inBandRing"    # Z

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 93
    iput p2, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    .line 94
    iput-object p3, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    .line 95
    iput p4, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    .line 96
    if-eqz p5, :cond_f

    move-object v0, p5

    goto :goto_11

    :cond_f
    const-string v0, ""

    :goto_11
    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    .line 97
    iput-boolean p6, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    .line 98
    iput-boolean p7, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    .line 99
    iput-boolean p8, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mCreationElapsedMilli:J

    .line 101
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCreationElapsedMilli()J
    .registers 3

    .line 196
    iget-wide v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mCreationElapsedMilli:J

    return-wide v0
.end method

.method public greylist-max-o getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public greylist-max-r getId()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    return v0
.end method

.method public greylist-max-r getNumber()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getState()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    return v0
.end method

.method public greylist-max-o getUUID()Ljava/util/UUID;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public greylist-max-o isInBandRing()Z
    .registers 2

    .line 225
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    return v0
.end method

.method public greylist-max-r isMultiParty()Z
    .registers 2

    .line 206
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    return v0
.end method

.method public greylist-max-r isOutgoing()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    return v0
.end method

.method public blacklist setAttributionSource(Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 105
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 106
    return-void
.end method

.method public greylist-max-o setMultiParty(Z)V
    .registers 2
    .param p1, "multiParty"    # Z

    .line 138
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    .line 139
    return-void
.end method

.method public greylist-max-o setNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public greylist-max-o setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 116
    iput p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    .line 117
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toString(Z)Ljava/lang/String;
    .registers 4
    .param p1, "loggable"    # Z

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothHeadsetClientCall{mDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_c

    goto :goto_14

    :cond_c
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ", mId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", mUUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    packed-switch v1, :pswitch_data_a8

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 270
    :pswitch_39
    const-string v1, "TERMINATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    goto :goto_69

    .line 267
    :pswitch_3f
    const-string v1, "HELD_BY_RESPONSE_AND_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    goto :goto_69

    .line 264
    :pswitch_45
    const-string v1, "WAITING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    goto :goto_69

    .line 261
    :pswitch_4b
    const-string v1, "INCOMING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    goto :goto_69

    .line 258
    :pswitch_51
    const-string v1, "ALERTING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    goto :goto_69

    .line 255
    :pswitch_57
    const-string v1, "DIALING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    goto :goto_69

    .line 252
    :pswitch_5d
    const-string v1, "HELD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    goto :goto_69

    .line 249
    :pswitch_63
    const-string v1, "ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    nop

    .line 276
    :goto_69
    const-string v1, ", mNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    if-eqz p1, :cond_73

    goto :goto_7b

    :cond_73
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, ", mMultiParty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, ", mOutgoing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, ", mInBandRing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 284
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_63
        :pswitch_5d
        :pswitch_57
        :pswitch_51
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 309
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 310
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    return-void
.end method
