.class Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;
.super Landroid/service/attention/IProximityUpdateCallback$Stub;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;-><init>(Lcom/android/server/attention/AttentionManagerService;Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

.field final synthetic val$this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;Lcom/android/server/attention/AttentionManagerService;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 670
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->val$this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/service/attention/IProximityUpdateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProximityUpdate(D)V
    .registers 5
    .param p1, "distance"    # D

    .line 673
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 674
    :try_start_9
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;->onProximityUpdate(D)V

    .line 675
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    .line 676
    monitor-exit v0

    .line 677
    return-void

    .line 676
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw v1
.end method
