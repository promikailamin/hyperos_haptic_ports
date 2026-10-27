.class public abstract Landroid/hardware/biometrics/IAuthService$Stub;
.super Landroid/os/Binder;
.source "IAuthService.java"

# interfaces
.implements Landroid/hardware/biometrics/IAuthService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IAuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IAuthService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticate:I = 0x5

.field static final blacklist TRANSACTION_canAuthenticate:I = 0x7

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x6

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_getAuthenticatorIds:I = 0x11

.field static final blacklist TRANSACTION_getButtonLabel:I = 0x14

.field static final blacklist TRANSACTION_getEnrollmentStatusList:I = 0xa

.field static final blacklist TRANSACTION_getLastAuthenticationTime:I = 0x8

.field static final blacklist TRANSACTION_getPromptMessage:I = 0x15

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x3

.field static final blacklist TRANSACTION_getSettingName:I = 0x16

.field static final blacklist TRANSACTION_getUiPackage:I = 0x4

.field static final blacklist TRANSACTION_hasEnrolledBiometrics:I = 0x9

.field static final blacklist TRANSACTION_invalidateAuthenticatorIds:I = 0x10

.field static final blacklist TRANSACTION_registerAuthenticationStateListener:I = 0xc

.field static final blacklist TRANSACTION_registerEnabledOnKeyguardCallback:I = 0xb

.field static final blacklist TRANSACTION_registerIdentityCheckStateListener:I = 0xe

.field static final blacklist TRANSACTION_resetLockout:I = 0x13

.field static final blacklist TRANSACTION_resetLockoutTimeBound:I = 0x12

.field static final blacklist TRANSACTION_setIdentityCheckTestStatus:I = 0x2

.field static final blacklist TRANSACTION_unregisterAuthenticationStateListener:I = 0xd

.field static final blacklist TRANSACTION_unregisterIdentityCheckStateListener:I = 0xf


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    nop

    .line 156
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/IAuthService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 157
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 145
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 146
    const-string v0, "android.hardware.biometrics.IAuthService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IAuthService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 147
    if-eqz p1, :cond_d

    .line 150
    iput-object p1, p0, Landroid/hardware/biometrics/IAuthService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 151
    return-void

    .line 148
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IAuthService;
    .registers 3

    .line 164
    if-nez p0, :cond_4

    .line 165
    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_4
    const-string v0, "android.hardware.biometrics.IAuthService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/biometrics/IAuthService;

    if-eqz v1, :cond_13

    .line 169
    check-cast v0, Landroid/hardware/biometrics/IAuthService;

    return-object v0

    .line 171
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 180
    packed-switch p0, :pswitch_data_50

    .line 272
    const/4 p0, 0x0

    return-object p0

    .line 268
    :pswitch_5
    const-string p0, "getSettingName"

    return-object p0

    .line 264
    :pswitch_8
    const-string p0, "getPromptMessage"

    return-object p0

    .line 260
    :pswitch_b
    const-string p0, "getButtonLabel"

    return-object p0

    .line 256
    :pswitch_e
    const-string/jumbo p0, "resetLockout"

    return-object p0

    .line 252
    :pswitch_12
    const-string/jumbo p0, "resetLockoutTimeBound"

    return-object p0

    .line 248
    :pswitch_16
    const-string p0, "getAuthenticatorIds"

    return-object p0

    .line 244
    :pswitch_19
    const-string p0, "invalidateAuthenticatorIds"

    return-object p0

    .line 240
    :pswitch_1c
    const-string/jumbo p0, "unregisterIdentityCheckStateListener"

    return-object p0

    .line 236
    :pswitch_20
    const-string/jumbo p0, "registerIdentityCheckStateListener"

    return-object p0

    .line 232
    :pswitch_24
    const-string/jumbo p0, "unregisterAuthenticationStateListener"

    return-object p0

    .line 228
    :pswitch_28
    const-string/jumbo p0, "registerAuthenticationStateListener"

    return-object p0

    .line 224
    :pswitch_2c
    const-string/jumbo p0, "registerEnabledOnKeyguardCallback"

    return-object p0

    .line 220
    :pswitch_30
    const-string p0, "getEnrollmentStatusList"

    return-object p0

    .line 216
    :pswitch_33
    const-string p0, "hasEnrolledBiometrics"

    return-object p0

    .line 212
    :pswitch_36
    const-string p0, "getLastAuthenticationTime"

    return-object p0

    .line 208
    :pswitch_39
    const-string p0, "canAuthenticate"

    return-object p0

    .line 204
    :pswitch_3c
    const-string p0, "cancelAuthentication"

    return-object p0

    .line 200
    :pswitch_3f
    const-string p0, "authenticate"

    return-object p0

    .line 196
    :pswitch_42
    const-string p0, "getUiPackage"

    return-object p0

    .line 192
    :pswitch_45
    const-string p0, "getSensorProperties"

    return-object p0

    .line 188
    :pswitch_48
    const-string/jumbo p0, "setIdentityCheckTestStatus"

    return-object p0

    .line 184
    :pswitch_4c
    const-string p0, "createTestSession"

    return-object p0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 175
    return-object p0
.end method

.method protected blacklist createTestSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Landroid/hardware/biometrics/IAuthService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1025
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1062
    const/16 v0, 0x15

    return v0
.end method

.method protected blacklist getSensorProperties_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1034
    iget-object v0, p0, Landroid/hardware/biometrics/IAuthService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1035
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 279
    invoke-static {p1}, Landroid/hardware/biometrics/IAuthService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getUiPackage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Landroid/hardware/biometrics/IAuthService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1040
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    nop

    .line 284
    const-string v3, "android.hardware.biometrics.IAuthService"

    const/4 v8, 0x1

    if-lt p1, v8, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 285
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 288
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    return v8

    .line 291
    :cond_17
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_246

    .line 574
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 555
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, v1, v4, v5}, Landroid/hardware/biometrics/IAuthService$Stub;->getSettingName(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v0, :cond_40

    .line 564
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    invoke-static {v0, p3, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_244

    .line 568
    :cond_40
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    goto/16 :goto_244

    .line 535
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {p0, v1, v4, v5}, Landroid/hardware/biometrics/IAuthService$Stub;->getPromptMessage(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    if-eqz v0, :cond_65

    .line 544
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    invoke-static {v0, p3, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_244

    .line 548
    :cond_65
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    goto/16 :goto_244

    .line 515
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v1, v4, v5}, Landroid/hardware/biometrics/IAuthService$Stub;->getButtonLabel(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    if-eqz v0, :cond_8a

    .line 524
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    invoke-static {v0, p3, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_244

    .line 528
    :cond_8a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    goto/16 :goto_244

    .line 504
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v1, v3}, Landroid/hardware/biometrics/IAuthService$Stub;->resetLockout(I[B)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    goto/16 :goto_244

    .line 487
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/IAuthService$Stub;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    goto/16 :goto_244

    .line 477
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->getAuthenticatorIds(I)[J

    move-result-object v0

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 482
    goto/16 :goto_244

    .line 464
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v3

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/biometrics/IAuthService$Stub;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    goto/16 :goto_244

    .line 455
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IIdentityCheckStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IIdentityCheckStateListener;

    move-result-object v1

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->unregisterIdentityCheckStateListener(Landroid/hardware/biometrics/IIdentityCheckStateListener;)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    goto/16 :goto_244

    .line 446
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IIdentityCheckStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IIdentityCheckStateListener;

    move-result-object v1

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->registerIdentityCheckStateListener(Landroid/hardware/biometrics/IIdentityCheckStateListener;)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    goto/16 :goto_244

    .line 437
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    goto/16 :goto_244

    .line 428
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    goto/16 :goto_244

    .line 419
    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    move-result-object v1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_244

    .line 407
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v1, v2}, Landroid/hardware/biometrics/IAuthService$Stub;->getEnrollmentStatusList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 414
    goto/16 :goto_244

    .line 395
    :pswitch_166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v1, v2}, Landroid/hardware/biometrics/IAuthService$Stub;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result v0

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 402
    goto/16 :goto_244

    .line 383
    :pswitch_17d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v1, v2}, Landroid/hardware/biometrics/IAuthService$Stub;->getLastAuthenticationTime(II)J

    move-result-wide v0

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 390
    goto/16 :goto_244

    .line 369
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/biometrics/IAuthService$Stub;->canAuthenticate(Ljava/lang/String;II)I

    move-result v0

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    goto/16 :goto_244

    .line 356
    :pswitch_1af
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/biometrics/IAuthService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    goto/16 :goto_244

    .line 336
    :pswitch_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v5

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 346
    sget-object v9, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/biometrics/PromptInfo;

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    move-object v0, p0

    move-object v6, v7

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/biometrics/IAuthService$Stub;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v0

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 351
    goto :goto_244

    .line 328
    :pswitch_1f7
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub;->getUiPackage()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    goto :goto_244

    .line 319
    :pswitch_202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 324
    goto :goto_244

    .line 310
    :pswitch_214
    sget-object v1, Landroid/hardware/biometrics/IdentityCheckStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/IdentityCheckStatus;

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->setIdentityCheckTestStatus(Landroid/hardware/biometrics/IdentityCheckStatus;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto :goto_244

    .line 296
    :pswitch_226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v2

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/biometrics/IAuthService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 305
    nop

    .line 577
    :goto_244
    return v8

    nop

    :pswitch_data_246
    .packed-switch 0x1
        :pswitch_226
        :pswitch_214
        :pswitch_202
        :pswitch_1f7
        :pswitch_1c6
        :pswitch_1af
        :pswitch_194
        :pswitch_17d
        :pswitch_166
        :pswitch_14f
        :pswitch_13c
        :pswitch_129
        :pswitch_116
        :pswitch_103
        :pswitch_f0
        :pswitch_d5
        :pswitch_c2
        :pswitch_a2
        :pswitch_8f
        :pswitch_6a
        :pswitch_45
        :pswitch_20
    .end packed-switch
.end method

.method protected blacklist setIdentityCheckTestStatus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1029
    iget-object v0, p0, Landroid/hardware/biometrics/IAuthService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1030
    return-void
.end method
