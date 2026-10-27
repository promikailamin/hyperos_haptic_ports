.class public abstract Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.super Landroid/os/Binder;
.source "IBiometricAuthenticator.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0x6

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x3

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0xb

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x9

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x2

.field static final blacklist TRANSACTION_hasEnrolledTemplates:I = 0x8

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0xa

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x7

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x4

.field static final blacklist TRANSACTION_resetLockout:I = 0xc

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 91
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricAuthenticator;
    .registers 3

    .line 99
    if-nez p0, :cond_4

    .line 100
    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_4
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricAuthenticator;

    if-eqz v1, :cond_13

    .line 104
    check-cast v0, Landroid/hardware/biometrics/IBiometricAuthenticator;

    return-object v0

    .line 106
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 115
    packed-switch p0, :pswitch_data_2c

    .line 167
    const/4 p0, 0x0

    return-object p0

    .line 163
    :pswitch_5
    const-string/jumbo p0, "resetLockout"

    return-object p0

    .line 159
    :pswitch_9
    const-string p0, "getAuthenticatorId"

    return-object p0

    .line 155
    :pswitch_c
    const-string p0, "invalidateAuthenticatorId"

    return-object p0

    .line 151
    :pswitch_f
    const-string p0, "getLockoutModeForUser"

    return-object p0

    .line 147
    :pswitch_12
    const-string p0, "hasEnrolledTemplates"

    return-object p0

    .line 143
    :pswitch_15
    const-string p0, "isHardwareDetected"

    return-object p0

    .line 139
    :pswitch_18
    const-string p0, "cancelAuthenticationFromService"

    return-object p0

    .line 135
    :pswitch_1b
    const-string/jumbo p0, "startPreparedClient"

    return-object p0

    .line 131
    :pswitch_1f
    const-string/jumbo p0, "prepareForAuthentication"

    return-object p0

    .line 127
    :pswitch_23
    const-string p0, "dumpSensorServiceStateProto"

    return-object p0

    .line 123
    :pswitch_26
    const-string p0, "getSensorProperties"

    return-object p0

    .line 119
    :pswitch_29
    const-string p0, "createTestSession"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 110
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 612
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 174
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v14, p3

    .line 179
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    const/4 v15, 0x1

    if-lt v1, v15, :cond_16

    const v3, 0xffffff

    if-gt v1, v3, :cond_16

    .line 180
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 179
    :cond_16
    move-object/from16 v3, p2

    .line 182
    :goto_18
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_21

    .line 183
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return v15

    .line 186
    :cond_21
    packed-switch v1, :pswitch_data_14a

    .line 341
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 327
    :pswitch_29
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 329
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 333
    invoke-virtual {v3}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 334
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V

    .line 336
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    goto/16 :goto_149

    .line 317
    :pswitch_44
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getAuthenticatorId(I)J

    move-result-wide v0

    .line 320
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 322
    goto/16 :goto_149

    .line 306
    :pswitch_57
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 308
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v2

    .line 309
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 311
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_149

    .line 296
    :pswitch_6e
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getLockoutModeForUser(I)I

    move-result v0

    .line 299
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    goto/16 :goto_149

    .line 284
    :pswitch_81
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v0

    .line 289
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 291
    goto/16 :goto_149

    .line 274
    :pswitch_98
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v0

    .line 277
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    goto/16 :goto_149

    .line 261
    :pswitch_ab
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 263
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 266
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 268
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    goto/16 :goto_149

    .line 252
    :pswitch_c2
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->startPreparedClient(I)V

    .line 255
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto/16 :goto_149

    .line 223
    :pswitch_d1
    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 225
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v6

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual/range {v0 .. v13}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V

    .line 246
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto :goto_149

    .line 213
    :pswitch_10b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->dumpSensorServiceStateProto(Z)[B

    move-result-object v0

    .line 216
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 218
    goto :goto_149

    .line 203
    :pswitch_11d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v0

    .line 206
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {v14, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    goto :goto_149

    .line 191
    :pswitch_12f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    .line 196
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 198
    nop

    .line 344
    :goto_149
    return v15

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_12f
        :pswitch_11d
        :pswitch_10b
        :pswitch_d1
        :pswitch_c2
        :pswitch_ab
        :pswitch_98
        :pswitch_81
        :pswitch_6e
        :pswitch_57
        :pswitch_44
        :pswitch_29
    .end packed-switch
.end method
