.class public abstract Lcom/xiaomi/joyose/IJoyoseInterface$Stub;
.super Landroid/os/Binder;
.source "IJoyoseInterface.java"

# interfaces
.implements Lcom/xiaomi/joyose/IJoyoseInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/IJoyoseInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_MiPlatformBoosterForOneway:I = 0x7

.field static final blacklist TRANSACTION_MiPlatformBoosterForSync:I = 0x8

.field static final blacklist TRANSACTION_checkIfGameIsSupported:I = 0x14

.field static final blacklist TRANSACTION_getGameMotorAppList:I = 0x9

.field static final blacklist TRANSACTION_handleGameBoosterForOneway:I = 0x3

.field static final blacklist TRANSACTION_handleGameBoosterForSync:I = 0x4

.field static final blacklist TRANSACTION_invokeOneway:I = 0x10

.field static final blacklist TRANSACTION_invokeSync:I = 0x11

.field static final blacklist TRANSACTION_isMiGLEnabled:I = 0xb

.field static final blacklist TRANSACTION_predictAppBucketLevel:I = 0x5

.field static final blacklist TRANSACTION_predictAppsBucketLevel:I = 0x6

.field static final blacklist TRANSACTION_queryConfigs:I = 0xc

.field static final blacklist TRANSACTION_querySettingsByAppName:I = 0xd

.field static final blacklist TRANSACTION_registerCallbackInner:I = 0x12

.field static final blacklist TRANSACTION_registerGameEngineListener:I = 0x1

.field static final blacklist TRANSACTION_registerMiPlatformBoosterListener:I = 0xe

.field static final blacklist TRANSACTION_sendGyroData:I = 0xa

.field static final blacklist TRANSACTION_unRegisterCallbackInner:I = 0x13

.field static final blacklist TRANSACTION_unRegisterGameEngineListener:I = 0x2

.field static final blacklist TRANSACTION_unRegisterMiPlatformBoosterListener:I = 0xf


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 90
    const-string v0, "com.xiaomi.joyose.IJoyoseInterface"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 98
    if-nez p0, :cond_4

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_4
    const-string v0, "com.xiaomi.joyose.IJoyoseInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_14

    .line 103
    move-object v1, v0

    check-cast v1, Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object v1

    .line 105
    :cond_14
    new-instance v1, Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 109
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const-string v0, "com.xiaomi.joyose.IJoyoseInterface"

    .line 114
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_d
    packed-switch p1, :pswitch_data_18a

    .line 125
    packed-switch p1, :pswitch_data_190

    .line 327
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 121
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v1

    .line 318
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->checkIfGameIsSupported(Ljava/lang/String;)Z

    move-result v3

    .line 321
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 323
    goto/16 :goto_189

    .line 308
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/joyose/IMiGameBoosterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IMiGameBoosterCallback;

    move-result-object v3

    .line 311
    .local v3, "_arg1":Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->unRegisterCallbackInner(Ljava/lang/String;Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V

    .line 313
    goto/16 :goto_189

    .line 296
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/joyose/IMiGameBoosterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IMiGameBoosterCallback;

    move-result-object v4

    .line 301
    .local v4, "_arg2":Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2, v3, v4}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->registerCallbackInner(ILjava/lang/String;Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V

    .line 303
    goto/16 :goto_189

    .line 284
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 287
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->invokeSync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 289
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 291
    goto/16 :goto_189

    .line 274
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 277
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->invokeOneway(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 279
    goto/16 :goto_189

    .line 266
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/joyose/IMiGameBoosterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IMiGameBoosterCallback;

    move-result-object v2

    .line 267
    .local v2, "_arg0":Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->unRegisterMiPlatformBoosterListener(Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V

    .line 269
    goto/16 :goto_189

    .line 256
    .end local v2    # "_arg0":Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/joyose/IMiGameBoosterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IMiGameBoosterCallback;

    move-result-object v3

    .line 259
    .local v3, "_arg1":Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->registerMiPlatformBoosterListener(ILcom/xiaomi/joyose/IMiGameBoosterCallback;)V

    .line 261
    goto/16 :goto_189

    .line 246
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->querySettingsByAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    goto/16 :goto_189

    .line 236
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->queryConfigs(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    goto/16 :goto_189

    .line 226
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->isMiGLEnabled(I)I

    move-result v3

    .line 229
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    goto/16 :goto_189

    .line 218
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->sendGyroData(Ljava/lang/String;)V

    .line 221
    goto/16 :goto_189

    .line 210
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_f3
    invoke-virtual {p0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->getGameMotorAppList()Ljava/util/List;

    move-result-object v2

    .line 211
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 213
    goto/16 :goto_189

    .line 199
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->MiPlatformBoosterForSync(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    goto/16 :goto_189

    .line 188
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->MiPlatformBoosterForOneway(ILjava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_189

    .line 178
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 180
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 181
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->predictAppsBucketLevel(Ljava/util/List;I)V

    .line 183
    goto :goto_189

    .line 170
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->predictAppBucketLevel(Ljava/lang/String;)V

    .line 173
    goto :goto_189

    .line 158
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    goto :goto_189

    .line 148
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->handleGameBoosterForOneway(ILjava/lang/String;)V

    .line 153
    goto :goto_189

    .line 140
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IGameEngineCallback;

    move-result-object v2

    .line 141
    .local v2, "_arg0":Lcom/xiaomi/joyose/IGameEngineCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V

    .line 143
    goto :goto_189

    .line 130
    .end local v2    # "_arg0":Lcom/xiaomi/joyose/IGameEngineCallback;
    :pswitch_176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IGameEngineCallback;

    move-result-object v3

    .line 133
    .local v3, "_arg1":Lcom/xiaomi/joyose/IGameEngineCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V

    .line 135
    nop

    .line 330
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/xiaomi/joyose/IGameEngineCallback;
    :goto_189
    return v1

    :pswitch_data_18a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_176
        :pswitch_167
        :pswitch_158
        :pswitch_142
        :pswitch_137
        :pswitch_128
        :pswitch_116
        :pswitch_ff
        :pswitch_f3
        :pswitch_e7
        :pswitch_d4
        :pswitch_c1
        :pswitch_ae
        :pswitch_9a
        :pswitch_8a
        :pswitch_76
        :pswitch_5b
        :pswitch_43
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
