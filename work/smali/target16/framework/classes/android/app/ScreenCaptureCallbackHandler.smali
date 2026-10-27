.class public Landroid/app/ScreenCaptureCallbackHandler;
.super Ljava/lang/Object;
.source "ScreenCaptureCallbackHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;,
        Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;
    }
.end annotation


# instance fields
.field private final blacklist mActivityToken:Landroid/os/IBinder;

.field private final blacklist mObserver:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;

.field private final blacklist mScreenCaptureRegistrations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity$ScreenCaptureCallback;",
            "Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    .line 38
    iput-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mActivityToken:Landroid/os/IBinder;

    .line 39
    new-instance p1, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;

    iget-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-direct {p1, v0}, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;-><init>(Landroid/util/ArrayMap;)V

    iput-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mObserver:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist registerScreenCaptureCallback(Ljava/util/concurrent/Executor;Landroid/app/Activity$ScreenCaptureCallback;)V
    .registers 5

    .line 80
    new-instance v0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;

    invoke-direct {v0, p1, p2}, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;-><init>(Ljava/util/concurrent/Executor;Landroid/app/Activity$ScreenCaptureCallback;)V

    .line 82
    iget-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 83
    :try_start_8
    iget-object v1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 87
    iget-object v1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p2, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_38

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2e

    .line 91
    :try_start_1e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    iget-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler;->mActivityToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mObserver:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;

    .line 92
    invoke-interface {p2, v0, v1}, Landroid/app/IActivityTaskManager;->registerScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a
    .catchall {:try_start_1e .. :try_end_29} :catchall_38

    .line 95
    goto :goto_2e

    .line 93
    :catch_2a
    move-exception p2

    .line 94
    :try_start_2b
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 97
    :cond_2e
    :goto_2e
    monitor-exit p1

    .line 98
    return-void

    .line 84
    :cond_30
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Capture observer already registered with the activity"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 97
    :catchall_38
    move-exception p2

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw p2
.end method

.method public blacklist unregisterScreenCaptureCallback(Landroid/app/Activity$ScreenCaptureCallback;)V
    .registers 5

    .line 101
    iget-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object v1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 106
    iget-object v1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_32

    if-nez p1, :cond_28

    .line 110
    :try_start_18
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object v1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mActivityToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/ScreenCaptureCallbackHandler;->mObserver:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;

    invoke-interface {p1, v1, v2}, Landroid/app/IActivityTaskManager;->unregisterScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_24
    .catchall {:try_start_18 .. :try_end_23} :catchall_32

    .line 114
    goto :goto_28

    .line 112
    :catch_24
    move-exception p1

    .line 113
    :try_start_25
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 116
    :cond_28
    :goto_28
    monitor-exit v0

    .line 117
    return-void

    .line 103
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Capture observer not registered with the activity"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_32

    throw p1
.end method
