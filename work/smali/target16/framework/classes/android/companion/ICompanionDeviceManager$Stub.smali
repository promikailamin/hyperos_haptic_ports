.class public abstract Landroid/companion/ICompanionDeviceManager$Stub;
.super Landroid/os/Binder;
.source "ICompanionDeviceManager.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.companion.ICompanionDeviceManager"

.field static final blacklist TRANSACTION_addOnAssociationsChangedListener:I = 0xf

.field static final blacklist TRANSACTION_addOnMessageReceivedListener:I = 0x15

.field static final blacklist TRANSACTION_addOnTransportEventListener:I = 0x17

.field static final blacklist TRANSACTION_addOnTransportsChangedListener:I = 0x11

.field static final blacklist TRANSACTION_applyRestoredPayload:I = 0x29

.field static final greylist-max-o TRANSACTION_associate:I = 0x1

.field static final blacklist TRANSACTION_attachSystemDataTransport:I = 0x1e

.field static final blacklist TRANSACTION_buildAssociationCancellationIntent:I = 0x21

.field static final blacklist TRANSACTION_buildPermissionTransferUserConsentIntent:I = 0x1b

.field static final blacklist TRANSACTION_canPairWithoutPrompt:I = 0xd

.field static final blacklist TRANSACTION_createAssociation:I = 0xe

.field static final blacklist TRANSACTION_detachSystemDataTransport:I = 0x1f

.field static final blacklist TRANSACTION_disablePermissionsSync:I = 0x25

.field static final blacklist TRANSACTION_disableSystemDataSync:I = 0x23

.field static final greylist-max-o TRANSACTION_disassociate:I = 0x5

.field static final blacklist TRANSACTION_enablePermissionsSync:I = 0x24

.field static final blacklist TRANSACTION_enableSystemDataSync:I = 0x22

.field static final blacklist TRANSACTION_getAllAssociationsForUser:I = 0x3

.field static final blacklist TRANSACTION_getAllAssociationsWithTransports:I = 0x13

.field static final blacklist TRANSACTION_getAssociationByDeviceId:I = 0x2b

.field static final greylist-max-o TRANSACTION_getAssociations:I = 0x2

.field static final blacklist TRANSACTION_getBackupPayload:I = 0x28

.field static final blacklist TRANSACTION_getPermissionSyncRequest:I = 0x26

.field static final greylist-max-o TRANSACTION_hasNotificationAccess:I = 0x6

.field static final blacklist TRANSACTION_isCompanionApplicationBound:I = 0x20

.field static final blacklist TRANSACTION_isDeviceAssociatedForWifiConnection:I = 0x8

.field static final blacklist TRANSACTION_isPermissionTransferUserConsented:I = 0x1c

.field static final blacklist TRANSACTION_legacyDisassociate:I = 0x4

.field static final blacklist TRANSACTION_legacyStartObservingDevicePresence:I = 0x9

.field static final blacklist TRANSACTION_legacyStopObservingDevicePresence:I = 0xa

.field static final blacklist TRANSACTION_notifyActionResult:I = 0x32

.field static final blacklist TRANSACTION_notifyDevicePresence:I = 0x30

.field static final blacklist TRANSACTION_notifySelfManagedDeviceAppeared:I = 0x19

.field static final blacklist TRANSACTION_notifySelfManagedDeviceDisappeared:I = 0x1a

.field static final blacklist TRANSACTION_overrideTransportType:I = 0x27

.field static final blacklist TRANSACTION_removeBond:I = 0x2a

.field static final blacklist TRANSACTION_removeOnActionResultListener:I = 0x34

.field static final blacklist TRANSACTION_removeOnAssociationsChangedListener:I = 0x10

.field static final blacklist TRANSACTION_removeOnDevicePresenceEventListener:I = 0x2f

.field static final blacklist TRANSACTION_removeOnMessageReceivedListener:I = 0x16

.field static final blacklist TRANSACTION_removeOnTransportEventListener:I = 0x18

.field static final blacklist TRANSACTION_removeOnTransportsChangedListener:I = 0x12

.field static final blacklist TRANSACTION_requestAction:I = 0x31

.field static final greylist-max-o TRANSACTION_requestNotificationAccess:I = 0x7

.field static final blacklist TRANSACTION_sendMessage:I = 0x14

.field static final blacklist TRANSACTION_setDeviceId:I = 0x2c

.field static final blacklist TRANSACTION_setLocalMetadata:I = 0x2d

.field static final blacklist TRANSACTION_setOnActionResultListener:I = 0x33

.field static final blacklist TRANSACTION_setOnDevicePresenceEventListener:I = 0x2e

.field static final blacklist TRANSACTION_startObservingDevicePresence:I = 0xb

.field static final blacklist TRANSACTION_startSystemDataTransfer:I = 0x1d

.field static final blacklist TRANSACTION_stopObservingDevicePresence:I = 0xc


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    nop

    .line 216
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/companion/ICompanionDeviceManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 217
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 205
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 206
    const-string v0, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p0, p0, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 207
    if-eqz p1, :cond_d

    .line 210
    iput-object p1, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 211
    return-void

    .line 208
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;
    .registers 3

    .line 224
    if-nez p0, :cond_4

    .line 225
    const/4 p0, 0x0

    return-object p0

    .line 227
    :cond_4
    const-string v0, "android.companion.ICompanionDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/companion/ICompanionDeviceManager;

    if-eqz v1, :cond_13

    .line 229
    check-cast v0, Landroid/companion/ICompanionDeviceManager;

    return-object v0

    .line 231
    :cond_13
    new-instance v0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 240
    packed-switch p0, :pswitch_data_ba

    .line 452
    const/4 p0, 0x0

    return-object p0

    .line 448
    :pswitch_5
    const-string/jumbo p0, "removeOnActionResultListener"

    return-object p0

    .line 444
    :pswitch_9
    const-string/jumbo p0, "setOnActionResultListener"

    return-object p0

    .line 440
    :pswitch_d
    const-string/jumbo p0, "notifyActionResult"

    return-object p0

    .line 436
    :pswitch_11
    const-string/jumbo p0, "requestAction"

    return-object p0

    .line 432
    :pswitch_15
    const-string/jumbo p0, "notifyDevicePresence"

    return-object p0

    .line 428
    :pswitch_19
    const-string/jumbo p0, "removeOnDevicePresenceEventListener"

    return-object p0

    .line 424
    :pswitch_1d
    const-string/jumbo p0, "setOnDevicePresenceEventListener"

    return-object p0

    .line 420
    :pswitch_21
    const-string/jumbo p0, "setLocalMetadata"

    return-object p0

    .line 416
    :pswitch_25
    const-string/jumbo p0, "setDeviceId"

    return-object p0

    .line 412
    :pswitch_29
    const-string p0, "getAssociationByDeviceId"

    return-object p0

    .line 408
    :pswitch_2c
    const-string/jumbo p0, "removeBond"

    return-object p0

    .line 404
    :pswitch_30
    const-string p0, "applyRestoredPayload"

    return-object p0

    .line 400
    :pswitch_33
    const-string p0, "getBackupPayload"

    return-object p0

    .line 396
    :pswitch_36
    const-string/jumbo p0, "overrideTransportType"

    return-object p0

    .line 392
    :pswitch_3a
    const-string p0, "getPermissionSyncRequest"

    return-object p0

    .line 388
    :pswitch_3d
    const-string p0, "disablePermissionsSync"

    return-object p0

    .line 384
    :pswitch_40
    const-string p0, "enablePermissionsSync"

    return-object p0

    .line 380
    :pswitch_43
    const-string p0, "disableSystemDataSync"

    return-object p0

    .line 376
    :pswitch_46
    const-string p0, "enableSystemDataSync"

    return-object p0

    .line 372
    :pswitch_49
    const-string p0, "buildAssociationCancellationIntent"

    return-object p0

    .line 368
    :pswitch_4c
    const-string p0, "isCompanionApplicationBound"

    return-object p0

    .line 364
    :pswitch_4f
    const-string p0, "detachSystemDataTransport"

    return-object p0

    .line 360
    :pswitch_52
    const-string p0, "attachSystemDataTransport"

    return-object p0

    .line 356
    :pswitch_55
    const-string/jumbo p0, "startSystemDataTransfer"

    return-object p0

    .line 352
    :pswitch_59
    const-string p0, "isPermissionTransferUserConsented"

    return-object p0

    .line 348
    :pswitch_5c
    const-string p0, "buildPermissionTransferUserConsentIntent"

    return-object p0

    .line 344
    :pswitch_5f
    const-string/jumbo p0, "notifySelfManagedDeviceDisappeared"

    return-object p0

    .line 340
    :pswitch_63
    const-string/jumbo p0, "notifySelfManagedDeviceAppeared"

    return-object p0

    .line 336
    :pswitch_67
    const-string/jumbo p0, "removeOnTransportEventListener"

    return-object p0

    .line 332
    :pswitch_6b
    const-string p0, "addOnTransportEventListener"

    return-object p0

    .line 328
    :pswitch_6e
    const-string/jumbo p0, "removeOnMessageReceivedListener"

    return-object p0

    .line 324
    :pswitch_72
    const-string p0, "addOnMessageReceivedListener"

    return-object p0

    .line 320
    :pswitch_75
    const-string/jumbo p0, "sendMessage"

    return-object p0

    .line 316
    :pswitch_79
    const-string p0, "getAllAssociationsWithTransports"

    return-object p0

    .line 312
    :pswitch_7c
    const-string/jumbo p0, "removeOnTransportsChangedListener"

    return-object p0

    .line 308
    :pswitch_80
    const-string p0, "addOnTransportsChangedListener"

    return-object p0

    .line 304
    :pswitch_83
    const-string/jumbo p0, "removeOnAssociationsChangedListener"

    return-object p0

    .line 300
    :pswitch_87
    const-string p0, "addOnAssociationsChangedListener"

    return-object p0

    .line 296
    :pswitch_8a
    const-string p0, "createAssociation"

    return-object p0

    .line 292
    :pswitch_8d
    const-string p0, "canPairWithoutPrompt"

    return-object p0

    .line 288
    :pswitch_90
    const-string/jumbo p0, "stopObservingDevicePresence"

    return-object p0

    .line 284
    :pswitch_94
    const-string/jumbo p0, "startObservingDevicePresence"

    return-object p0

    .line 280
    :pswitch_98
    const-string/jumbo p0, "legacyStopObservingDevicePresence"

    return-object p0

    .line 276
    :pswitch_9c
    const-string/jumbo p0, "legacyStartObservingDevicePresence"

    return-object p0

    .line 272
    :pswitch_a0
    const-string p0, "isDeviceAssociatedForWifiConnection"

    return-object p0

    .line 268
    :pswitch_a3
    const-string/jumbo p0, "requestNotificationAccess"

    return-object p0

    .line 264
    :pswitch_a7
    const-string p0, "hasNotificationAccess"

    return-object p0

    .line 260
    :pswitch_aa
    const-string p0, "disassociate"

    return-object p0

    .line 256
    :pswitch_ad
    const-string/jumbo p0, "legacyDisassociate"

    return-object p0

    .line 252
    :pswitch_b1
    const-string p0, "getAllAssociationsForUser"

    return-object p0

    .line 248
    :pswitch_b4
    const-string p0, "getAssociations"

    return-object p0

    .line 244
    :pswitch_b7
    const-string p0, "associate"

    return-object p0

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_83
        :pswitch_80
        :pswitch_7c
        :pswitch_79
        :pswitch_75
        :pswitch_72
        :pswitch_6e
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addOnAssociationsChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2048
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2049
    return-void
.end method

.method protected blacklist addOnMessageReceivedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2078
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2079
    return-void
.end method

.method protected blacklist addOnTransportEventListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2088
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2089
    return-void
.end method

.method protected blacklist addOnTransportsChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2058
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2059
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 235
    return-object p0
.end method

.method protected blacklist attachSystemDataTransport_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2111
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DELIVER_COMPANION_MESSAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2112
    return-void
.end method

.method protected blacklist createAssociation_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2043
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ASSOCIATE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2044
    return-void
.end method

.method protected blacklist detachSystemDataTransport_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2116
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DELIVER_COMPANION_MESSAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2117
    return-void
.end method

.method protected blacklist getAllAssociationsForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2008
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2009
    return-void
.end method

.method protected blacklist getAllAssociationsWithTransports_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2068
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2069
    return-void
.end method

.method protected blacklist getAssociationByDeviceId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2140
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_COMPANION_INFO"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2141
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2182
    const/16 v0, 0x33

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 459
    invoke-static {p1}, Landroid/companion/ICompanionDeviceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist isDeviceAssociatedForWifiConnection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2017
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2018
    return-void
.end method

.method protected blacklist legacyStartObservingDevicePresence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2022
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2023
    return-void
.end method

.method protected blacklist legacyStopObservingDevicePresence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2027
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2028
    return-void
.end method

.method protected blacklist notifyActionResult_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2167
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2168
    return-void
.end method

.method protected blacklist notifyDevicePresence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2157
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2158
    return-void
.end method

.method protected blacklist notifySelfManagedDeviceAppeared_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2098
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2099
    return-void
.end method

.method protected blacklist notifySelfManagedDeviceDisappeared_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2103
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2104
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    nop

    .line 464
    const-string v0, "android.companion.ICompanionDeviceManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 465
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 468
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    return v1

    .line 471
    :cond_17
    packed-switch p1, :pswitch_data_4c4

    .line 1086
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1076
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1078
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnActionResultListener(Ljava/lang/String;I)V

    .line 1081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    goto/16 :goto_4c2

    .line 1061
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1063
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1065
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/IOnActionResultListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnActionResultListener;

    move-result-object v0

    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1068
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1069
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->setOnActionResultListener([ILjava/lang/String;Landroid/companion/IOnActionResultListener;I)V

    .line 1070
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    goto/16 :goto_4c2

    .line 1050
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1052
    sget-object p4, Landroid/companion/ActionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/companion/ActionResult;

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->notifyActionResult(ILandroid/companion/ActionResult;)V

    .line 1055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    goto/16 :goto_4c2

    .line 1037
    :pswitch_68
    sget-object p1, Landroid/companion/ActionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/ActionRequest;

    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->requestAction(Landroid/companion/ActionRequest;Ljava/lang/String;[I)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    goto/16 :goto_4c2

    .line 1026
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1028
    sget-object p4, Landroid/companion/DevicePresenceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/companion/DevicePresenceEvent;

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->notifyDevicePresence(ILandroid/companion/DevicePresenceEvent;)V

    .line 1031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    goto/16 :goto_4c2

    .line 1015
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnDevicePresenceEventListener(Ljava/lang/String;I)V

    .line 1020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    goto/16 :goto_4c2

    .line 1000
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/IOnDevicePresenceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnDevicePresenceEventListener;

    move-result-object v0

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->setOnDevicePresenceEventListener([ILjava/lang/String;Landroid/companion/IOnDevicePresenceEventListener;I)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    goto/16 :goto_4c2

    .line 987
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 991
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->setLocalMetadata(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    goto/16 :goto_4c2

    .line 975
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 977
    sget-object p4, Landroid/companion/DeviceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/companion/DeviceId;

    .line 978
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->setDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/DeviceId;

    move-result-object p1

    .line 980
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 982
    goto/16 :goto_4c2

    .line 963
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 965
    sget-object p4, Landroid/companion/DeviceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/companion/DeviceId;

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->getAssociationByDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 970
    goto/16 :goto_4c2

    .line 949
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 954
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeBond(ILjava/lang/String;I)Z

    move-result p1

    .line 956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 958
    goto/16 :goto_4c2

    .line 938
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->applyRestoredPayload([BI)V

    .line 943
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    goto/16 :goto_4c2

    .line 928
    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->getBackupPayload(I)[B

    move-result-object p1

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 933
    goto/16 :goto_4c2

    .line 919
    :pswitch_15e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 920
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->overrideTransportType(I)V

    .line 922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    goto/16 :goto_4c2

    .line 909
    :pswitch_16d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object p1

    .line 912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 914
    goto/16 :goto_4c2

    .line 900
    :pswitch_180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 901
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->disablePermissionsSync(I)V

    .line 903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    goto/16 :goto_4c2

    .line 891
    :pswitch_18f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->enablePermissionsSync(I)V

    .line 894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    goto/16 :goto_4c2

    .line 880
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->disableSystemDataSync(II)V

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    goto/16 :goto_4c2

    .line 869
    :pswitch_1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->enableSystemDataSync(II)V

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    goto/16 :goto_4c2

    .line 857
    :pswitch_1c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 864
    goto/16 :goto_4c2

    .line 845
    :pswitch_1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->isCompanionApplicationBound(Ljava/lang/String;I)Z

    move-result p1

    .line 850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 852
    goto/16 :goto_4c2

    .line 832
    :pswitch_1f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->detachSystemDataTransport(Ljava/lang/String;II)V

    .line 839
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    goto/16 :goto_4c2

    .line 817
    :pswitch_209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 823
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;)V

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    goto/16 :goto_4c2

    .line 802
    :pswitch_228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/ISystemDataTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ISystemDataTransferCallback;

    move-result-object v2

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V

    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    goto/16 :goto_4c2

    .line 788
    :pswitch_247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 793
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->isPermissionTransferUserConsented(Ljava/lang/String;II)Z

    move-result p1

    .line 795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 797
    goto/16 :goto_4c2

    .line 774
    :pswitch_262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object p1

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 783
    goto/16 :goto_4c2

    .line 765
    :pswitch_27d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 767
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceDisappeared(I)V

    .line 768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    goto/16 :goto_4c2

    .line 756
    :pswitch_28c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 757
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceAppeared(I)V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    goto/16 :goto_4c2

    .line 745
    :pswitch_29b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/companion/IOnTransportEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnTransportEventListener;

    move-result-object p4

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnTransportEventListener(ILandroid/companion/IOnTransportEventListener;)V

    .line 750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    goto/16 :goto_4c2

    .line 734
    :pswitch_2b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/companion/IOnTransportEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnTransportEventListener;

    move-result-object p4

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnTransportEventListener(ILandroid/companion/IOnTransportEventListener;)V

    .line 739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    goto/16 :goto_4c2

    .line 723
    :pswitch_2c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/companion/IOnMessageReceivedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnMessageReceivedListener;

    move-result-object p4

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 727
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    goto/16 :goto_4c2

    .line 712
    :pswitch_2e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/companion/IOnMessageReceivedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnMessageReceivedListener;

    move-result-object p4

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    goto/16 :goto_4c2

    .line 699
    :pswitch_2f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->sendMessage(I[B[I)V

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    goto/16 :goto_4c2

    .line 691
    :pswitch_30e
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->getAllAssociationsWithTransports()Ljava/util/List;

    move-result-object p1

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 694
    goto/16 :goto_4c2

    .line 683
    :pswitch_31a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/IOnTransportsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnTransportsChangedListener;

    move-result-object p1

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V

    .line 686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    goto/16 :goto_4c2

    .line 674
    :pswitch_32d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/IOnTransportsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnTransportsChangedListener;

    move-result-object p1

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    goto/16 :goto_4c2

    .line 663
    :pswitch_340
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/IOnAssociationsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnAssociationsChangedListener;

    move-result-object p1

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    goto/16 :goto_4c2

    .line 652
    :pswitch_357
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/IOnAssociationsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnAssociationsChangedListener;

    move-result-object p1

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    goto/16 :goto_4c2

    .line 637
    :pswitch_36e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto/16 :goto_4c2

    .line 623
    :pswitch_389
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 632
    goto/16 :goto_4c2

    .line 610
    :pswitch_3a4
    sget-object p1, Landroid/companion/ObservingDevicePresenceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/ObservingDevicePresenceRequest;

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    goto/16 :goto_4c2

    .line 597
    :pswitch_3bf
    sget-object p1, Landroid/companion/ObservingDevicePresenceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/ObservingDevicePresenceRequest;

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    goto/16 :goto_4c2

    .line 584
    :pswitch_3da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStopObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    goto/16 :goto_4c2

    .line 571
    :pswitch_3f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStartObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    goto/16 :goto_4c2

    .line 557
    :pswitch_408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 566
    goto/16 :goto_4c2

    .line 545
    :pswitch_423
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 552
    goto/16 :goto_4c2

    .line 535
    :pswitch_43e
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->hasNotificationAccess(Landroid/content/ComponentName;)Z

    move-result p1

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 540
    goto :goto_4c2

    .line 526
    :pswitch_454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->disassociate(I)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    goto :goto_4c2

    .line 513
    :pswitch_462
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    goto :goto_4c2

    .line 503
    :pswitch_478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceManager$Stub;->getAllAssociationsForUser(I)Ljava/util/List;

    move-result-object p1

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 508
    goto :goto_4c2

    .line 491
    :pswitch_48a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, p1, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 498
    goto :goto_4c2

    .line 476
    :pswitch_4a0
    sget-object p1, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/AssociationRequest;

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/companion/IAssociationRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IAssociationRequestCallback;

    move-result-object p4

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    nop

    .line 1089
    :goto_4c2
    return v1

    nop

    :pswitch_data_4c4
    .packed-switch 0x1
        :pswitch_4a0
        :pswitch_48a
        :pswitch_478
        :pswitch_462
        :pswitch_454
        :pswitch_43e
        :pswitch_423
        :pswitch_408
        :pswitch_3f1
        :pswitch_3da
        :pswitch_3bf
        :pswitch_3a4
        :pswitch_389
        :pswitch_36e
        :pswitch_357
        :pswitch_340
        :pswitch_32d
        :pswitch_31a
        :pswitch_30e
        :pswitch_2f7
        :pswitch_2e0
        :pswitch_2c9
        :pswitch_2b2
        :pswitch_29b
        :pswitch_28c
        :pswitch_27d
        :pswitch_262
        :pswitch_247
        :pswitch_228
        :pswitch_209
        :pswitch_1f2
        :pswitch_1db
        :pswitch_1c4
        :pswitch_1b1
        :pswitch_19e
        :pswitch_18f
        :pswitch_180
        :pswitch_16d
        :pswitch_15e
        :pswitch_14b
        :pswitch_138
        :pswitch_11d
        :pswitch_102
        :pswitch_e7
        :pswitch_cc
        :pswitch_ad
        :pswitch_9a
        :pswitch_83
        :pswitch_68
        :pswitch_51
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist overrideTransportType_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2128
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2129
    return-void
.end method

.method protected blacklist removeBond_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2135
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2136
    return-void
.end method

.method protected blacklist removeOnActionResultListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2177
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2178
    return-void
.end method

.method protected blacklist removeOnAssociationsChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2053
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2054
    return-void
.end method

.method protected blacklist removeOnDevicePresenceEventListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2152
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2153
    return-void
.end method

.method protected blacklist removeOnMessageReceivedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2083
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2084
    return-void
.end method

.method protected blacklist removeOnTransportEventListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2093
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2094
    return-void
.end method

.method protected blacklist removeOnTransportsChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2063
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2064
    return-void
.end method

.method protected blacklist requestAction_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2162
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2163
    return-void
.end method

.method protected blacklist sendMessage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2073
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2074
    return-void
.end method

.method protected blacklist setOnActionResultListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2172
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2173
    return-void
.end method

.method protected blacklist setOnDevicePresenceEventListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2147
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2148
    return-void
.end method

.method protected blacklist startObservingDevicePresence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2032
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2033
    return-void
.end method

.method protected blacklist stopObservingDevicePresence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2037
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2038
    return-void
.end method
