.class final Lcom/android/server/wm/TaskFpsCallbackController;
.super Ljava/lang/Object;
.source "TaskFpsCallbackController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeathRecipients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/window/ITaskFpsCallback;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskFpsCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/window/ITaskFpsCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mDeathRecipients:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method private static native nativeRegister(Landroid/window/ITaskFpsCallback;I)J
.end method

.method private static native nativeUnregister(J)V
.end method


# virtual methods
.method synthetic lambda$registerListener$0$com-android-server-wm-TaskFpsCallbackController(Landroid/window/ITaskFpsCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/window/ITaskFpsCallback;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFpsCallbackController;->unregisterListener(Landroid/window/ITaskFpsCallback;)V

    return-void
.end method

.method registerListener(ILandroid/window/ITaskFpsCallback;)V
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "callback"    # Landroid/window/ITaskFpsCallback;

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 40
    return-void

    .line 43
    :cond_9
    invoke-static {p2, p1}, Lcom/android/server/wm/TaskFpsCallbackController;->nativeRegister(Landroid/window/ITaskFpsCallback;I)J

    move-result-wide v0

    .line 44
    .local v0, "nativeListener":J
    iget-object v2, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v2, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskFpsCallbackController;Landroid/window/ITaskFpsCallback;)V

    .line 48
    .local v2, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :try_start_1b
    invoke-interface {p2}, Landroid/window/ITaskFpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 49
    iget-object v3, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mDeathRecipients:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_29

    .line 52
    goto :goto_2a

    .line 50
    :catch_29
    move-exception v3

    .line 53
    :goto_2a
    return-void
.end method

.method unregisterListener(Landroid/window/ITaskFpsCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/window/ITaskFpsCallback;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 57
    return-void

    .line 60
    :cond_9
    invoke-interface {p1}, Landroid/window/ITaskFpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mDeathRecipients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mDeathRecipients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskFpsCallbackController;->nativeUnregister(J)V

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method
