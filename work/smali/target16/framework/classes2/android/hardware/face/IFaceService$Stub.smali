.class public abstract Landroid/hardware/face/IFaceService$Stub;
.super Landroid/os/Binder;
.source "IFaceService.java"

# interfaces
.implements Landroid/hardware/face/IFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAuthenticatorsRegisteredCallback:I = 0x1e

.field static final blacklist TRANSACTION_addLockoutResetCallback:I = 0x1a

.field static final blacklist TRANSACTION_authenticate:I = 0x5

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x9

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0xb

.field static final blacklist TRANSACTION_cancelEnrollment:I = 0xe

.field static final blacklist TRANSACTION_cancelFaceDetect:I = 0xa

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_detectFace:I = 0x6

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x2

.field static final blacklist TRANSACTION_enroll:I = 0xc

.field static final blacklist TRANSACTION_enrollRemotely:I = 0xd

.field static final blacklist TRANSACTION_generateChallenge:I = 0x13

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0x18

.field static final blacklist TRANSACTION_getEnrolledFaces:I = 0x11

.field static final blacklist TRANSACTION_getFeature:I = 0x1c

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x16

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x4

.field static final blacklist TRANSACTION_getSensorPropertiesInternal:I = 0x3

.field static final blacklist TRANSACTION_hasEnrolledFaces:I = 0x15

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0x17

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x12

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x7

.field static final blacklist TRANSACTION_registerAuthenticationStateListener:I = 0x1f

.field static final blacklist TRANSACTION_registerAuthenticators:I = 0x1d

.field static final blacklist TRANSACTION_registerBiometricStateListener:I = 0x21

.field static final blacklist TRANSACTION_remove:I = 0xf

.field static final blacklist TRANSACTION_removeAll:I = 0x10

.field static final blacklist TRANSACTION_resetLockout:I = 0x19

.field static final blacklist TRANSACTION_revokeChallenge:I = 0x14

.field static final blacklist TRANSACTION_scheduleWatchdog:I = 0x22

.field static final blacklist TRANSACTION_setFeature:I = 0x1b

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x8

.field static final blacklist TRANSACTION_unregisterAuthenticationStateListener:I = 0x20


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    nop

    .line 197
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/face/IFaceService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 198
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 186
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 187
    const-string v0, "android.hardware.face.IFaceService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/face/IFaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 188
    if-eqz p1, :cond_d

    .line 191
    iput-object p1, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 192
    return-void

    .line 189
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;
    .registers 3

    .line 205
    if-nez p0, :cond_4

    .line 206
    const/4 p0, 0x0

    return-object p0

    .line 208
    :cond_4
    const-string v0, "android.hardware.face.IFaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_13

    .line 210
    check-cast v0, Landroid/hardware/face/IFaceService;

    return-object v0

    .line 212
    :cond_13
    new-instance v0, Landroid/hardware/face/IFaceService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/face/IFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 221
    packed-switch p0, :pswitch_data_6c

    .line 361
    const/4 p0, 0x0

    return-object p0

    .line 357
    :pswitch_5
    const-string p0, "scheduleWatchdog"

    return-object p0

    .line 353
    :pswitch_8
    const-string p0, "registerBiometricStateListener"

    return-object p0

    .line 349
    :pswitch_b
    const-string p0, "unregisterAuthenticationStateListener"

    return-object p0

    .line 345
    :pswitch_e
    const-string p0, "registerAuthenticationStateListener"

    return-object p0

    .line 341
    :pswitch_11
    const-string p0, "addAuthenticatorsRegisteredCallback"

    return-object p0

    .line 337
    :pswitch_14
    const-string p0, "registerAuthenticators"

    return-object p0

    .line 333
    :pswitch_17
    const-string p0, "getFeature"

    return-object p0

    .line 329
    :pswitch_1a
    const-string p0, "setFeature"

    return-object p0

    .line 325
    :pswitch_1d
    const-string p0, "addLockoutResetCallback"

    return-object p0

    .line 321
    :pswitch_20
    const-string p0, "resetLockout"

    return-object p0

    .line 317
    :pswitch_23
    const-string p0, "getAuthenticatorId"

    return-object p0

    .line 313
    :pswitch_26
    const-string p0, "invalidateAuthenticatorId"

    return-object p0

    .line 309
    :pswitch_29
    const-string p0, "getLockoutModeForUser"

    return-object p0

    .line 305
    :pswitch_2c
    const-string p0, "hasEnrolledFaces"

    return-object p0

    .line 301
    :pswitch_2f
    const-string p0, "revokeChallenge"

    return-object p0

    .line 297
    :pswitch_32
    const-string p0, "generateChallenge"

    return-object p0

    .line 293
    :pswitch_35
    const-string p0, "isHardwareDetected"

    return-object p0

    .line 289
    :pswitch_38
    const-string p0, "getEnrolledFaces"

    return-object p0

    .line 285
    :pswitch_3b
    const-string p0, "removeAll"

    return-object p0

    .line 281
    :pswitch_3e
    const-string p0, "remove"

    return-object p0

    .line 277
    :pswitch_41
    const-string p0, "cancelEnrollment"

    return-object p0

    .line 273
    :pswitch_44
    const-string p0, "enrollRemotely"

    return-object p0

    .line 269
    :pswitch_47
    const-string p0, "enroll"

    return-object p0

    .line 265
    :pswitch_4a
    const-string p0, "cancelAuthenticationFromService"

    return-object p0

    .line 261
    :pswitch_4d
    const-string p0, "cancelFaceDetect"

    return-object p0

    .line 257
    :pswitch_50
    const-string p0, "cancelAuthentication"

    return-object p0

    .line 253
    :pswitch_53
    const-string p0, "startPreparedClient"

    return-object p0

    .line 249
    :pswitch_56
    const-string p0, "prepareForAuthentication"

    return-object p0

    .line 245
    :pswitch_59
    const-string p0, "detectFace"

    return-object p0

    .line 241
    :pswitch_5c
    const-string p0, "authenticate"

    return-object p0

    .line 237
    :pswitch_5f
    const-string p0, "getSensorProperties"

    return-object p0

    .line 233
    :pswitch_62
    const-string p0, "getSensorPropertiesInternal"

    return-object p0

    .line 229
    :pswitch_65
    const-string p0, "dumpSensorServiceStateProto"

    return-object p0

    .line 225
    :pswitch_68
    const-string p0, "createTestSession"

    return-object p0

    nop

    :pswitch_data_6c
    .packed-switch 0x1
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
.method protected blacklist addLockoutResetCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1664
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1665
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 216
    return-object p0
.end method

.method protected blacklist authenticate_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1559
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1560
    return-void
.end method

.method protected blacklist cancelAuthenticationFromService_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1589
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1590
    return-void
.end method

.method protected blacklist cancelAuthentication_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1579
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1580
    return-void
.end method

.method protected blacklist cancelEnrollment_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1604
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1605
    return-void
.end method

.method protected blacklist cancelFaceDetect_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1585
    return-void
.end method

.method protected blacklist createTestSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1539
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1540
    return-void
.end method

.method protected blacklist detectFace_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1564
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1565
    return-void
.end method

.method protected blacklist dumpSensorServiceStateProto_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1544
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1545
    return-void
.end method

.method protected blacklist enrollRemotely_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1600
    return-void
.end method

.method protected blacklist enroll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1594
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1595
    return-void
.end method

.method protected blacklist generateChallenge_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1629
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1630
    return-void
.end method

.method protected blacklist getAuthenticatorId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1654
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1655
    return-void
.end method

.method protected blacklist getEnrolledFaces_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1619
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1620
    return-void
.end method

.method protected blacklist getFeature_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1674
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1675
    return-void
.end method

.method protected blacklist getLockoutModeForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1644
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1645
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1701
    const/16 v0, 0x21

    return v0
.end method

.method protected blacklist getSensorPropertiesInternal_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1549
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1550
    return-void
.end method

.method protected blacklist getSensorProperties_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1554
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1555
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 368
    invoke-static {p1}, Landroid/hardware/face/IFaceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist hasEnrolledFaces_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1639
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1640
    return-void
.end method

.method protected blacklist invalidateAuthenticatorId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1649
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1650
    return-void
.end method

.method protected blacklist isHardwareDetected_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1624
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1625
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    move-object/from16 v2, p2

    move-object/from16 v11, p3

    .line 373
    const-string v3, "android.hardware.face.IFaceService"

    const/4 v12, 0x1

    if-lt p1, v12, :cond_11

    const v4, 0xffffff

    if-gt p1, v4, :cond_11

    .line 374
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    :cond_11
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_1a

    .line 377
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    return v12

    .line 380
    :cond_1a
    packed-switch p1, :pswitch_data_3fc

    .line 853
    move-object v13, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 848
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->scheduleWatchdog()V

    .line 849
    goto/16 :goto_3fb

    .line 840
    :pswitch_28
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricStateListener;

    move-result-object v1

    .line 841
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 843
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    goto/16 :goto_3fb

    .line 831
    :pswitch_3b
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 832
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 834
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    goto/16 :goto_3fb

    .line 822
    :pswitch_4e
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 823
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 825
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    goto/16 :goto_3fb

    .line 813
    :pswitch_61
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;

    move-result-object v1

    .line 814
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    .line 816
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    goto/16 :goto_3fb

    .line 804
    :pswitch_74
    sget-object v1, Landroid/hardware/face/FaceSensorConfigurations;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorConfigurations;

    .line 805
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->registerAuthenticators(Landroid/hardware/face/FaceSensorConfigurations;)V

    .line 807
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    goto/16 :goto_3fb

    .line 787
    :pswitch_87
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v5

    .line 795
    move-object v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 798
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    goto/16 :goto_3fb

    .line 766
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v0

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    move-object v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/IFaceService$Stub;->setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    goto/16 :goto_3fb

    .line 755
    :pswitch_d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v1

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 760
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto/16 :goto_3fb

    .line 738
    :pswitch_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    .line 749
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    goto/16 :goto_3fb

    .line 726
    :pswitch_110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getAuthenticatorId(II)J

    move-result-wide v0

    .line 731
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 733
    goto/16 :goto_3fb

    .line 713
    :pswitch_127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v3

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 720
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_3fb

    .line 701
    :pswitch_142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getLockoutModeForUser(II)I

    move-result v0

    .line 706
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    goto/16 :goto_3fb

    .line 687
    :pswitch_159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result v0

    .line 694
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 696
    goto/16 :goto_3fb

    .line 670
    :pswitch_174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 678
    move-object/from16 v7, p2

    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 679
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V

    .line 681
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    goto/16 :goto_3fb

    .line 653
    :pswitch_196
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 655
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 657
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 659
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    .line 661
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 662
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 664
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    goto/16 :goto_3fb

    .line 641
    :pswitch_1bb
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 643
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 644
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v0

    .line 646
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 648
    goto/16 :goto_3fb

    .line 627
    :pswitch_1d3
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 629
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 631
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 632
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 634
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 636
    goto/16 :goto_3fb

    .line 612
    :pswitch_1ef
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 614
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 616
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v3

    .line 618
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 619
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/face/IFaceService$Stub;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 621
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_3fb

    .line 595
    :pswitch_20f
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 597
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 599
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 601
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    .line 603
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 604
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto/16 :goto_3fb

    .line 584
    :pswitch_234
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 586
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 587
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->cancelEnrollment(Landroid/os/IBinder;J)V

    .line 589
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    goto/16 :goto_3fb

    .line 564
    :pswitch_248
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 566
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 568
    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 570
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    .line 572
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 574
    invoke-virtual {v7}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 575
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J

    move-result-wide v0

    .line 577
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 579
    goto/16 :goto_3fb

    .line 538
    :pswitch_275
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 540
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 542
    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 544
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    .line 546
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 548
    invoke-virtual {v7}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 550
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 552
    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 554
    sget-object v9, Landroid/hardware/face/FaceEnrollOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/face/FaceEnrollOptions;

    .line 555
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    move-object v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/face/IFaceService$Stub;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)J

    move-result-wide v0

    .line 557
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 559
    goto/16 :goto_3fb

    .line 523
    :pswitch_2b7
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 525
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 527
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 530
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 532
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    goto/16 :goto_3fb

    .line 510
    :pswitch_2d4
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 512
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 515
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/face/IFaceService$Stub;->cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 517
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    goto/16 :goto_3fb

    .line 497
    :pswitch_2ec
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 499
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 502
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 504
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_3fb

    .line 486
    :pswitch_304
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 488
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 489
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->startPreparedClient(II)V

    .line 491
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    goto/16 :goto_3fb

    .line 463
    :pswitch_318
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 465
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 467
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 469
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v5

    .line 471
    sget-object v6, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/face/FaceAuthenticateOptions;

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 477
    move-object/from16 v13, p2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 478
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/face/IFaceService$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/face/FaceAuthenticateOptions;JIZ)V

    .line 480
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_3fb

    .line 449
    :pswitch_34f
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 451
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v2

    .line 453
    sget-object v3, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceAuthenticateOptions;

    .line 454
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->detectFace(Landroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    move-result-wide v0

    .line 456
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 458
    goto/16 :goto_3fb

    .line 433
    :pswitch_373
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 435
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 437
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    .line 439
    sget-object v5, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/face/FaceAuthenticateOptions;

    .line 440
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->authenticate(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    move-result-wide v0

    .line 442
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 444
    goto :goto_3fb

    .line 421
    :pswitch_39b
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v0

    .line 426
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 428
    goto :goto_3fb

    .line 411
    :pswitch_3b2
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 414
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 416
    goto :goto_3fb

    .line 399
    :pswitch_3c5
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 401
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 402
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->dumpSensorServiceStateProto(IZ)[B

    move-result-object v0

    .line 404
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 406
    goto :goto_3fb

    .line 385
    :pswitch_3dc
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v2

    .line 389
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    .line 392
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 394
    nop

    .line 856
    :goto_3fb
    return v12

    :pswitch_data_3fc
    .packed-switch 0x1
        :pswitch_3dc
        :pswitch_3c5
        :pswitch_3b2
        :pswitch_39b
        :pswitch_373
        :pswitch_34f
        :pswitch_318
        :pswitch_304
        :pswitch_2ec
        :pswitch_2d4
        :pswitch_2b7
        :pswitch_275
        :pswitch_248
        :pswitch_234
        :pswitch_20f
        :pswitch_1ef
        :pswitch_1d3
        :pswitch_1bb
        :pswitch_196
        :pswitch_174
        :pswitch_159
        :pswitch_142
        :pswitch_127
        :pswitch_110
        :pswitch_f0
        :pswitch_d9
        :pswitch_ac
        :pswitch_87
        :pswitch_74
        :pswitch_61
        :pswitch_4e
        :pswitch_3b
        :pswitch_28
        :pswitch_23
    .end packed-switch
.end method

.method protected blacklist prepareForAuthentication_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1569
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1570
    return-void
.end method

.method protected blacklist registerAuthenticationStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1685
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1686
    return-void
.end method

.method protected blacklist registerAuthenticators_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1679
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1680
    return-void
.end method

.method protected blacklist removeAll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1614
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1615
    return-void
.end method

.method protected blacklist remove_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1609
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1610
    return-void
.end method

.method protected blacklist resetLockout_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1659
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1660
    return-void
.end method

.method protected blacklist revokeChallenge_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1634
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1635
    return-void
.end method

.method protected blacklist scheduleWatchdog_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1696
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1697
    return-void
.end method

.method protected blacklist setFeature_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1669
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1670
    return-void
.end method

.method protected blacklist startPreparedClient_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1575
    return-void
.end method

.method protected blacklist unregisterAuthenticationStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1690
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1691
    return-void
.end method
