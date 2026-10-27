.class public abstract Landroid/hardware/biometrics/face/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/face/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_authenticate:I = 0x5

.field static final TRANSACTION_authenticateWithContext:I = 0xf

.field static final TRANSACTION_close:I = 0xe

.field static final TRANSACTION_detectInteraction:I = 0x6

.field static final TRANSACTION_detectInteractionWithContext:I = 0x11

.field static final TRANSACTION_enroll:I = 0x4

.field static final TRANSACTION_enrollWithContext:I = 0x10

.field static final TRANSACTION_enumerateEnrollments:I = 0x7

.field static final TRANSACTION_generateChallenge:I = 0x1

.field static final TRANSACTION_getAuthenticatorId:I = 0xb

.field static final TRANSACTION_getEnrollmentConfig:I = 0x3

.field static final TRANSACTION_getFeatures:I = 0x9

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_invalidateAuthenticatorId:I = 0xc

.field static final TRANSACTION_onContextChanged:I = 0x12

.field static final TRANSACTION_removeEnrollments:I = 0x8

.field static final TRANSACTION_resetLockout:I = 0xd

.field static final TRANSACTION_revokeChallenge:I = 0x2

.field static final TRANSACTION_setFeature:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 98
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->markVintfStability()V

    .line 99
    sget-object v0, Landroid/hardware/biometrics/face/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/face/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 107
    if-nez p0, :cond_4

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/face/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 111
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/face/ISession;

    if-eqz v1, :cond_14

    .line 112
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/face/ISession;

    return-object v1

    .line 114
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/face/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/face/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 118
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-object v10, Landroid/hardware/biometrics/face/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 123
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 124
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_15
    sparse-switch v7, :sswitch_data_18a

    .line 146
    packed-switch v7, :pswitch_data_198

    .line 318
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 130
    :sswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v11

    .line 135
    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return v11

    .line 141
    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v11

    .line 310
    :pswitch_3a
    sget-object v0, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/common/OperationContext;

    .line 311
    .local v0, "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/face/ISession$Stub;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto/16 :goto_188

    .line 300
    .end local v0    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    :pswitch_4d
    sget-object v0, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/common/OperationContext;

    .line 301
    .restart local v0    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/face/ISession$Stub;->detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    .line 303
    .local v1, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 305
    goto/16 :goto_188

    .line 282
    .end local v0    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    .end local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_64
    sget-object v0, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 284
    .local v12, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v13

    .line 286
    .local v13, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 288
    .local v14, "_arg2":[B
    sget-object v0, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/common/NativeHandle;

    .line 290
    .local v15, "_arg3":Landroid/hardware/common/NativeHandle;
    sget-object v0, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/hardware/biometrics/common/OperationContext;

    .line 291
    .local v16, "_arg4":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/face/ISession$Stub;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    .line 293
    .local v0, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 295
    goto/16 :goto_188

    .line 270
    .end local v0    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    .end local v12    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v13    # "_arg1":B
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":Landroid/hardware/common/NativeHandle;
    .end local v16    # "_arg4":Landroid/hardware/biometrics/common/OperationContext;
    :pswitch_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 272
    .local v0, "_arg0":J
    sget-object v2, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/common/OperationContext;

    .line 273
    .local v2, "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/biometrics/face/ISession$Stub;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v3

    .line 275
    .local v3, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 277
    goto/16 :goto_188

    .line 263
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    .end local v3    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_ba
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/face/ISession$Stub;->close()V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto/16 :goto_188

    .line 255
    :pswitch_c2
    sget-object v0, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 256
    .local v0, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/face/ISession$Stub;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto/16 :goto_188

    .line 248
    .end local v0    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :pswitch_d5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/face/ISession$Stub;->invalidateAuthenticatorId()V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto/16 :goto_188

    .line 242
    :pswitch_dd
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getAuthenticatorId()V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_188

    .line 230
    :pswitch_e5
    sget-object v0, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 232
    .restart local v0    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 234
    .local v1, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 235
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/biometrics/face/ISession$Stub;->setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto/16 :goto_188

    .line 223
    .end local v0    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v1    # "_arg1":B
    .end local v2    # "_arg2":Z
    :pswitch_100
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getFeatures()V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto/16 :goto_188

    .line 215
    :pswitch_108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 216
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/face/ISession$Stub;->removeEnrollments([I)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto/16 :goto_188

    .line 208
    .end local v0    # "_arg0":[I
    :pswitch_117
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/face/ISession$Stub;->enumerateEnrollments()V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto :goto_188

    .line 201
    :pswitch_11e
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/face/ISession$Stub;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    .line 202
    .local v0, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 204
    goto :goto_188

    .line 192
    .end local v0    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 193
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {v6, v0, v1}, Landroid/hardware/biometrics/face/ISession$Stub;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v2

    .line 195
    .local v2, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 197
    goto :goto_188

    .line 176
    .end local v0    # "_arg0":J
    .end local v2    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_13b
    sget-object v0, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 178
    .local v0, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 180
    .restart local v1    # "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 182
    .local v2, "_arg2":[B
    sget-object v3, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/common/NativeHandle;

    .line 183
    .local v3, "_arg3":Landroid/hardware/common/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/biometrics/face/ISession$Stub;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v4

    .line 185
    .local v4, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 187
    goto :goto_188

    .line 166
    .end local v0    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v1    # "_arg1":B
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":Landroid/hardware/common/NativeHandle;
    .end local v4    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 167
    .local v0, "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/face/ISession$Stub;->getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    move-result-object v1

    .line 169
    .local v1, "_result":[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 171
    goto :goto_188

    .line 157
    .end local v0    # "_arg0":B
    .end local v1    # "_result":[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    :pswitch_173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 158
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {v6, v0, v1}, Landroid/hardware/biometrics/face/ISession$Stub;->revokeChallenge(J)V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_188

    .line 150
    .end local v0    # "_arg0":J
    :pswitch_181
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/face/ISession$Stub;->generateChallenge()V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    nop

    .line 321
    :goto_188
    return v11

    nop

    :sswitch_data_18a
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_181
        :pswitch_173
        :pswitch_161
        :pswitch_13b
        :pswitch_129
        :pswitch_11e
        :pswitch_117
        :pswitch_108
        :pswitch_100
        :pswitch_e5
        :pswitch_dd
        :pswitch_d5
        :pswitch_c2
        :pswitch_ba
        :pswitch_9f
        :pswitch_64
        :pswitch_4d
        :pswitch_3a
    .end packed-switch
.end method
