.class public abstract Landroid/hardware/biometrics/face/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/face/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_onAuthenticationFailed:I = 0x8

.field static final blacklist TRANSACTION_onAuthenticationFrame:I = 0x3

.field static final blacklist TRANSACTION_onAuthenticationSucceeded:I = 0x7

.field static final blacklist TRANSACTION_onAuthenticatorIdInvalidated:I = 0x12

.field static final blacklist TRANSACTION_onAuthenticatorIdRetrieved:I = 0x11

.field static final blacklist TRANSACTION_onChallengeGenerated:I = 0x1

.field static final blacklist TRANSACTION_onChallengeRevoked:I = 0x2

.field static final blacklist TRANSACTION_onEnrollmentFrame:I = 0x4

.field static final blacklist TRANSACTION_onEnrollmentProgress:I = 0x6

.field static final blacklist TRANSACTION_onEnrollmentsEnumerated:I = 0xd

.field static final blacklist TRANSACTION_onEnrollmentsRemoved:I = 0x10

.field static final blacklist TRANSACTION_onError:I = 0x5

.field static final blacklist TRANSACTION_onFeatureSet:I = 0xf

.field static final blacklist TRANSACTION_onFeaturesRetrieved:I = 0xe

.field static final blacklist TRANSACTION_onInteractionDetected:I = 0xc

.field static final blacklist TRANSACTION_onLockoutCleared:I = 0xb

.field static final blacklist TRANSACTION_onLockoutPermanent:I = 0xa

.field static final blacklist TRANSACTION_onLockoutTimed:I = 0x9

.field static final blacklist TRANSACTION_onSessionClosed:I = 0x13


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 101
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->markVintfStability()V

    .line 102
    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISessionCallback;
    .registers 3

    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/biometrics/face/ISessionCallback;

    if-eqz v1, :cond_13

    .line 115
    check-cast v0, Landroid/hardware/biometrics/face/ISessionCallback;

    return-object v0

    .line 117
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 126
    sparse-switch p0, :sswitch_data_58

    .line 214
    const/4 p0, 0x0

    return-object p0

    .line 206
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 210
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 202
    :sswitch_b
    const-string/jumbo p0, "onSessionClosed"

    return-object p0

    .line 198
    :sswitch_f
    const-string/jumbo p0, "onAuthenticatorIdInvalidated"

    return-object p0

    .line 194
    :sswitch_13
    const-string/jumbo p0, "onAuthenticatorIdRetrieved"

    return-object p0

    .line 190
    :sswitch_17
    const-string/jumbo p0, "onEnrollmentsRemoved"

    return-object p0

    .line 186
    :sswitch_1b
    const-string/jumbo p0, "onFeatureSet"

    return-object p0

    .line 182
    :sswitch_1f
    const-string/jumbo p0, "onFeaturesRetrieved"

    return-object p0

    .line 178
    :sswitch_23
    const-string/jumbo p0, "onEnrollmentsEnumerated"

    return-object p0

    .line 174
    :sswitch_27
    const-string/jumbo p0, "onInteractionDetected"

    return-object p0

    .line 170
    :sswitch_2b
    const-string/jumbo p0, "onLockoutCleared"

    return-object p0

    .line 166
    :sswitch_2f
    const-string/jumbo p0, "onLockoutPermanent"

    return-object p0

    .line 162
    :sswitch_33
    const-string/jumbo p0, "onLockoutTimed"

    return-object p0

    .line 158
    :sswitch_37
    const-string/jumbo p0, "onAuthenticationFailed"

    return-object p0

    .line 154
    :sswitch_3b
    const-string/jumbo p0, "onAuthenticationSucceeded"

    return-object p0

    .line 150
    :sswitch_3f
    const-string/jumbo p0, "onEnrollmentProgress"

    return-object p0

    .line 146
    :sswitch_43
    const-string/jumbo p0, "onError"

    return-object p0

    .line 142
    :sswitch_47
    const-string/jumbo p0, "onEnrollmentFrame"

    return-object p0

    .line 138
    :sswitch_4b
    const-string/jumbo p0, "onAuthenticationFrame"

    return-object p0

    .line 134
    :sswitch_4f
    const-string/jumbo p0, "onChallengeRevoked"

    return-object p0

    .line 130
    :sswitch_53
    const-string/jumbo p0, "onChallengeGenerated"

    return-object p0

    nop

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_53
        0x2 -> :sswitch_4f
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_47
        0x5 -> :sswitch_43
        0x6 -> :sswitch_3f
        0x7 -> :sswitch_3b
        0x8 -> :sswitch_37
        0x9 -> :sswitch_33
        0xa -> :sswitch_2f
        0xb -> :sswitch_2b
        0xc -> :sswitch_27
        0xd -> :sswitch_23
        0xe -> :sswitch_1f
        0xf -> :sswitch_1b
        0x10 -> :sswitch_17
        0x11 -> :sswitch_13
        0x12 -> :sswitch_f
        0x13 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 121
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 830
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 221
    invoke-static {p1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 226
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 227
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 230
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    return v2

    .line 233
    :cond_16
    if-ne p1, v1, :cond_23

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return v2

    .line 238
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    return v2

    .line 243
    :cond_33
    packed-switch p1, :pswitch_data_148

    .line 409
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 403
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onSessionClosed()V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    goto/16 :goto_146

    .line 395
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticatorIdInvalidated(J)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    goto/16 :goto_146

    .line 386
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticatorIdRetrieved(J)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    goto/16 :goto_146

    .line 377
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentsRemoved([I)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto/16 :goto_146

    .line 368
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onFeatureSet(B)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    goto/16 :goto_146

    .line 359
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onFeaturesRetrieved([B)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_146

    .line 350
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentsEnumerated([I)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_146

    .line 343
    :pswitch_9d
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onInteractionDetected()V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_146

    .line 337
    :pswitch_a5
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onLockoutCleared()V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    goto/16 :goto_146

    .line 331
    :pswitch_ad
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onLockoutPermanent()V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    goto/16 :goto_146

    .line 323
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onLockoutTimed(J)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_146

    .line 316
    :pswitch_c4
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticationFailed()V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    goto/16 :goto_146

    .line 306
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 308
    sget-object p4, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, p1, p4}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto :goto_146

    .line 295
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, p1, p4}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentProgress(II)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto :goto_146

    .line 284
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, p1, p4}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onError(BI)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto :goto_146

    .line 275
    :pswitch_106
    sget-object p1, Landroid/hardware/biometrics/face/EnrollmentFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/face/EnrollmentFrame;

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto :goto_146

    .line 266
    :pswitch_118
    sget-object p1, Landroid/hardware/biometrics/face/AuthenticationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto :goto_146

    .line 257
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onChallengeRevoked(J)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto :goto_146

    .line 248
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onChallengeGenerated(J)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    nop

    .line 412
    :goto_146
    return v2

    nop

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_138
        :pswitch_12a
        :pswitch_118
        :pswitch_106
        :pswitch_f4
        :pswitch_e2
        :pswitch_cc
        :pswitch_c4
        :pswitch_b5
        :pswitch_ad
        :pswitch_a5
        :pswitch_9d
        :pswitch_8e
        :pswitch_7f
        :pswitch_70
        :pswitch_61
        :pswitch_52
        :pswitch_43
        :pswitch_3b
    .end packed-switch
.end method
