.class public Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;
.super Ljava/lang/Object;
.source "ClipboardService.java"

# interfaces
.implements Lcom/android/server/clipboard/ClipboardManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method public static synthetic $r8$lambda$FD9RPal7my4Gu7HUuE5HVx08XTw(Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;->pruneExpiredNotificationSuppressionUids()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .registers 2

    .line 895
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method


# virtual methods
.method public notifyUserAuthorizedClipAccess(I)V
    .registers 8

    .line 899
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 900
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 901
    :try_start_b
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmSuppressAccessNotification(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseLongArray;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    invoke-virtual {v3, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 903
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_2d

    .line 904
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmWorkerHandler(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    const-wide/16 v0, 0x3e9

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_2d
    move-exception p0

    .line 903
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final pruneExpiredNotificationSuppressionUids()V
    .registers 7

    .line 910
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 911
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 912
    :try_start_b
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmSuppressAccessNotification(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseLongArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_17
    if-ltz v3, :cond_36

    .line 913
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmSuppressAccessNotification(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseLongArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_33

    .line 914
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardInternalImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmSuppressAccessNotification(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseLongArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->removeAt(I)V

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_38

    :cond_33
    :goto_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 917
    :cond_36
    monitor-exit v2

    return-void

    :goto_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_31

    throw p0
.end method
