.class public Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/ExternalDisplayPolicy$Injector;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 6519
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public getDisplayNotificationManager()Lcom/android/server/display/notifications/DisplayNotificationManager;
    .registers 1

    .line 6572
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayNotificationManager(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/notifications/DisplayNotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public getExternalDisplayStatsService()Lcom/android/server/display/ExternalDisplayStatsService;
    .registers 1

    .line 6590
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmExternalDisplayStatsService(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/ExternalDisplayStatsService;

    move-result-object p0

    return-object p0
.end method

.method public getFlags()Lcom/android/server/display/feature/DisplayManagerFlags;
    .registers 1

    .line 6545
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 6581
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object p0

    return-object p0
.end method

.method public getLogicalDisplayMapper()Lcom/android/server/display/LogicalDisplayMapper;
    .registers 1

    .line 6554
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object p0

    return-object p0
.end method

.method public getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 1

    .line 6563
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p0

    return-object p0
.end method

.method public getThermalService()Landroid/os/IThermalService;
    .registers 1

    .line 6535
    const-string/jumbo p0, "thermalservice"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p0

    return-object p0
.end method

.method public sendExternalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .registers 3

    .line 6526
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msendDisplayEventLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;I)V

    return-void
.end method
