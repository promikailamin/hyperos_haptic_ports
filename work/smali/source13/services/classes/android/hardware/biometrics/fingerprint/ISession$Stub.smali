.class public abstract Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_authenticate:I = 0x4

.field static final TRANSACTION_authenticateWithContext:I = 0xf

.field static final TRANSACTION_close:I = 0xb

.field static final TRANSACTION_detectInteraction:I = 0x5

.field static final TRANSACTION_detectInteractionWithContext:I = 0x11

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_enrollWithContext:I = 0x10

.field static final TRANSACTION_enumerateEnrollments:I = 0x6

.field static final TRANSACTION_generateChallenge:I = 0x1

.field static final TRANSACTION_getAuthenticatorId:I = 0x8

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_invalidateAuthenticatorId:I = 0x9

.field static final TRANSACTION_onContextChanged:I = 0x14

.field static final TRANSACTION_onPointerDown:I = 0xc

.field static final TRANSACTION_onPointerDownWithContext:I = 0x12

.field static final TRANSACTION_onPointerUp:I = 0xd

.field static final TRANSACTION_onPointerUpWithContext:I = 0x13

.field static final TRANSACTION_onUiReady:I = 0xe

.field static final TRANSACTION_removeEnrollments:I = 0x7

.field static final TRANSACTION_resetLockout:I = 0xa

.field static final TRANSACTION_revokeChallenge:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->markVintfStability()V

    .line 104
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/ISession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 112
    if-nez p0, :cond_4

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 116
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/ISession;

    if-eqz v1, :cond_14

    .line 117
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/fingerprint/ISession;

    return-object v1

    .line 119
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 123
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

    .line 127
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-object v10, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 128
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 129
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_15
    sparse-switch v7, :sswitch_data_188

    .line 151
    packed-switch v7, :pswitch_data_196

    .line 332
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 135
    :sswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v11

    .line 140
    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return v11

    .line 146
    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v11

    .line 324
    :pswitch_3a
    sget-object v0, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/common/OperationContext;

    .line 325
    .local v0, "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto/16 :goto_187

    .line 315
    .end local v0    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    :pswitch_4d
    sget-object v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 316
    .local v0, "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    goto/16 :goto_187

    .line 306
    .end local v0    # "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_60
    sget-object v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 307
    .restart local v0    # "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto/16 :goto_187

    .line 296
    .end local v0    # "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_73
    sget-object v0, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/common/OperationContext;

    .line 297
    .local v0, "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    .line 299
    .local v1, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 301
    goto/16 :goto_187

    .line 284
    .end local v0    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    .end local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_8a
    sget-object v0, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 286
    .local v0, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    sget-object v1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationContext;

    .line 287
    .local v1, "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v6, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v2

    .line 289
    .local v2, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 291
    goto/16 :goto_187

    .line 272
    .end local v0    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v1    # "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    .end local v2    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 274
    .local v0, "_arg0":J
    sget-object v2, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/common/OperationContext;

    .line 275
    .local v2, "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v3

    .line 277
    .local v3, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 279
    goto/16 :goto_187

    .line 265
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    .end local v3    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_c4
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onUiReady()V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto/16 :goto_187

    .line 257
    :pswitch_cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerUp(I)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_187

    .line 240
    .end local v0    # "_arg0":I
    :pswitch_db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 242
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 244
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 246
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 248
    .local v15, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 249
    .local v16, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerDown(IIIFF)V

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto/16 :goto_187

    .line 233
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":F
    .end local v16    # "_arg4":F
    :pswitch_102
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->close()V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto/16 :goto_187

    .line 225
    :pswitch_10a
    sget-object v0, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 226
    .local v0, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_187

    .line 218
    .end local v0    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :pswitch_11c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->invalidateAuthenticatorId()V

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto :goto_187

    .line 212
    :pswitch_123
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getAuthenticatorId()V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_187

    .line 204
    :pswitch_12a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 205
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->removeEnrollments([I)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    goto :goto_187

    .line 197
    .end local v0    # "_arg0":[I
    :pswitch_138
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enumerateEnrollments()V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_187

    .line 190
    :pswitch_13f
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    .line 191
    .local v0, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 193
    goto :goto_187

    .line 181
    .end local v0    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_14a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 182
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {v6, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v2

    .line 184
    .local v2, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 186
    goto :goto_187

    .line 171
    .end local v0    # "_arg0":J
    .end local v2    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_15c
    sget-object v0, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 172
    .local v0, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    .line 174
    .local v1, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 176
    goto :goto_187

    .line 162
    .end local v0    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 163
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {v6, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->revokeChallenge(J)V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_187

    .line 155
    .end local v0    # "_arg0":J
    :pswitch_180
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->generateChallenge()V

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    nop

    .line 335
    :goto_187
    return v11

    :sswitch_data_188
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_196
    .packed-switch 0x1
        :pswitch_180
        :pswitch_172
        :pswitch_15c
        :pswitch_14a
        :pswitch_13f
        :pswitch_138
        :pswitch_12a
        :pswitch_123
        :pswitch_11c
        :pswitch_10a
        :pswitch_102
        :pswitch_db
        :pswitch_cc
        :pswitch_c4
        :pswitch_a9
        :pswitch_8a
        :pswitch_73
        :pswitch_60
        :pswitch_4d
        :pswitch_3a
    .end packed-switch
.end method
