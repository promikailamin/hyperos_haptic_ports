.class public abstract Lmiui/car/IMiuiCarManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiCarManager.java"

# interfaces
.implements Lmiui/car/IMiuiCarManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/car/IMiuiCarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/car/IMiuiCarManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addThirdCastAppSet:I = 0x11

.field static final blacklist TRANSACTION_cleanThirdCastAppSet:I = 0x12

.field static final blacklist TRANSACTION_connectVirtualCamera:I = 0xe

.field static final blacklist TRANSACTION_disconnectVirtualCamera:I = 0xf

.field static final blacklist TRANSACTION_doBooleanCommand:I = 0x9

.field static final blacklist TRANSACTION_doIntCommand:I = 0x8

.field static final blacklist TRANSACTION_enableImsForDisplayId:I = 0x3

.field static final blacklist TRANSACTION_getCastingState:I = 0x6

.field static final blacklist TRANSACTION_injectInputEvent:I = 0x1

.field static final blacklist TRANSACTION_isVirtualCameraServiceReady:I = 0xc

.field static final blacklist TRANSACTION_isWifiApEnabled:I = 0x7

.field static final blacklist TRANSACTION_onFrameData:I = 0x10

.field static final blacklist TRANSACTION_setCastingState:I = 0x5

.field static final blacklist TRANSACTION_setRotationMonitorEnabled:I = 0x4

.field static final blacklist TRANSACTION_setVirtualCameraConfig:I = 0xd

.field static final blacklist TRANSACTION_setVirtualDisplayId:I = 0x2

.field static final blacklist TRANSACTION_startVirtualCameraService:I = 0xa

.field static final blacklist TRANSACTION_stopVirtualCameraService:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "miui.car.IMiuiCarManager"

    invoke-virtual {p0, p0, v0}, Lmiui/car/IMiuiCarManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/car/IMiuiCarManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_4
    const-string v0, "miui.car.IMiuiCarManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/car/IMiuiCarManager;

    if-eqz v1, :cond_14

    .line 99
    move-object v1, v0

    check-cast v1, Lmiui/car/IMiuiCarManager;

    return-object v1

    .line 101
    :cond_14
    new-instance v1, Lmiui/car/IMiuiCarManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/car/IMiuiCarManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 105
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const-string v0, "miui.car.IMiuiCarManager"

    .line 110
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_d
    packed-switch p1, :pswitch_data_138

    .line 121
    packed-switch p1, :pswitch_data_13e

    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 117
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 283
    :pswitch_1c
    invoke-virtual {p0}, Lmiui/car/IMiuiCarManager$Stub;->cleanThirdCastAppSet()V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto/16 :goto_136

    .line 275
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 276
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2}, Lmiui/car/IMiuiCarManager$Stub;->addThirdCastAppSet(Ljava/util/List;)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_136

    .line 263
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 265
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 266
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2, v3}, Lmiui/car/IMiuiCarManager$Stub;->onFrameData([BI)Z

    move-result v4

    .line 268
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 270
    goto/16 :goto_136

    .line 255
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4a
    invoke-virtual {p0}, Lmiui/car/IMiuiCarManager$Stub;->disconnectVirtualCamera()Z

    move-result v2

    .line 256
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    goto/16 :goto_136

    .line 248
    .end local v2    # "_result":Z
    :pswitch_56
    invoke-virtual {p0}, Lmiui/car/IMiuiCarManager$Stub;->connectVirtualCamera()Z

    move-result v2

    .line 249
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 251
    goto/16 :goto_136

    .line 235
    .end local v2    # "_result":Z
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 240
    .local v4, "_arg2":D
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2, v3, v4, v5}, Lmiui/car/IMiuiCarManager$Stub;->setVirtualCameraConfig(IID)Z

    move-result v6

    .line 242
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 244
    goto/16 :goto_136

    .line 227
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":D
    .end local v6    # "_result":Z
    :pswitch_7d
    invoke-virtual {p0}, Lmiui/car/IMiuiCarManager$Stub;->isVirtualCameraServiceReady()Z

    move-result v2

    .line 228
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    goto/16 :goto_136

    .line 221
    .end local v2    # "_result":Z
    :pswitch_89
    invoke-virtual {p0}, Lmiui/car/IMiuiCarManager$Stub;->stopVirtualCameraService()V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    goto/16 :goto_136

    .line 215
    :pswitch_91
    invoke-virtual {p0}, Lmiui/car/IMiuiCarManager$Stub;->startVirtualCameraService()V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto/16 :goto_136

    .line 204
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 207
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3}, Lmiui/car/IMiuiCarManager$Stub;->doBooleanCommand(II)Z

    move-result v4

    .line 209
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 211
    goto/16 :goto_136

    .line 192
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 195
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3}, Lmiui/car/IMiuiCarManager$Stub;->doIntCommand(II)I

    move-result v4

    .line 197
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    goto :goto_136

    .line 184
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_c6
    invoke-virtual {p0}, Lmiui/car/IMiuiCarManager$Stub;->isWifiApEnabled()Z

    move-result v2

    .line 185
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 187
    goto :goto_136

    .line 177
    .end local v2    # "_result":Z
    :pswitch_d1
    invoke-virtual {p0}, Lmiui/car/IMiuiCarManager$Stub;->getCastingState()I

    move-result v2

    .line 178
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    goto :goto_136

    .line 169
    .end local v2    # "_result":I
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Lmiui/car/IMiuiCarManager$Stub;->setCastingState(I)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    goto :goto_136

    .line 160
    .end local v2    # "_arg0":I
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 161
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Lmiui/car/IMiuiCarManager$Stub;->setRotationMonitorEnabled(Z)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    goto :goto_136

    .line 149
    .end local v2    # "_arg0":Z
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 152
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3}, Lmiui/car/IMiuiCarManager$Stub;->enableImsForDisplayId(IZ)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_136

    .line 140
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Lmiui/car/IMiuiCarManager$Stub;->setVirtualDisplayId(I)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    goto :goto_136

    .line 126
    .end local v2    # "_arg0":I
    :pswitch_118
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 128
    .local v2, "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 131
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2, v3, v4}, Lmiui/car/IMiuiCarManager$Stub;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v5

    .line 133
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 135
    nop

    .line 292
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :goto_136
    return v1

    nop

    :pswitch_data_138
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_118
        :pswitch_10a
        :pswitch_f8
        :pswitch_ea
        :pswitch_dc
        :pswitch_d1
        :pswitch_c6
        :pswitch_b0
        :pswitch_99
        :pswitch_91
        :pswitch_89
        :pswitch_7d
        :pswitch_62
        :pswitch_56
        :pswitch_4a
        :pswitch_33
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method
