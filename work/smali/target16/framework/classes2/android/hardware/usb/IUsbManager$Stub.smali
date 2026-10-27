.class public abstract Landroid/hardware/usb/IUsbManager$Stub;
.super Landroid/os/Binder;
.source "IUsbManager.java"

# interfaces
.implements Landroid/hardware/usb/IUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field static final blacklist TRANSACTION_addAccessoryPackagesToPreferenceDenied:I = 0xc

.field static final blacklist TRANSACTION_addDevicePackagesToPreferenceDenied:I = 0xb

.field static final greylist-max-o TRANSACTION_clearDefaults:I = 0x1a

.field static final blacklist TRANSACTION_enableContaminantDetection:I = 0x2f

.field static final blacklist TRANSACTION_enableLimitPowerTransfer:I = 0x2e

.field static final blacklist TRANSACTION_enablePciTunnels:I = 0x33

.field static final blacklist TRANSACTION_enableUsbData:I = 0x26

.field static final blacklist TRANSACTION_enableUsbDataWhileDocked:I = 0x27

.field static final greylist-max-o TRANSACTION_getControlFd:I = 0x29

.field static final greylist-max-o TRANSACTION_getCurrentAccessory:I = 0x3

.field static final greylist-max-o TRANSACTION_getCurrentFunctions:I = 0x1f

.field static final blacklist TRANSACTION_getCurrentUsbSpeed:I = 0x20

.field static final greylist-max-o TRANSACTION_getDeviceList:I = 0x1

.field static final blacklist TRANSACTION_getGadgetHalVersion:I = 0x21

.field static final blacklist TRANSACTION_getMaxPacketSize:I = 0x7

.field static final greylist-max-o TRANSACTION_getPortStatus:I = 0x2b

.field static final greylist-max-o TRANSACTION_getPorts:I = 0x2a

.field static final greylist-max-o TRANSACTION_getScreenUnlockedFunctions:I = 0x23

.field static final blacklist TRANSACTION_getUsbHalVersion:I = 0x28

.field static final greylist-max-o TRANSACTION_grantAccessoryPermission:I = 0x18

.field static final greylist-max-o TRANSACTION_grantDevicePermission:I = 0x17

.field static final greylist-max-o TRANSACTION_hasAccessoryPermission:I = 0x13

.field static final blacklist TRANSACTION_hasAccessoryPermissionWithIdentity:I = 0x14

.field static final greylist-max-o TRANSACTION_hasDefaults:I = 0x19

.field static final greylist-max-o TRANSACTION_hasDevicePermission:I = 0x11

.field static final blacklist TRANSACTION_hasDevicePermissionWithIdentity:I = 0x12

.field static final blacklist TRANSACTION_isAccessoryFfsEnabled:I = 0x8

.field static final greylist-max-o TRANSACTION_isFunctionEnabled:I = 0x1b

.field static final blacklist TRANSACTION_isModeChangeSupported:I = 0x2c

.field static final blacklist TRANSACTION_isUvcGadgetSupportEnabled:I = 0x1c

.field static final greylist-max-o TRANSACTION_openAccessory:I = 0x4

.field static final blacklist TRANSACTION_openAccessoryForInputStream:I = 0x5

.field static final blacklist TRANSACTION_openAccessoryForOutputStream:I = 0x6

.field static final greylist-max-o TRANSACTION_openDevice:I = 0x2

.field static final blacklist TRANSACTION_registerForDisplayPortEvents:I = 0x31

.field static final blacklist TRANSACTION_removeAccessoryPackagesFromPreferenceDenied:I = 0xe

.field static final blacklist TRANSACTION_removeDevicePackagesFromPreferenceDenied:I = 0xd

.field static final greylist-max-o TRANSACTION_requestAccessoryPermission:I = 0x16

.field static final greylist-max-o TRANSACTION_requestDevicePermission:I = 0x15

.field static final blacklist TRANSACTION_resetUsbGadget:I = 0x24

.field static final blacklist TRANSACTION_resetUsbPort:I = 0x25

.field static final greylist-max-o TRANSACTION_setAccessoryPackage:I = 0xa

.field static final blacklist TRANSACTION_setAccessoryPersistentPermission:I = 0x10

.field static final greylist-max-o TRANSACTION_setCurrentFunction:I = 0x1e

.field static final greylist-max-o TRANSACTION_setCurrentFunctions:I = 0x1d

.field static final greylist-max-o TRANSACTION_setDevicePackage:I = 0x9

.field static final blacklist TRANSACTION_setDevicePersistentPermission:I = 0xf

.field static final greylist-max-o TRANSACTION_setPortRoles:I = 0x2d

.field static final greylist-max-o TRANSACTION_setScreenUnlockedFunctions:I = 0x22

.field static final greylist-max-o TRANSACTION_setUsbDeviceConnectionHandler:I = 0x30

.field static final blacklist TRANSACTION_unregisterForDisplayPortEvents:I = 0x32


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    nop

    .line 303
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 302
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 304
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 292
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 293
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 294
    if-eqz p1, :cond_d

    .line 297
    iput-object p1, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 298
    return-void

    .line 295
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;
    .registers 3

    .line 311
    if-nez p0, :cond_4

    .line 312
    const/4 p0, 0x0

    return-object p0

    .line 314
    :cond_4
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/usb/IUsbManager;

    if-eqz v1, :cond_13

    .line 316
    check-cast v0, Landroid/hardware/usb/IUsbManager;

    return-object v0

    .line 318
    :cond_13
    new-instance v0, Landroid/hardware/usb/IUsbManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/usb/IUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 327
    packed-switch p0, :pswitch_data_9e

    .line 535
    const/4 p0, 0x0

    return-object p0

    .line 531
    :pswitch_5
    const-string p0, "enablePciTunnels"

    return-object p0

    .line 527
    :pswitch_8
    const-string p0, "unregisterForDisplayPortEvents"

    return-object p0

    .line 523
    :pswitch_b
    const-string p0, "registerForDisplayPortEvents"

    return-object p0

    .line 519
    :pswitch_e
    const-string p0, "setUsbDeviceConnectionHandler"

    return-object p0

    .line 515
    :pswitch_11
    const-string p0, "enableContaminantDetection"

    return-object p0

    .line 511
    :pswitch_14
    const-string p0, "enableLimitPowerTransfer"

    return-object p0

    .line 507
    :pswitch_17
    const-string p0, "setPortRoles"

    return-object p0

    .line 503
    :pswitch_1a
    const-string p0, "isModeChangeSupported"

    return-object p0

    .line 499
    :pswitch_1d
    const-string p0, "getPortStatus"

    return-object p0

    .line 495
    :pswitch_20
    const-string p0, "getPorts"

    return-object p0

    .line 491
    :pswitch_23
    const-string p0, "getControlFd"

    return-object p0

    .line 487
    :pswitch_26
    const-string p0, "getUsbHalVersion"

    return-object p0

    .line 483
    :pswitch_29
    const-string p0, "enableUsbDataWhileDocked"

    return-object p0

    .line 479
    :pswitch_2c
    const-string p0, "enableUsbData"

    return-object p0

    .line 475
    :pswitch_2f
    const-string p0, "resetUsbPort"

    return-object p0

    .line 471
    :pswitch_32
    const-string p0, "resetUsbGadget"

    return-object p0

    .line 467
    :pswitch_35
    const-string p0, "getScreenUnlockedFunctions"

    return-object p0

    .line 463
    :pswitch_38
    const-string p0, "setScreenUnlockedFunctions"

    return-object p0

    .line 459
    :pswitch_3b
    const-string p0, "getGadgetHalVersion"

    return-object p0

    .line 455
    :pswitch_3e
    const-string p0, "getCurrentUsbSpeed"

    return-object p0

    .line 451
    :pswitch_41
    const-string p0, "getCurrentFunctions"

    return-object p0

    .line 447
    :pswitch_44
    const-string p0, "setCurrentFunction"

    return-object p0

    .line 443
    :pswitch_47
    const-string p0, "setCurrentFunctions"

    return-object p0

    .line 439
    :pswitch_4a
    const-string p0, "isUvcGadgetSupportEnabled"

    return-object p0

    .line 435
    :pswitch_4d
    const-string p0, "isFunctionEnabled"

    return-object p0

    .line 431
    :pswitch_50
    const-string p0, "clearDefaults"

    return-object p0

    .line 427
    :pswitch_53
    const-string p0, "hasDefaults"

    return-object p0

    .line 423
    :pswitch_56
    const-string p0, "grantAccessoryPermission"

    return-object p0

    .line 419
    :pswitch_59
    const-string p0, "grantDevicePermission"

    return-object p0

    .line 415
    :pswitch_5c
    const-string p0, "requestAccessoryPermission"

    return-object p0

    .line 411
    :pswitch_5f
    const-string p0, "requestDevicePermission"

    return-object p0

    .line 407
    :pswitch_62
    const-string p0, "hasAccessoryPermissionWithIdentity"

    return-object p0

    .line 403
    :pswitch_65
    const-string p0, "hasAccessoryPermission"

    return-object p0

    .line 399
    :pswitch_68
    const-string p0, "hasDevicePermissionWithIdentity"

    return-object p0

    .line 395
    :pswitch_6b
    const-string p0, "hasDevicePermission"

    return-object p0

    .line 391
    :pswitch_6e
    const-string p0, "setAccessoryPersistentPermission"

    return-object p0

    .line 387
    :pswitch_71
    const-string p0, "setDevicePersistentPermission"

    return-object p0

    .line 383
    :pswitch_74
    const-string p0, "removeAccessoryPackagesFromPreferenceDenied"

    return-object p0

    .line 379
    :pswitch_77
    const-string p0, "removeDevicePackagesFromPreferenceDenied"

    return-object p0

    .line 375
    :pswitch_7a
    const-string p0, "addAccessoryPackagesToPreferenceDenied"

    return-object p0

    .line 371
    :pswitch_7d
    const-string p0, "addDevicePackagesToPreferenceDenied"

    return-object p0

    .line 367
    :pswitch_80
    const-string p0, "setAccessoryPackage"

    return-object p0

    .line 363
    :pswitch_83
    const-string p0, "setDevicePackage"

    return-object p0

    .line 359
    :pswitch_86
    const-string p0, "isAccessoryFfsEnabled"

    return-object p0

    .line 355
    :pswitch_89
    const-string p0, "getMaxPacketSize"

    return-object p0

    .line 351
    :pswitch_8c
    const-string p0, "openAccessoryForOutputStream"

    return-object p0

    .line 347
    :pswitch_8f
    const-string p0, "openAccessoryForInputStream"

    return-object p0

    .line 343
    :pswitch_92
    const-string p0, "openAccessory"

    return-object p0

    .line 339
    :pswitch_95
    const-string p0, "getCurrentAccessory"

    return-object p0

    .line 335
    :pswitch_98
    const-string p0, "openDevice"

    return-object p0

    .line 331
    :pswitch_9b
    const-string p0, "getDeviceList"

    return-object p0

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 322
    return-object p0
.end method

.method protected blacklist enablePciTunnels_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2219
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2220
    return-void
.end method

.method protected blacklist getControlFd_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2193
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_MTP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2194
    return-void
.end method

.method protected blacklist getCurrentFunctions_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2155
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2156
    return-void
.end method

.method protected blacklist getCurrentUsbSpeed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2160
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2161
    return-void
.end method

.method protected blacklist getGadgetHalVersion_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2165
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2166
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2224
    const/16 v0, 0x32

    return v0
.end method

.method protected blacklist getPorts_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2198
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2199
    return-void
.end method

.method protected blacklist getScreenUnlockedFunctions_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2175
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2176
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 542
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getUsbHalVersion_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2188
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2189
    return-void
.end method

.method protected blacklist grantAccessoryPermission_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2140
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2141
    return-void
.end method

.method protected blacklist grantDevicePermission_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2135
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2136
    return-void
.end method

.method protected blacklist hasAccessoryPermissionWithIdentity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2128
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2129
    return-void
.end method

.method protected blacklist hasDevicePermissionWithIdentity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2122
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2123
    return-void
.end method

.method protected blacklist isModeChangeSupported_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2204
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2205
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    nop

    .line 547
    const-string v0, "android.hardware.usb.IUsbManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 548
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 551
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    return v1

    .line 554
    :cond_17
    packed-switch p1, :pswitch_data_48a

    .line 1111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1103
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1104
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->enablePciTunnels(Z)V

    .line 1106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    goto/16 :goto_488

    .line 1094
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IDisplayPortAltModeInfoListener;

    move-result-object p1

    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1096
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->unregisterForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    goto/16 :goto_488

    .line 1084
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IDisplayPortAltModeInfoListener;

    move-result-object p1

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1086
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->registerForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)Z

    move-result p1

    .line 1087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1089
    goto/16 :goto_488

    .line 1075
    :pswitch_58
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 1076
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    goto/16 :goto_488

    .line 1064
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    invoke-virtual {p0, p1, p4}, Landroid/hardware/usb/IUsbManager$Stub;->enableContaminantDetection(Ljava/lang/String;Z)V

    .line 1069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    goto/16 :goto_488

    .line 1049
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v2

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->enableLimitPowerTransfer(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 1058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    goto/16 :goto_488

    .line 1036
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1038
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1040
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->setPortRoles(Ljava/lang/String;II)V

    .line 1043
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    goto/16 :goto_488

    .line 1026
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->isModeChangeSupported(Ljava/lang/String;)Z

    move-result p1

    .line 1029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1031
    goto/16 :goto_488

    .line 1016
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object p1

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1021
    goto/16 :goto_488

    .line 1008
    :pswitch_da
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getPorts()Ljava/util/List;

    move-result-object p1

    .line 1009
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1011
    goto/16 :goto_488

    .line 999
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 1002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1004
    goto/16 :goto_488

    .line 991
    :pswitch_f9
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getUsbHalVersion()I

    move-result p1

    .line 992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    goto/16 :goto_488

    .line 979
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v0

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->enableUsbDataWhileDocked(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    goto/16 :goto_488

    .line 963
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v2

    .line 970
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    move-result p1

    .line 972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 974
    goto/16 :goto_488

    .line 950
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 954
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v0

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    goto/16 :goto_488

    .line 943
    :pswitch_15e
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->resetUsbGadget()V

    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_488

    .line 936
    :pswitch_166
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getScreenUnlockedFunctions()J

    move-result-wide p1

    .line 937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 939
    goto/16 :goto_488

    .line 928
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->setScreenUnlockedFunctions(J)V

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    goto/16 :goto_488

    .line 920
    :pswitch_181
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getGadgetHalVersion()I

    move-result p1

    .line 921
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    goto/16 :goto_488

    .line 913
    :pswitch_18d
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentUsbSpeed()I

    move-result p1

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    goto/16 :goto_488

    .line 906
    :pswitch_199
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentFunctions()J

    move-result-wide p1

    .line 907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 909
    goto/16 :goto_488

    .line 894
    :pswitch_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 899
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunction(Ljava/lang/String;ZI)V

    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    goto/16 :goto_488

    .line 883
    :pswitch_1bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 886
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {p0, v2, v3, p1}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunctions(JI)V

    .line 888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    goto/16 :goto_488

    .line 875
    :pswitch_1cf
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->isUvcGadgetSupportEnabled()Z

    move-result p1

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 878
    goto/16 :goto_488

    .line 866
    :pswitch_1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 868
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 871
    goto/16 :goto_488

    .line 855
    :pswitch_1ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {p0, p1, p4}, Landroid/hardware/usb/IUsbManager$Stub;->clearDefaults(Ljava/lang/String;I)V

    .line 860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    goto/16 :goto_488

    .line 843
    :pswitch_201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, p1, p4}, Landroid/hardware/usb/IUsbManager$Stub;->hasDefaults(Ljava/lang/String;I)Z

    move-result p1

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 850
    goto/16 :goto_488

    .line 832
    :pswitch_218
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {p0, p1, p4}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    goto/16 :goto_488

    .line 821
    :pswitch_22f
    sget-object p1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {p0, p1, p4}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    goto/16 :goto_488

    .line 808
    :pswitch_246
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 812
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    goto/16 :goto_488

    .line 795
    :pswitch_265
    sget-object p1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 799
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    goto/16 :goto_488

    .line 781
    :pswitch_284
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermissionWithIdentity(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result p1

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 790
    goto/16 :goto_488

    .line 771
    :pswitch_2a3
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result p1

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 776
    goto/16 :goto_488

    .line 755
    :pswitch_2ba
    sget-object p1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 757
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermissionWithIdentity(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result p1

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 766
    goto/16 :goto_488

    .line 743
    :pswitch_2dd
    sget-object p1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, p1, p4}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result p1

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 750
    goto/16 :goto_488

    .line 728
    :pswitch_2f8
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 732
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;ILandroid/os/UserHandle;Z)V

    .line 737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    goto/16 :goto_488

    .line 713
    :pswitch_31b
    sget-object p1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 717
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;ILandroid/os/UserHandle;Z)V

    .line 722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    goto/16 :goto_488

    .line 700
    :pswitch_33e
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 704
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->removeAccessoryPackagesFromPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    goto/16 :goto_488

    .line 687
    :pswitch_35d
    sget-object p1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 691
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->removeDevicePackagesFromPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    goto/16 :goto_488

    .line 674
    :pswitch_37c
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 678
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->addAccessoryPackagesToPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    goto/16 :goto_488

    .line 661
    :pswitch_39b
    sget-object p1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 665
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->addDevicePackagesToPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    goto/16 :goto_488

    .line 648
    :pswitch_3ba
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    goto/16 :goto_488

    .line 635
    :pswitch_3d5
    sget-object p1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    goto/16 :goto_488

    .line 627
    :pswitch_3f0
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->isAccessoryFfsEnabled()Z

    move-result p1

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 630
    goto/16 :goto_488

    .line 618
    :pswitch_3fc
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->getMaxPacketSize(Landroid/hardware/usb/UsbAccessory;)I

    move-result p1

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    goto/16 :goto_488

    .line 608
    :pswitch_413
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessoryForOutputStream(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 613
    goto :goto_488

    .line 598
    :pswitch_429
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessoryForInputStream(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 603
    goto :goto_488

    .line 588
    :pswitch_43f
    sget-object p1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 593
    goto :goto_488

    .line 580
    :pswitch_455
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object p1

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 583
    goto :goto_488

    .line 569
    :pswitch_460
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, p1, p4}, Landroid/hardware/usb/IUsbManager$Stub;->openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 576
    goto :goto_488

    .line 559
    :pswitch_476
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, p1}, Landroid/hardware/usb/IUsbManager$Stub;->getDeviceList(Landroid/os/Bundle;)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 564
    nop

    .line 1114
    :goto_488
    return v1

    nop

    :pswitch_data_48a
    .packed-switch 0x1
        :pswitch_476
        :pswitch_460
        :pswitch_455
        :pswitch_43f
        :pswitch_429
        :pswitch_413
        :pswitch_3fc
        :pswitch_3f0
        :pswitch_3d5
        :pswitch_3ba
        :pswitch_39b
        :pswitch_37c
        :pswitch_35d
        :pswitch_33e
        :pswitch_31b
        :pswitch_2f8
        :pswitch_2dd
        :pswitch_2ba
        :pswitch_2a3
        :pswitch_284
        :pswitch_265
        :pswitch_246
        :pswitch_22f
        :pswitch_218
        :pswitch_201
        :pswitch_1ee
        :pswitch_1db
        :pswitch_1cf
        :pswitch_1bc
        :pswitch_1a5
        :pswitch_199
        :pswitch_18d
        :pswitch_181
        :pswitch_172
        :pswitch_166
        :pswitch_15e
        :pswitch_143
        :pswitch_120
        :pswitch_105
        :pswitch_f9
        :pswitch_e6
        :pswitch_da
        :pswitch_c7
        :pswitch_b4
        :pswitch_9d
        :pswitch_7e
        :pswitch_6b
        :pswitch_58
        :pswitch_41
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist resetUsbGadget_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2180
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2181
    return-void
.end method

.method protected blacklist setCurrentFunctions_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2149
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2150
    return-void
.end method

.method protected blacklist setScreenUnlockedFunctions_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2170
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2171
    return-void
.end method

.method protected blacklist setUsbDeviceConnectionHandler_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2212
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2213
    return-void
.end method
