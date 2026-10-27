.class public Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
.super Landroid/companion/ICompanionDeviceManager$Stub;
.source "CompanionDeviceManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public static synthetic $r8$lambda$ZMsfRpQZ2dfhY6xdjBA1Gio0BTI(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 2

    .line 555
    invoke-virtual {p1, p0}, Landroid/companion/AssociationInfo;->isLinkedTo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bKrxs04qGqM4c37Vsn3wxssSYxk(Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;Ljava/lang/String;IILandroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->lambda$requestNotificationAccess$0(Ljava/lang/String;IILandroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .registers 4

    .line 386
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnAssociationsChangedListener_enforcePermission()V

    .line 388
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 390
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->registerRemoteListener(Landroid/companion/IOnAssociationsChangedListener;I)V

    return-void
.end method

.method public addOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .registers 3

    .line 440
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnMessageReceivedListener_enforcePermission()V

    .line 442
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    return-void
.end method

.method public addOnTransportEventListener(ILandroid/companion/IOnTransportEventListener;)V
    .registers 3

    .line 458
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnTransportEventListener_enforcePermission()V

    .line 460
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(ILandroid/companion/IOnTransportEventListener;)V

    return-void
.end method

.method public addOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    .registers 2

    .line 407
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnTransportsChangedListener_enforcePermission()V

    .line 409
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method

.method public applyRestoredPayload([BI)V
    .registers 3

    .line 837
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->enforceCallerIsSystem()V

    .line 839
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmBackupRestoreProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/BackupRestoreProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/BackupRestoreProcessor;->applyRestoredPayload([BI)V

    return-void
.end method

.method public associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    .registers 17

    move/from16 v1, p4

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "associate() request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", package=u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CDM_CompanionDeviceManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "create associations"

    invoke-static {v0, v1, p3, v2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSkipRoleGrant()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 338
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerCanSkipRoleGrant()V

    .line 339
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 341
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v7

    .line 343
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v8, p2

    move-object v2, p3

    .line 339
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V

    return-void

    .line 345
    :cond_5c
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p3, v1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->processNewAssociationRequest(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/companion/IAssociationRequestCallback;)V

    return-void
.end method

.method public attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;)V
    .registers 5

    .line 649
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->attachSystemDataTransport_enforcePermission()V

    .line 651
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/server/companion/transport/CompanionTransportManager;->attachSystemDataTransport(ILandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 5

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildAssociationCancellationIntent() package=u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "build association cancellation intent"

    invoke-static {v0, p2, p1, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;
    .registers 4

    .line 628
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 782
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    .line 783
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_e

    return p1

    .line 788
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/32 v0, 0x927c0

    cmp-long p0, p2, v0

    if-gez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    return p1
.end method

.method public final checkCallerCanSkipRoleGrant()V
    .registers 4

    .line 760
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 761
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 762
    const-class v1, Landroid/app/KeyguardManager;

    .line 763
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_28

    .line 764
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_28

    .line 765
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Skipping CDM role grant requires insecure keyguard."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 767
    :cond_28
    :goto_28
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ASSOCIATE_COMPANION_DEVICES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_37

    return-void

    .line 769
    :cond_37
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Skipping CDM role grant requires ASSOCIATE_COMPANION_DEVICES permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCanCallNotificationApi(Ljava/lang/String;I)V
    .registers 5

    .line 748
    invoke-static {p2, p1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOr(ILjava/lang/String;)V

    .line 750
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_c

    return-void

    .line 752
    :cond_c
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/android/server/companion/utils/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 753
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    .line 754
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 753
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string p1, "App must have an association before calling this API"

    invoke-static {p0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method public createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 19

    .line 734
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->createAssociation_enforcePermission()V

    .line 736
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    move-object/from16 v2, p4

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 738
    const-string p0, "CDM_CompanionDeviceManagerService"

    const-string v0, "Given certificate doesn\'t match the package certificate."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 742
    :cond_1e
    invoke-static/range {p2 .. p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v5

    .line 743
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move/from16 v3, p3

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V

    return-void
.end method

.method public detachSystemDataTransport(Ljava/lang/String;II)V
    .registers 4

    .line 657
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->detachSystemDataTransport_enforcePermission()V

    .line 659
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    return-void
.end method

.method public disablePermissionsSync(I)V
    .registers 2

    .line 689
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->enforceCallerIsSystem()V

    .line 691
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->disablePermissionsSync(I)V

    return-void
.end method

.method public disableSystemDataSync(II)V
    .registers 3

    .line 677
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->disableSystemDataSync(II)V

    return-void
.end method

.method public disassociate(I)V
    .registers 3

    .line 486
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDisassociationProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/DisassociationProcessor;

    move-result-object p0

    const-string v0, "api"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 898
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "CDM_CompanionDeviceManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 902
    :cond_f
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/companion/association/AssociationStore;->dump(Ljava/io/PrintWriter;)V

    .line 903
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->dump(Ljava/io/PrintWriter;)V

    .line 904
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCompanionAppBinder(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->dump(Ljava/io/PrintWriter;)V

    .line 905
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->dump(Ljava/io/PrintWriter;)V

    .line 906
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferRequestStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enablePermissionsSync(I)V
    .registers 2

    .line 682
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->enforceCallerIsSystem()V

    .line 684
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->enablePermissionsSync(I)V

    return-void
.end method

.method public enableSystemDataSync(II)V
    .registers 3

    .line 672
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->enableSystemDataSync(II)V

    return-void
.end method

.method public final enforceCallerIsSystem()V
    .registers 2

    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_d

    return-void

    .line 776
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be system UID"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllAssociationsForUser(I)Ljava/util/List;
    .registers 3

    .line 372
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->getAllAssociationsForUser_enforcePermission()V

    .line 374
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    .line 377
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 379
    :cond_1a
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllAssociationsWithTransports()Ljava/util/List;
    .registers 1

    .line 423
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->getAllAssociationsWithTransports_enforcePermission()V

    .line 425
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->getAssociationsWithTransport()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAssociationByDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/AssociationInfo;
    .registers 3

    .line 800
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->getAssociationByDeviceId_enforcePermission()V

    .line 802
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationByDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/AssociationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAssociations(Ljava/lang/String;I)Ljava/util/List;
    .registers 5

    .line 364
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "get associations"

    invoke-static {v0, p2, p1, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBackupPayload(I)[B
    .registers 2

    .line 814
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->enforceCallerIsSystem()V

    .line 816
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmBackupRestoreProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/BackupRestoreProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/BackupRestoreProcessor;->getBackupPayload(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;
    .registers 2

    .line 696
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->enforceCallerIsSystem()V

    .line 698
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object p0

    return-object p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 15

    .line 887
    new-instance v0, Lcom/android/server/companion/CompanionDeviceShellCommand;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v5}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v6}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v7}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmBackupRestoreProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/BackupRestoreProcessor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v8}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDisassociationProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/DisassociationProcessor;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v9}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDataSyncProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datasync/DataSyncProcessor;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/companion/CompanionDeviceShellCommand;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/transport/CompanionTransportManager;Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Lcom/android/server/companion/association/AssociationRequestsProcessor;Lcom/android/server/companion/BackupRestoreProcessor;Lcom/android/server/companion/association/DisassociationProcessor;Lcom/android/server/companion/datasync/DataSyncProcessor;)V

    .line 891
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 892
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 891
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hasNotificationAccess(Landroid/content/ComponentName;)Z
    .registers 4

    .line 536
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;I)V

    .line 537
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 538
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isCompanionApplicationBound(Ljava/lang/String;I)Z
    .registers 3

    .line 727
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCompanionAppBinder(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 545
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->isDeviceAssociatedForWifiConnection_enforcePermission()V

    .line 547
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.COMPANION_APPROVE_WIFI_CONNECTIONS"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    const/4 p0, 0x1

    return p0

    .line 554
    :cond_17
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isPermissionTransferUserConsented(Ljava/lang/String;II)Z
    .registers 4

    .line 635
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->isPermissionTransferUserConsented(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$requestNotificationAccess$0(Ljava/lang/String;IILandroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 11

    .line 503
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/companion/utils/PackageUtils;->isRestrictedSettingsAllowed(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_29

    .line 504
    const-string p2, "CDM_CompanionDeviceManagerService"

    const-string p4, "Side loaded app must enable restricted setting before request the notification access"

    invoke-static {p2, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p4, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 508
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ecm/EnhancedConfirmationManager;

    const-string p4, "android:access_notifications"

    .line 509
    invoke-virtual {p2, p1, p4}, Landroid/app/ecm/EnhancedConfirmationManager;->createRestrictedSettingDialogIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_27
    move-object v2, p1

    goto :goto_34

    .line 515
    :cond_29
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 516
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 515
    invoke-static {p1, p3, p4}, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->launcherIntent(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_27

    .line 519
    :goto_34
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v1, 0x0

    const/high16 v3, 0x54000000

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 478
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDisassociationProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/DisassociationProcessor;

    move-result-object p0

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public legacyStartObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 563
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStartObservingDevicePresence_enforcePermission()V

    .line 565
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public legacyStopObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 574
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStopObservingDevicePresence_enforcePermission()V

    .line 576
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyActionResult(ILandroid/companion/ActionResult;)V
    .registers 3

    .line 830
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->notifyActionResult_enforcePermission()V

    .line 832
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmActionRequestProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/actionrequest/ActionRequestProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->processActionResult(ILandroid/companion/ActionResult;)V

    return-void
.end method

.method public notifyDevicePresence(ILandroid/companion/DevicePresenceEvent;)V
    .registers 3

    .line 822
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->notifyDevicePresence_enforcePermission()V

    .line 824
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->processSelfManagedDevicePresenceEvent(ILandroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method public notifySelfManagedDeviceAppeared(I)V
    .registers 3

    .line 704
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceAppeared_enforcePermission()V

    .line 706
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifySelfManagedDevicePresenceEvent(IZ)V

    return-void
.end method

.method public notifySelfManagedDeviceDisappeared(I)V
    .registers 3

    .line 712
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceDisappeared_enforcePermission()V

    .line 714
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifySelfManagedDevicePresenceEvent(IZ)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    .line 321
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    :catchall_5
    move-exception p0

    .line 323
    const-string p1, "CDM_CompanionDeviceManagerService"

    const-string p2, "Error during IPC"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    const-class p1, Landroid/os/RemoteException;

    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public overrideTransportType(I)V
    .registers 2

    .line 665
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->overrideTransportType_enforcePermission()V

    .line 667
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->overrideTransportType(I)V

    return-void
.end method

.method public removeBond(ILjava/lang/String;I)Z
    .registers 6

    .line 603
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeBond_enforcePermission()V

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeBond() associationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package=u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "remove bonds"

    invoke-static {v0, p3, p2, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p2

    .line 612
    invoke-virtual {p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object p2

    .line 613
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object p2

    if-eqz p2, :cond_69

    .line 619
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 620
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    .line 621
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 622
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result p0

    return p0

    .line 615
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Association id=["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] doesn\'t have a device address."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeOnActionResultListener(Ljava/lang/String;I)V
    .registers 4

    .line 878
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnActionResultListener_enforcePermission()V

    .line 879
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 881
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmActionRequestProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/actionrequest/ActionRequestProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->removeOnActionResultListener(Ljava/lang/String;)V

    return-void
.end method

.method public removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .registers 4

    .line 397
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnAssociationsChangedListener_enforcePermission()V

    .line 399
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 401
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->unregisterRemoteListener(Landroid/companion/IOnAssociationsChangedListener;)V

    return-void
.end method

.method public removeOnDevicePresenceEventListener(Ljava/lang/String;I)V
    .registers 4

    .line 857
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnDevicePresenceEventListener_enforcePermission()V

    .line 858
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 860
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->removeOnDevicePresenceEventListener(Ljava/lang/String;)V

    return-void
.end method

.method public removeOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .registers 3

    .line 449
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnMessageReceivedListener_enforcePermission()V

    .line 451
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->removeListener(ILandroid/companion/IOnMessageReceivedListener;)V

    return-void
.end method

.method public removeOnTransportEventListener(ILandroid/companion/IOnTransportEventListener;)V
    .registers 3

    .line 467
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnTransportEventListener_enforcePermission()V

    .line 469
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->removeListener(ILandroid/companion/IOnTransportEventListener;)V

    return-void
.end method

.method public removeOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    .registers 2

    .line 415
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnTransportsChangedListener_enforcePermission()V

    .line 417
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->removeListener(Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method

.method public requestAction(Landroid/companion/ActionRequest;Ljava/lang/String;[I)V
    .registers 4

    .line 721
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->requestAction_enforcePermission()V

    .line 723
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmActionRequestProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/actionrequest/ActionRequestProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->requestAction(Landroid/companion/ActionRequest;Ljava/lang/String;[I)V

    return-void
.end method

.method public requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;
    .registers 9

    .line 492
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v3

    .line 493
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-virtual {p0, v2, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;I)V

    .line 497
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_26

    .line 501
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v5, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;Ljava/lang/String;IILandroid/content/ComponentName;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    return-object p0

    .line 498
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Component name is too long."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendMessage(I[B[I)V
    .registers 4

    .line 431
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->sendMessage_enforcePermission()V

    .line 433
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)Landroid/util/SparseArray;

    return-void
.end method

.method public setDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/DeviceId;
    .registers 3

    .line 794
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->setDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/DeviceId;

    move-result-object p0

    return-object p0
.end method

.method public setLocalMetadata(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4

    .line 807
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->enforceCallerIsSystem()V

    .line 809
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDataSyncProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datasync/DataSyncProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/datasync/DataSyncProcessor;->setLocalMetadata(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public setOnActionResultListener([ILjava/lang/String;Landroid/companion/IOnActionResultListener;I)V
    .registers 6

    .line 867
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->setOnActionResultListener_enforcePermission()V

    .line 868
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 870
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmActionRequestProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/actionrequest/ActionRequestProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->setOnActionResultListener([ILjava/lang/String;Landroid/companion/IOnActionResultListener;)V

    return-void
.end method

.method public setOnDevicePresenceEventListener([ILjava/lang/String;Landroid/companion/IOnDevicePresenceEventListener;I)V
    .registers 6

    .line 846
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->setOnDevicePresenceEventListener_enforcePermission()V

    .line 847
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 849
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->setOnDevicePresenceEventListener([ILjava/lang/String;Landroid/companion/IOnDevicePresenceEventListener;)V

    return-void
.end method

.method public startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    .registers 5

    .line 584
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->startObservingDevicePresence_enforcePermission()V

    .line 586
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    return-void
.end method

.method public startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V
    .registers 5

    .line 641
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V

    return-void
.end method

.method public stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    .registers 5

    .line 594
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->stopObservingDevicePresence_enforcePermission()V

    .line 596
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    return-void
.end method
