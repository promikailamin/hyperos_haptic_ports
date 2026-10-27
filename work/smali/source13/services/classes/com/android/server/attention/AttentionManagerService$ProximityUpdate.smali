.class final Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProximityUpdate"
.end annotation


# instance fields
.field private final mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

.field private final mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

.field private mStartedUpdates:Z

.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIProximityUpdateCallback(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/service/attention/IProximityUpdateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartedUpdates(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    return p0
.end method

.method constructor <init>(Lcom/android/server/attention/AttentionManagerService;Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/attention/AttentionManagerService;
    .param p2, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    .line 668
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    .line 670
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;-><init>(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;Lcom/android/server/attention/AttentionManagerService;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

    .line 679
    return-void
.end method


# virtual methods
.method cancelUpdates()V
    .registers 5

    .line 704
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 705
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    if-eqz v1, :cond_28

    .line 706
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 707
    iput-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    .line 708
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_2a

    return-void

    .line 711
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    invoke-interface {v1}, Landroid/service/attention/IAttentionService;->onStopProximityUpdates()V

    .line 712
    iput-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_20
    .catchall {:try_start_16 .. :try_end_1f} :catchall_2a

    .line 715
    goto :goto_28

    .line 713
    :catch_20
    move-exception v1

    .line 714
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_21
    const-string v2, "AttentionManagerService"

    const-string v3, "Cannot call into the AttentionService"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    monitor-exit v0

    .line 718
    return-void

    .line 717
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 721
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "is StartedUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 724
    return-void
.end method

.method startUpdates()Z
    .registers 6

    .line 682
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 683
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 684
    const-string v1, "AttentionManagerService"

    const-string v3, "Already registered to a proximity service."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    monitor-exit v0

    return v2

    .line 687
    :cond_15
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-nez v1, :cond_24

    .line 688
    const-string v1, "AttentionManagerService"

    const-string v3, "There is no service bound. Proximity update request rejected."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_3d

    return v2

    .line 693
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

    invoke-interface {v1, v3}, Landroid/service/attention/IAttentionService;->onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V

    .line 694
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_30} :catch_33
    .catchall {:try_start_24 .. :try_end_30} :catchall_3d

    .line 698
    nop

    .line 699
    :try_start_31
    monitor-exit v0

    .line 700
    return v1

    .line 695
    :catch_33
    move-exception v1

    .line 696
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "AttentionManagerService"

    const-string v4, "Cannot call into the AttentionService"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    monitor-exit v0

    return v2

    .line 699
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_3d

    throw v1
.end method
