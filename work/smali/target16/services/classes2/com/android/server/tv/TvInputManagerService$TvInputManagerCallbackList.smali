.class public Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "TvInputManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .line 3429
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/media/tv/ITvInputManagerCallback;)V
    .registers 6

    .line 3432
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 3433
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 3434
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3435
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 3436
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcallbackPidUidMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 3438
    :cond_30
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_2e

    throw p0
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .registers 2

    .line 3429
    check-cast p1, Landroid/media/tv/ITvInputManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->onCallbackDied(Landroid/media/tv/ITvInputManagerCallback;)V

    return-void
.end method
