.class public Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 2

    .line 940
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/CompanionDeviceManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    return-void
.end method


# virtual methods
.method public addSelfOwnedCallId(Ljava/lang/String;)V
    .registers 3

    .line 991
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 993
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->addSelfOwnedCallId(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public crossDeviceSync(ILjava/util/Collection;)V
    .registers 4

    .line 958
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 960
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncToAllDevicesForUserId(ILjava/util/Collection;)V

    :cond_11
    return-void
.end method

.method public crossDeviceSync(Landroid/companion/AssociationInfo;Ljava/util/Collection;)V
    .registers 4

    .line 967
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 969
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncToSingleDevice(Landroid/companion/AssociationInfo;Ljava/util/Collection;)V

    :cond_11
    return-void
.end method

.method public registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V
    .registers 4

    .line 950
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 952
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V

    :cond_11
    return-void
.end method

.method public removeInactiveSelfManagedAssociations()V
    .registers 1

    .line 944
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDisassociationProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/DisassociationProcessor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/companion/association/DisassociationProcessor;->removeIdleSelfManagedAssociations()V

    return-void
.end method

.method public removeSelfOwnedCallId(Ljava/lang/String;)V
    .registers 3

    .line 999
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1001
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->removeSelfOwnedCallId(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public sendCrossDeviceSyncMessage(I[B)V
    .registers 4

    .line 975
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 977
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    :cond_11
    return-void
.end method

.method public sendCrossDeviceSyncMessageToAllDevices(I[B)V
    .registers 4

    .line 983
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 985
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCrossDeviceSyncController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToAllDevicesForUserId(I[B)V

    :cond_11
    return-void
.end method
