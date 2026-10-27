.class final Lcom/android/server/wm/TaskFpsCallbackController;
.super Ljava/lang/Object;
.source "TaskFpsCallbackController.java"


# instance fields
.field public final mDeathRecipients:Ljava/util/HashMap;

.field public final mTaskFpsCallbacks:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$SMMa28G8Yw6JKRU9LZ4_14O2AAE(Lcom/android/server/wm/TaskFpsCallbackController;Landroid/window/ITaskFpsCallback;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFpsCallbackController;->lambda$registerListener$0(Landroid/window/ITaskFpsCallback;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mDeathRecipients:Ljava/util/HashMap;

    return-void
.end method

.method private static native nativeRegister(Landroid/window/ITaskFpsCallback;I)J
.end method

.method private static native nativeUnregister(J)V
.end method


# virtual methods
.method public final synthetic lambda$registerListener$0(Landroid/window/ITaskFpsCallback;)V
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFpsCallbackController;->unregisterListener(Landroid/window/ITaskFpsCallback;)V

    return-void
.end method

.method public registerListener(ILandroid/window/ITaskFpsCallback;)V
    .registers 6

    if-nez p2, :cond_3

    goto :goto_2b

    .line 40
    :cond_3
    invoke-interface {p2}, Landroid/window/ITaskFpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2b

    .line 45
    :cond_10
    invoke-static {p2, p1}, Lcom/android/server/wm/TaskFpsCallbackController;->nativeRegister(Landroid/window/ITaskFpsCallback;I)J

    move-result-wide v1

    .line 46
    iget-object p1, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance p1, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskFpsCallbackController;Landroid/window/ITaskFpsCallback;)V

    const/4 p2, 0x0

    .line 50
    :try_start_23
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 51
    iget-object p0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mDeathRecipients:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2b} :catch_2b

    :catch_2b
    :goto_2b
    return-void
.end method

.method public unregisterListener(Landroid/window/ITaskFpsCallback;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_f

    .line 62
    :cond_3
    invoke-interface {p1}, Landroid/window/ITaskFpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :goto_f
    return-void

    .line 67
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mDeathRecipients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mDeathRecipients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskFpsCallbackController;->nativeUnregister(J)V

    .line 71
    iget-object p0, p0, Lcom/android/server/wm/TaskFpsCallbackController;->mTaskFpsCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
