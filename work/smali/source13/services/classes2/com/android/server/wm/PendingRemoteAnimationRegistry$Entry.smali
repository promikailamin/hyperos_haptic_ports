.class Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;
.super Ljava/lang/Object;
.source "PendingRemoteAnimationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PendingRemoteAnimationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field final adapter:Landroid/view/RemoteAnimationAdapter;

.field final launchCookie:Landroid/os/IBinder;

.field final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry;Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .registers 8
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p4, "launchCookie"    # Landroid/os/IBinder;

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->packageName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    .line 84
    iput-object p4, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->launchCookie:Landroid/os/IBinder;

    .line 85
    invoke-static {p1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->-$$Nest$fgetmHandler(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;Ljava/lang/String;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-android-server-wm-PendingRemoteAnimationRegistry$Entry(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-static {v0}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->-$$Nest$fgetmLock(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 87
    iget-object v1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-static {v1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->-$$Nest$fgetmEntries(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    .line 88
    .local v1, "entry":Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;
    if-ne v1, p0, :cond_21

    .line 89
    iget-object v2, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-static {v2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->-$$Nest$fgetmEntries(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .end local v1    # "entry":Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 92
    return-void

    .line 91
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
