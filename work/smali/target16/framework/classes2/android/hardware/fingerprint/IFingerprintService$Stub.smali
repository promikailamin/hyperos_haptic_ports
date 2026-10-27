.class public abstract Landroid/hardware/fingerprint/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintService"

.field static final blacklist TRANSACTION_addAuthenticatorsRegisteredCallback:I = 0x21

.field static final greylist-max-o TRANSACTION_addClientActiveCallback:I = 0x1e

.field static final greylist-max-o TRANSACTION_addLockoutResetCallback:I = 0x1c

.field static final greylist-max-o TRANSACTION_authenticate:I = 0x5

.field static final greylist-max-o TRANSACTION_cancelAuthentication:I = 0x9

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0xb

.field static final greylist-max-o TRANSACTION_cancelEnrollment:I = 0xd

.field static final blacklist TRANSACTION_cancelFingerprintDetect:I = 0xa

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_detectFingerprint:I = 0x6

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x2

.field static final greylist-max-o TRANSACTION_enroll:I = 0xc

.field static final blacklist TRANSACTION_generateChallenge:I = 0x14

.field static final greylist-max-o TRANSACTION_getAuthenticatorId:I = 0x1a

.field static final greylist-max-o TRANSACTION_getEnrolledFingerprints:I = 0x11

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x18

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x4

.field static final blacklist TRANSACTION_getSensorPropertiesInternal:I = 0x3

.field static final greylist-max-o TRANSACTION_hasEnrolledFingerprints:I = 0x17

.field static final blacklist TRANSACTION_hasEnrolledFingerprintsDeprecated:I = 0x16

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0x19

.field static final greylist-max-o TRANSACTION_isClientActive:I = 0x1d

.field static final greylist-max-o TRANSACTION_isHardwareDetected:I = 0x13

.field static final blacklist TRANSACTION_isHardwareDetectedDeprecated:I = 0x12

.field static final blacklist TRANSACTION_onPointerDown:I = 0x22

.field static final blacklist TRANSACTION_onPointerUp:I = 0x23

.field static final blacklist TRANSACTION_onPowerPressed:I = 0x2a

.field static final blacklist TRANSACTION_onUdfpsUiEvent:I = 0x24

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x7

.field static final blacklist TRANSACTION_registerAuthenticationStateListener:I = 0x27

.field static final blacklist TRANSACTION_registerAuthenticators:I = 0x20

.field static final blacklist TRANSACTION_registerBiometricStateListener:I = 0x29

.field static final greylist-max-o TRANSACTION_remove:I = 0xe

.field static final blacklist TRANSACTION_removeAll:I = 0xf

.field static final greylist-max-o TRANSACTION_removeClientActiveCallback:I = 0x1f

.field static final greylist-max-o TRANSACTION_rename:I = 0x10

.field static final blacklist TRANSACTION_resetLockout:I = 0x1b

.field static final blacklist TRANSACTION_revokeChallenge:I = 0x15

.field static final blacklist TRANSACTION_scheduleWatchdog:I = 0x2b

.field static final blacklist TRANSACTION_setIgnoreDisplayTouches:I = 0x25

.field static final blacklist TRANSACTION_setUdfpsOverlayController:I = 0x26

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x8

.field static final blacklist TRANSACTION_unregisterAuthenticationStateListener:I = 0x28


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    nop

    .line 238
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 239
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 227
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 228
    const-string v0, "android.hardware.fingerprint.IFingerprintService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 229
    if-eqz p1, :cond_d

    .line 232
    iput-object p1, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 233
    return-void

    .line 230
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;
    .registers 3

    .line 246
    if-nez p0, :cond_4

    .line 247
    const/4 p0, 0x0

    return-object p0

    .line 249
    :cond_4
    const-string v0, "android.hardware.fingerprint.IFingerprintService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_13

    .line 251
    check-cast v0, Landroid/hardware/fingerprint/IFingerprintService;

    return-object v0

    .line 253
    :cond_13
    new-instance v0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 262
    packed-switch p0, :pswitch_data_86

    .line 438
    const/4 p0, 0x0

    return-object p0

    .line 434
    :pswitch_5
    const-string p0, "scheduleWatchdog"

    return-object p0

    .line 430
    :pswitch_8
    const-string p0, "onPowerPressed"

    return-object p0

    .line 426
    :pswitch_b
    const-string p0, "registerBiometricStateListener"

    return-object p0

    .line 422
    :pswitch_e
    const-string p0, "unregisterAuthenticationStateListener"

    return-object p0

    .line 418
    :pswitch_11
    const-string p0, "registerAuthenticationStateListener"

    return-object p0

    .line 414
    :pswitch_14
    const-string p0, "setUdfpsOverlayController"

    return-object p0

    .line 410
    :pswitch_17
    const-string p0, "setIgnoreDisplayTouches"

    return-object p0

    .line 406
    :pswitch_1a
    const-string p0, "onUdfpsUiEvent"

    return-object p0

    .line 402
    :pswitch_1d
    const-string p0, "onPointerUp"

    return-object p0

    .line 398
    :pswitch_20
    const-string p0, "onPointerDown"

    return-object p0

    .line 394
    :pswitch_23
    const-string p0, "addAuthenticatorsRegisteredCallback"

    return-object p0

    .line 390
    :pswitch_26
    const-string p0, "registerAuthenticators"

    return-object p0

    .line 386
    :pswitch_29
    const-string p0, "removeClientActiveCallback"

    return-object p0

    .line 382
    :pswitch_2c
    const-string p0, "addClientActiveCallback"

    return-object p0

    .line 378
    :pswitch_2f
    const-string p0, "isClientActive"

    return-object p0

    .line 374
    :pswitch_32
    const-string p0, "addLockoutResetCallback"

    return-object p0

    .line 370
    :pswitch_35
    const-string p0, "resetLockout"

    return-object p0

    .line 366
    :pswitch_38
    const-string p0, "getAuthenticatorId"

    return-object p0

    .line 362
    :pswitch_3b
    const-string p0, "invalidateAuthenticatorId"

    return-object p0

    .line 358
    :pswitch_3e
    const-string p0, "getLockoutModeForUser"

    return-object p0

    .line 354
    :pswitch_41
    const-string p0, "hasEnrolledFingerprints"

    return-object p0

    .line 350
    :pswitch_44
    const-string p0, "hasEnrolledFingerprintsDeprecated"

    return-object p0

    .line 346
    :pswitch_47
    const-string p0, "revokeChallenge"

    return-object p0

    .line 342
    :pswitch_4a
    const-string p0, "generateChallenge"

    return-object p0

    .line 338
    :pswitch_4d
    const-string p0, "isHardwareDetected"

    return-object p0

    .line 334
    :pswitch_50
    const-string p0, "isHardwareDetectedDeprecated"

    return-object p0

    .line 330
    :pswitch_53
    const-string p0, "getEnrolledFingerprints"

    return-object p0

    .line 326
    :pswitch_56
    const-string p0, "rename"

    return-object p0

    .line 322
    :pswitch_59
    const-string p0, "removeAll"

    return-object p0

    .line 318
    :pswitch_5c
    const-string p0, "remove"

    return-object p0

    .line 314
    :pswitch_5f
    const-string p0, "cancelEnrollment"

    return-object p0

    .line 310
    :pswitch_62
    const-string p0, "enroll"

    return-object p0

    .line 306
    :pswitch_65
    const-string p0, "cancelAuthenticationFromService"

    return-object p0

    .line 302
    :pswitch_68
    const-string p0, "cancelFingerprintDetect"

    return-object p0

    .line 298
    :pswitch_6b
    const-string p0, "cancelAuthentication"

    return-object p0

    .line 294
    :pswitch_6e
    const-string p0, "startPreparedClient"

    return-object p0

    .line 290
    :pswitch_71
    const-string p0, "prepareForAuthentication"

    return-object p0

    .line 286
    :pswitch_74
    const-string p0, "detectFingerprint"

    return-object p0

    .line 282
    :pswitch_77
    const-string p0, "authenticate"

    return-object p0

    .line 278
    :pswitch_7a
    const-string p0, "getSensorProperties"

    return-object p0

    .line 274
    :pswitch_7d
    const-string p0, "getSensorPropertiesInternal"

    return-object p0

    .line 270
    :pswitch_80
    const-string p0, "dumpSensorServiceStateProto"

    return-object p0

    .line 266
    :pswitch_83
    const-string p0, "createTestSession"

    return-object p0

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
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


# virtual methods
.method protected blacklist addAuthenticatorsRegisteredCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1970
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1971
    return-void
.end method

.method protected blacklist addClientActiveCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1955
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1956
    return-void
.end method

.method protected blacklist addLockoutResetCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1945
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1946
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 257
    return-object p0
.end method

.method protected blacklist cancelAuthenticationFromService_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1872
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1873
    return-void
.end method

.method protected blacklist cancelEnrollment_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1882
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1883
    return-void
.end method

.method protected blacklist cancelFingerprintDetect_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1867
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1868
    return-void
.end method

.method protected blacklist createTestSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1834
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1835
    return-void
.end method

.method protected blacklist detectFingerprint_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1851
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1852
    return-void
.end method

.method protected blacklist dumpSensorServiceStateProto_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1839
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1840
    return-void
.end method

.method protected blacklist enroll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1877
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1878
    return-void
.end method

.method protected blacklist generateChallenge_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1909
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1910
    return-void
.end method

.method protected blacklist getAuthenticatorId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1935
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1936
    return-void
.end method

.method protected blacklist getLockoutModeForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1925
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1926
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2025
    const/16 v0, 0x2a

    return v0
.end method

.method protected blacklist getSensorProperties_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1845
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1846
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 445
    invoke-static {p1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist hasEnrolledFingerprints_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1920
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1921
    return-void
.end method

.method protected blacklist invalidateAuthenticatorId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1930
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1931
    return-void
.end method

.method protected blacklist isClientActive_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1950
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1951
    return-void
.end method

.method protected blacklist isHardwareDetected_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1904
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1905
    return-void
.end method

.method protected blacklist onPointerDown_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1975
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1976
    return-void
.end method

.method protected blacklist onPointerUp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1980
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1981
    return-void
.end method

.method protected blacklist onPowerPressed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2015
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2016
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    move-object/from16 v2, p2

    move-object/from16 v11, p3

    .line 450
    const-string v3, "android.hardware.fingerprint.IFingerprintService"

    const/4 v12, 0x1

    if-lt p1, v12, :cond_11

    const v4, 0xffffff

    if-gt p1, v4, :cond_11

    .line 451
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    :cond_11
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_1a

    .line 454
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    return v12

    .line 457
    :cond_1a
    packed-switch p1, :pswitch_data_470

    .line 1000
    move-object v13, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 995
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->scheduleWatchdog()V

    .line 996
    goto/16 :goto_46e

    .line 990
    :pswitch_28
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPowerPressed()V

    .line 991
    goto/16 :goto_46e

    .line 982
    :pswitch_2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricStateListener;

    move-result-object v1

    .line 983
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 985
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    goto/16 :goto_46e

    .line 973
    :pswitch_40
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 974
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 976
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    goto/16 :goto_46e

    .line 964
    :pswitch_53
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 965
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 967
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    goto/16 :goto_46e

    .line 955
    :pswitch_66
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-result-object v1

    .line 956
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    .line 958
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    goto/16 :goto_46e

    .line 942
    :pswitch_79
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 944
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 946
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 947
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setIgnoreDisplayTouches(JIZ)V

    .line 949
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    goto/16 :goto_46e

    .line 929
    :pswitch_90
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 931
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 933
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 934
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 935
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onUdfpsUiEvent(IJI)V

    .line 936
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    goto/16 :goto_46e

    .line 916
    :pswitch_a7
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 918
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 920
    sget-object v5, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 921
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 923
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    goto/16 :goto_46e

    .line 903
    :pswitch_c2
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 905
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 907
    sget-object v5, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 908
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 910
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    goto/16 :goto_46e

    .line 894
    :pswitch_dd
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    move-result-object v1

    .line 895
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 897
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    goto/16 :goto_46e

    .line 885
    :pswitch_f0
    sget-object v1, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;

    .line 886
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerAuthenticators(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)V

    .line 888
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    goto/16 :goto_46e

    .line 876
    :pswitch_103
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    move-result-object v1

    .line 877
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 879
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    goto/16 :goto_46e

    .line 867
    :pswitch_116
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    move-result-object v1

    .line 868
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 870
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto/16 :goto_46e

    .line 859
    :pswitch_129
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isClientActive()Z

    move-result v0

    .line 860
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 862
    goto/16 :goto_46e

    .line 849
    :pswitch_135
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v1

    .line 851
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 852
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {p0, v1, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    goto/16 :goto_46e

    .line 832
    :pswitch_14c
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    .line 843
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    goto/16 :goto_46e

    .line 820
    :pswitch_16c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {p0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getAuthenticatorId(II)J

    move-result-wide v0

    .line 825
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 827
    goto/16 :goto_46e

    .line 807
    :pswitch_183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v3

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 814
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    goto/16 :goto_46e

    .line 795
    :pswitch_19e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {p0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getLockoutModeForUser(II)I

    move-result v0

    .line 800
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    goto/16 :goto_46e

    .line 781
    :pswitch_1b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprints(IILjava/lang/String;)Z

    move-result v0

    .line 788
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 790
    goto/16 :goto_46e

    .line 767
    :pswitch_1d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprintsDeprecated(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 774
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 776
    goto/16 :goto_46e

    .line 750
    :pswitch_1eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 758
    move-object/from16 v7, p2

    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 759
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V

    .line 761
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    goto/16 :goto_46e

    .line 733
    :pswitch_20d
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 735
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 737
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 739
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 741
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 742
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 744
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    goto/16 :goto_46e

    .line 721
    :pswitch_232
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 723
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v0

    .line 726
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 728
    goto/16 :goto_46e

    .line 709
    :pswitch_24a
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 711
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 712
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetectedDeprecated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 714
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 716
    goto/16 :goto_46e

    .line 695
    :pswitch_262
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 697
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 699
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 700
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 702
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 704
    goto/16 :goto_46e

    .line 682
    :pswitch_27e
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 684
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 686
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 687
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->rename(IILjava/lang/String;)V

    .line 689
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    goto/16 :goto_46e

    .line 667
    :pswitch_296
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 669
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 671
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v3

    .line 673
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 674
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 676
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_46e

    .line 650
    :pswitch_2b6
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 652
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 656
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 658
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 659
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_46e

    .line 639
    :pswitch_2db
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 641
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 642
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelEnrollment(Landroid/os/IBinder;J)V

    .line 644
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_46e

    .line 617
    :pswitch_2ef
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 619
    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 621
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 623
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 625
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 627
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 629
    sget-object v8, Landroid/hardware/fingerprint/FingerprintEnrollOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    .line 630
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    move-object v0, p0

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)J

    move-result-wide v0

    .line 632
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 634
    goto/16 :goto_46e

    .line 602
    :pswitch_325
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 604
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 606
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 609
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 611
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    goto/16 :goto_46e

    .line 589
    :pswitch_342
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 591
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 593
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 594
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 596
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    goto/16 :goto_46e

    .line 574
    :pswitch_35a
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 576
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 580
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 581
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V

    .line 583
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    goto/16 :goto_46e

    .line 563
    :pswitch_377
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 565
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 566
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->startPreparedClient(II)V

    .line 568
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    goto/16 :goto_46e

    .line 540
    :pswitch_38b
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 542
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 544
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v4

    .line 546
    sget-object v5, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 554
    move-object/from16 v13, p2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 555
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->prepareForAuthentication(Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JIZZ)V

    .line 557
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_46e

    .line 526
    :pswitch_3c2
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 528
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v2

    .line 530
    sget-object v3, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 531
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->detectFingerprint(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J

    move-result-wide v0

    .line 533
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 535
    goto/16 :goto_46e

    .line 510
    :pswitch_3e6
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 512
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 514
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 516
    sget-object v5, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 517
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->authenticate(Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J

    move-result-wide v0

    .line 519
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 521
    goto :goto_46e

    .line 498
    :pswitch_40e
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 500
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    .line 503
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 505
    goto :goto_46e

    .line 488
    :pswitch_425
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 491
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 493
    goto :goto_46e

    .line 476
    :pswitch_438
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 479
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->dumpSensorServiceStateProto(IZ)[B

    move-result-object v0

    .line 481
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 483
    goto :goto_46e

    .line 462
    :pswitch_44f
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 464
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v2

    .line 466
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 467
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    .line 469
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 471
    nop

    .line 1003
    :goto_46e
    return v12

    nop

    :pswitch_data_470
    .packed-switch 0x1
        :pswitch_44f
        :pswitch_438
        :pswitch_425
        :pswitch_40e
        :pswitch_3e6
        :pswitch_3c2
        :pswitch_38b
        :pswitch_377
        :pswitch_35a
        :pswitch_342
        :pswitch_325
        :pswitch_2ef
        :pswitch_2db
        :pswitch_2b6
        :pswitch_296
        :pswitch_27e
        :pswitch_262
        :pswitch_24a
        :pswitch_232
        :pswitch_20d
        :pswitch_1eb
        :pswitch_1d0
        :pswitch_1b5
        :pswitch_19e
        :pswitch_183
        :pswitch_16c
        :pswitch_14c
        :pswitch_135
        :pswitch_129
        :pswitch_116
        :pswitch_103
        :pswitch_f0
        :pswitch_dd
        :pswitch_c2
        :pswitch_a7
        :pswitch_90
        :pswitch_79
        :pswitch_66
        :pswitch_53
        :pswitch_40
        :pswitch_2d
        :pswitch_28
        :pswitch_23
    .end packed-switch
.end method

.method protected blacklist onUdfpsUiEvent_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1985
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1986
    return-void
.end method

.method protected blacklist prepareForAuthentication_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1856
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1857
    return-void
.end method

.method protected blacklist registerAuthenticationStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2000
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2001
    return-void
.end method

.method protected blacklist registerAuthenticators_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1965
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1966
    return-void
.end method

.method protected blacklist registerBiometricStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2010
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2011
    return-void
.end method

.method protected blacklist removeAll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1892
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1893
    return-void
.end method

.method protected blacklist removeClientActiveCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1960
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1961
    return-void
.end method

.method protected blacklist remove_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1887
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1888
    return-void
.end method

.method protected blacklist rename_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1897
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1898
    return-void
.end method

.method protected blacklist resetLockout_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1940
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1941
    return-void
.end method

.method protected blacklist revokeChallenge_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1914
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1915
    return-void
.end method

.method protected blacklist scheduleWatchdog_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2020
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2021
    return-void
.end method

.method protected blacklist setIgnoreDisplayTouches_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1990
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1991
    return-void
.end method

.method protected blacklist setUdfpsOverlayController_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1995
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1996
    return-void
.end method

.method protected blacklist startPreparedClient_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1861
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1862
    return-void
.end method

.method protected blacklist unregisterAuthenticationStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2005
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2006
    return-void
.end method
