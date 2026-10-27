.class public final Landroid/app/prediction/AppPredictor;
.super Ljava/lang/Object;
.source "AppPredictor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppPredictor$Callback;,
        Landroid/app/prediction/AppPredictor$CallbackWrapper;,
        Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper;,
        Landroid/app/prediction/AppPredictor$Token;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field private final blacklist mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mPredictionManager:Landroid/app/prediction/IPredictionManager;

.field private final blacklist mRegisteredCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/prediction/AppPredictor$Callback;",
            "Landroid/app/prediction/AppPredictor$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionId:Landroid/app/prediction/AppPredictionSessionId;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    const-class v0, Landroid/app/prediction/AppPredictor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/prediction/AppPredictionContext;)V
    .registers 6

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    .line 101
    const-string v0, "app_prediction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/app/prediction/IPredictionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    .line 103
    new-instance v0, Landroid/app/prediction/AppPredictionSessionId;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/app/prediction/AppPredictionSessionId;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    .line 106
    :try_start_4e
    iget-object p1, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-static {}, Landroid/app/prediction/AppPredictor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Landroid/app/prediction/IPredictionManager;->createPredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_59} :catch_5a

    .line 110
    goto :goto_65

    .line 107
    :catch_5a
    move-exception p1

    .line 108
    sget-object p2, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v0, "Failed to create predictor"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 112
    :goto_65
    iget-object p1, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p2, "AppPredictor.close"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private blacklist destroySessionLocked()V
    .registers 4

    .line 316
    :try_start_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1}, Landroid/app/prediction/IPredictionManager;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 320
    goto :goto_13

    .line 317
    :catch_8
    move-exception v0

    .line 318
    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify app target event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 321
    :goto_13
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 322
    return-void
.end method

.method private static blacklist getToken()Landroid/os/IBinder;
    .registers 1

    .line 409
    sget-object v0, Landroid/app/prediction/AppPredictor$Token;->sBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method private blacklist registerPredictionUpdatesLocked(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V
    .registers 5

    .line 174
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_37

    .line 178
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 180
    return-void

    .line 183
    :cond_11
    :try_start_11
    new-instance v0, Landroid/app/prediction/AppPredictor$CallbackWrapper;

    .line 184
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/app/prediction/AppPredictor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/app/prediction/AppPredictor$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictor$Callback;)V

    invoke-direct {v0, p1, v1}, Landroid/app/prediction/AppPredictor$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 185
    iget-object p1, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {p1, v1, v0}, Landroid/app/prediction/IPredictionManager;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 186
    iget-object p1, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2a} :catch_2b

    .line 190
    goto :goto_36

    .line 187
    :catch_2b
    move-exception p1

    .line 188
    sget-object p2, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v0, "Failed to register for prediction updates"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 191
    :goto_36
    return-void

    .line 175
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This client has already been destroyed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist unregisterPredictionUpdatesLocked(Landroid/app/prediction/AppPredictor$Callback;)V
    .registers 4

    .line 209
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 213
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 215
    return-void

    .line 218
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictor$CallbackWrapper;

    .line 219
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1, p1}, Landroid/app/prediction/IPredictionManager;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_20} :catch_21

    .line 223
    goto :goto_2c

    .line 220
    :catch_21
    move-exception p1

    .line 221
    sget-object v0, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v1, "Failed to unregister for prediction updates"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 224
    :goto_2c
    return-void

    .line 210
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This client has already been destroyed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist destroy()V
    .registers 3

    .line 302
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_19

    .line 303
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 305
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 306
    :try_start_11
    invoke-direct {p0}, Landroid/app/prediction/AppPredictor;->destroySessionLocked()V

    .line 307
    monitor-exit v0

    .line 311
    return-void

    .line 307
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    throw v1

    .line 309
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 327
    :try_start_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 328
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 330
    :cond_9
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    .line 331
    invoke-virtual {p0}, Landroid/app/prediction/AppPredictor;->destroy()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_19

    .line 334
    :cond_14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 335
    nop

    .line 336
    return-void

    .line 334
    :catchall_19
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 335
    throw v0
.end method

.method public blacklist getSessionId()Landroid/app/prediction/AppPredictionSessionId;
    .registers 2

    .line 345
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    return-object v0
.end method

.method public whitelist notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .registers 4

    .line 121
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 126
    :try_start_8
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1, p1}, Landroid/app/prediction/IPredictionManager;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 130
    goto :goto_1b

    .line 127
    :catch_10
    move-exception p1

    .line 128
    sget-object v0, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v1, "Failed to notify app target event"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 131
    :goto_1b
    return-void

    .line 122
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This client has already been destroyed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist notifyLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTargetId;",
            ">;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_21

    .line 146
    :try_start_8
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/app/prediction/IPredictionManager;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    .line 151
    goto :goto_20

    .line 148
    :catch_15
    move-exception p1

    .line 149
    sget-object p2, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v0, "Failed to notify location shown event"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 152
    :goto_20
    return-void

    .line 142
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This client has already been destroyed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V
    .registers 4

    .line 165
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 166
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdatesLocked(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    .line 167
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public whitelist requestPredictionUpdate()V
    .registers 4

    .line 233
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 238
    :try_start_8
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1}, Landroid/app/prediction/IPredictionManager;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 242
    goto :goto_1b

    .line 239
    :catch_10
    move-exception v0

    .line 240
    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to request prediction update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 243
    :goto_1b
    return-void

    .line 234
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist requestServiceFeatures(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_21

    .line 289
    :try_start_8
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    new-instance v2, Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper;

    invoke-direct {v2, p1, p2}, Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Landroid/app/prediction/IPredictionManager;->requestServiceFeatures(Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IRemoteCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    .line 294
    goto :goto_20

    .line 291
    :catch_15
    move-exception p1

    .line 292
    sget-object p2, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v0, "Failed to request service feature info"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 295
    :goto_20
    return-void

    .line 285
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This client has already been destroyed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist sortTargets(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_26

    .line 261
    :try_start_8
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/app/prediction/AppPredictor$CallbackWrapper;

    invoke-direct {p1, p2, p3}, Landroid/app/prediction/AppPredictor$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2, p1}, Landroid/app/prediction/IPredictionManager;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 266
    goto :goto_25

    .line 263
    :catch_1a
    move-exception p1

    .line 264
    sget-object p2, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string p3, "Failed to sort targets"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 267
    :goto_25
    return-void

    .line 257
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This client has already been destroyed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterPredictionUpdates(Landroid/app/prediction/AppPredictor$Callback;)V
    .registers 3

    .line 202
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 203
    :try_start_3
    invoke-direct {p0, p1}, Landroid/app/prediction/AppPredictor;->unregisterPredictionUpdatesLocked(Landroid/app/prediction/AppPredictor$Callback;)V

    .line 204
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method
