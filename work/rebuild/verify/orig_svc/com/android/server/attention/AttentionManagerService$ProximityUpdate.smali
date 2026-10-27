.class final Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# instance fields
.field public final mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

.field public final mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

.field public mStartedUpdates:Z

.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIProximityUpdateCallback(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/service/attention/IProximityUpdateCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartedUpdates(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
    .registers 3

    .line 678
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    .line 680
    new-instance p2, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;-><init>(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;Lcom/android/server/attention/AttentionManagerService;)V

    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

    return-void
.end method


# virtual methods
.method public cancelUpdates()V
    .registers 4

    .line 714
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 715
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    if-eqz v1, :cond_26

    .line 716
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 717
    iput-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    .line 718
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception p0

    goto :goto_28

    .line 721
    :cond_18
    :try_start_18
    invoke-interface {v1}, Landroid/service/attention/IAttentionService;->onStopProximityUpdates()V

    .line 722
    iput-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e
    .catchall {:try_start_18 .. :try_end_1d} :catchall_16

    goto :goto_26

    :catch_1e
    move-exception p0

    .line 724
    :try_start_1f
    const-string v1, "AttentionManagerService"

    const-string v2, "Cannot call into the AttentionService"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_16

    throw p0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 731
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is StartedUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public startUpdates()Z
    .registers 5

    .line 692
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 693
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 694
    const-string p0, "AttentionManagerService"

    const-string v1, "Already registered to a proximity service."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    monitor-exit v0

    return v2

    :catchall_15
    move-exception p0

    goto :goto_3a

    .line 697
    :cond_17
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-nez v1, :cond_26

    .line 698
    const-string p0, "AttentionManagerService"

    const-string v1, "There is no service bound. Proximity update request rejected."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_15

    return v2

    .line 703
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

    invoke-interface {v1, v3}, Landroid/service/attention/IAttentionService;->onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V

    const/4 v1, 0x1

    .line 704
    iput-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_30
    .catchall {:try_start_26 .. :try_end_2e} :catchall_15

    .line 709
    :try_start_2e
    monitor-exit v0

    return v1

    :catch_30
    move-exception p0

    .line 706
    const-string v1, "AttentionManagerService"

    const-string v3, "Cannot call into the AttentionService"

    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    monitor-exit v0

    return v2

    .line 709
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_15

    throw p0
.end method
