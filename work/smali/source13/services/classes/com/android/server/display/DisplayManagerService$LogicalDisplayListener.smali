.class final Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/LogicalDisplayMapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogicalDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 2780
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayGroupEventLocked(II)V
    .registers 4
    .param p1, "groupId"    # I
    .param p2, "event"    # I

    .line 2812
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msendDisplayGroupEvent(Lcom/android/server/display/DisplayManagerService;II)V

    .line 2813
    return-void
.end method

.method public onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .registers 4
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "event"    # I

    .line 2783
    packed-switch p2, :pswitch_data_2a

    goto :goto_28

    .line 2805
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_28

    .line 2801
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    .line 2802
    goto :goto_28

    .line 2797
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplaySwappedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    .line 2798
    goto :goto_28

    .line 2793
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayRemovedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    .line 2794
    goto :goto_28

    .line 2789
    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    .line 2790
    goto :goto_28

    .line 2785
    :pswitch_22
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayAddedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    .line 2786
    nop

    .line 2808
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method public onTraversalRequested()V
    .registers 4

    .line 2817
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2818
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mscheduleTraversalLocked(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 2819
    monitor-exit v0

    .line 2820
    return-void

    .line 2819
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
