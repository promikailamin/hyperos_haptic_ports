.class Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
.super Landroid/companion/ICompanionDeviceManager$Stub;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompanionDeviceManagerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 438
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceManager$Stub;-><init>()V

    return-void
.end method

.method private checkCanCallNotificationApi(Ljava/lang/String;I)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 729
    invoke-static {p2, p1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerIsSystemOr(ILjava/lang/String;)V

    .line 731
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_c

    return-void

    .line 733
    :cond_c
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/android/server/companion/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v0

    .line 735
    invoke-virtual {v0, p2, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 734
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "App must have an association before calling this API"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 737
    return-void
.end method

.method static synthetic lambda$isDeviceAssociatedForWifiConnection$0(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 3
    .param p0, "macAddress"    # Ljava/lang/String;
    .param p1, "a"    # Landroid/companion/AssociationInfo;

    .line 590
    invoke-virtual {p1, p0}, Landroid/companion/AssociationInfo;->isLinkedTo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private registerDevicePresenceListenerActive(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    const-string v2, "[un]registerDevicePresenceListenerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 673
    .local v0, "userId":I
    invoke-static {v0, p1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerIsSystemOr(ILjava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackageWithAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v1

    .line 678
    .local v1, "association":Landroid/companion/AssociationInfo;
    if-eqz v1, :cond_6b

    .line 685
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v2

    if-ne p3, v2, :cond_27

    .line 687
    return-void

    .line 692
    :cond_27
    invoke-static {v1}, Landroid/companion/AssociationInfo;->builder(Landroid/companion/AssociationInfo;)Landroid/companion/AssociationInfo$NonActionableBuilder;

    move-result-object v2

    .line 693
    invoke-interface {v2, p3}, Landroid/companion/AssociationInfo$NonActionableBuilder;->setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object v2

    .line 694
    invoke-virtual {v2}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v1

    .line 698
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/companion/AssociationStoreImpl;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 701
    if-eqz p3, :cond_57

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    move-result-object v2

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 703
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monDeviceAppearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;I)V

    .line 707
    :cond_57
    if-nez p3, :cond_6a

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v2, v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$mshouldBindPackage(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 709
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCompanionAppController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/CompanionApplicationController;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/server/companion/CompanionApplicationController;->unbindCompanionApplication(ILjava/lang/String;)V

    .line 711
    :cond_6a
    return-void

    .line 679
    :cond_6b
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Landroid/companion/DeviceNotAssociatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not associated with device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/companion/DeviceNotAssociatedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/companion/IOnAssociationsChangedListener;
    .param p2, "userId"    # I

    .line 488
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 489
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "addOnAssociationsChangedListener"

    invoke-static {v0, v1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanManageCompanionDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 493
    return-void
.end method

.method public associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    .registers 7
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "callback"    # Landroid/companion/IAssociationRequestCallback;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "associate() request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package=u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "create associations"

    invoke-static {v0, p4, p3, v1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationRequestsProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/companion/AssociationRequestsProcessor;->processNewAssociationRequest(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/companion/IAssociationRequestCallback;)V

    .line 461
    return-void
.end method

.method public canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 741
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v0

    .line 742
    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackageWithAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 744
    .local v0, "association":Landroid/companion/AssociationInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 745
    return v1

    .line 747
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "certificate"    # [B

    .line 716
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p4, v1}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v0

    if-nez v0, :cond_19

    .line 718
    const-string v0, "CompanionDeviceManagerService"

    const-string v1, "Given certificate doesn\'t match the package certificate."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-void

    .line 722
    :cond_19
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ASSOCIATE_COMPANION_DEVICES"

    const-string v2, "createAssociation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, p1, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->legacyCreateAssociation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public disassociate(I)V
    .registers 6
    .param p1, "associationId"    # I

    .line 530
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 531
    .local v0, "association":Landroid/companion/AssociationInfo;
    if-eqz v0, :cond_e

    .line 538
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->disassociateInternal(I)V

    .line 539
    return-void

    .line 532
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Association with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist or belongs to a different package or belongs to a different user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dispatchMessage(II[B)V
    .registers 4
    .param p1, "messageId"    # I
    .param p2, "associationId"    # I
    .param p3, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 764
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 765
    return-void

    .line 768
    :cond_f
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/companion/AssociationStoreImpl;->dump(Ljava/io/PrintWriter;)V

    .line 769
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 770
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCompanionAppController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/CompanionApplicationController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/companion/CompanionApplicationController;->dump(Ljava/io/PrintWriter;)V

    .line 771
    return-void
.end method

.method public getAllAssociationsForUser(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 480
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAllAssociationsForUser"

    invoke-static {v0, v1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanManageCompanionDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAssociations(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "get associations"

    invoke-static {v0, p2, p1, v1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/companion/PermissionsUtils;->checkCallerCanManageCompanionDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 471
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/android/server/companion/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 474
    :cond_20
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;

    .line 755
    new-instance v0, Lcom/android/server/companion/CompanionDeviceShellCommand;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/companion/CompanionDeviceShellCommand;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)V

    .line 757
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 758
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 757
    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    .line 755
    return v0
.end method

.method public hasNotificationAccess(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 571
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;I)V

    .line 572
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 573
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 579
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_COMPANION_DEVICES"

    const-string/jumbo v2, "isDeviceAssociated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.COMPANION_APPROVE_WIFI_CONNECTIONS"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 585
    .local v0, "bypassMacPermission":Z
    :goto_24
    if-eqz v0, :cond_27

    .line 586
    return v1

    .line 589
    :cond_27
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v1

    return v1
.end method

.method public legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "deviceMacAddress"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 512
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 516
    invoke-virtual {v0, p3, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAssociationWithCallerChecks(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 517
    .local v0, "association":Landroid/companion/AssociationInfo;
    if-eqz v0, :cond_18

    .line 523
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->disassociateInternal(I)V

    .line 524
    return-void

    .line 518
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Association does not exist or the caller does not have permissions to manage it (ie. it belongs to a different package or a different user)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifyDeviceAppeared(I)V
    .registers 6
    .param p1, "associationId"    # I

    .line 617
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 618
    .local v0, "association":Landroid/companion/AssociationInfo;
    const-string v1, "Association with ID "

    if-eqz v0, :cond_50

    .line 625
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 632
    invoke-static {v0}, Landroid/companion/AssociationInfo;->builder(Landroid/companion/AssociationInfo;)Landroid/companion/AssociationInfo$NonActionableBuilder;

    move-result-object v1

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/companion/AssociationInfo$NonActionableBuilder;->setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;

    move-result-object v1

    .line 634
    invoke-virtual {v1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/companion/AssociationStoreImpl;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 637
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onSelfManagedDeviceConnected(I)V

    .line 638
    return-void

    .line 626
    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not self-managed. notifyDeviceAppeared(int) can only be called for self-managed associations."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 619
    :cond_50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not exist or belongs to a different package or belongs to a different user"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public notifyDeviceDisappeared(I)V
    .registers 6
    .param p1, "associationId"    # I

    .line 644
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 645
    .local v0, "association":Landroid/companion/AssociationInfo;
    const-string v1, "Association with ID "

    if-eqz v0, :cond_37

    .line 652
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 658
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onSelfManagedDeviceDisconnected(I)V

    .line 659
    return-void

    .line 653
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not self-managed. notifyDeviceAppeared(int) can only be called for self-managed associations."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 646
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not exist or belongs to a different package or belongs to a different user"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 444
    :catchall_5
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "CompanionDeviceManagerService"

    const-string v2, "Error during IPC"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    const-class v1, Landroid/os/RemoteException;

    invoke-static {v0, v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerDevicePresenceListenerService(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->registerDevicePresenceListenerActive(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 598
    return-void
.end method

.method public removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/companion/IOnAssociationsChangedListener;
    .param p2, "userId"    # I

    .line 498
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 499
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 500
    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "removeOnAssociationsChangedListener"

    invoke-static {v0, v1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanManageCompanionDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 503
    return-void
.end method

.method public requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;
    .registers 13
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;I)V

    .line 546
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_3d

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 551
    .local v1, "identity":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 554
    invoke-virtual {v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 553
    invoke-static {v3, p2, p1}, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->launcherIntent(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x54000000

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 551
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_38

    .line 560
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    return-object v3

    .line 560
    :catchall_38
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 561
    throw v3

    .line 547
    .end local v1    # "identity":J
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Component name is too long."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unregisterDevicePresenceListenerService(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->registerDevicePresenceListenerActive(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 605
    return-void
.end method
