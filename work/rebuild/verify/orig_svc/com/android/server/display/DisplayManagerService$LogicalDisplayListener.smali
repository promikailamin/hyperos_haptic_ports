.class public final Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/LogicalDisplayMapper$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 4388
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayGroupEventLocked(II)V
    .registers 3

    .line 4443
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msendDisplayGroupEvent(Lcom/android/server/display/DisplayManagerService;II)V

    return-void
.end method

.method public onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_70

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6a

    const/4 v0, 0x4

    if-eq p2, v0, :cond_64

    const/16 v0, 0x8

    if-eq p2, v0, :cond_5e

    const/16 v0, 0x10

    if-eq p2, v0, :cond_58

    const/16 v0, 0x20

    if-eq p2, v0, :cond_52

    const/16 v0, 0x40

    if-eq p2, v0, :cond_4c

    const/16 v0, 0x80

    if-eq p2, v0, :cond_46

    const/16 v0, 0x100

    if-eq p2, v0, :cond_40

    const/16 v0, 0x200

    if-eq p2, v0, :cond_3a

    const/16 v0, 0x400

    if-eq p2, v0, :cond_34

    const/16 v0, 0x800

    if-eq p2, v0, :cond_2e

    return-void

    .line 4436
    :cond_2e
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayCommittedStateChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4433
    :cond_34
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayStateChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4430
    :cond_3a
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayRefreshRateChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4427
    :cond_40
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayDisconnectedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4423
    :cond_46
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayConnectedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4419
    :cond_4c
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayHdrSdrRatioChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4415
    :cond_52
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4411
    :cond_58
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4407
    :cond_5e
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplaySwappedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4403
    :cond_64
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayRemovedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4399
    :cond_6a
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4395
    :cond_70
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayAddedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public onTraversalRequested()V
    .registers 3

    .line 4448
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 4449
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mscheduleTraversalLocked(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 4450
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method
