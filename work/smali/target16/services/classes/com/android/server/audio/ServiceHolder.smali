.class public Lcom/android/server/audio/ServiceHolder;
.super Ljava/lang/Object;
.source "ServiceHolder.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCastFunction:Ljava/util/function/Function;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mOnDeathTasks:Ljava/util/Set;

.field public final mOnStartTasks:Ljava/util/Set;

.field public final mService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mServiceListener:Landroid/os/IServiceCallback;

.field public final mServiceName:Ljava/lang/String;

.field public final mServiceProvider:Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$FyV02pxhdgnfX1I6jqJTZEz-NV4(Ljava/util/function/Consumer;Landroid/os/IInterface;)V
    .registers 2

    .line 208
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rpc5tugFjoOuuCPd1bNQArZZ9gg(Ljava/util/function/Consumer;Landroid/os/IInterface;)V
    .registers 2

    .line 177
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xJ2R2EH0DbZY1SSX__xoFcZLp5o(Ljava/util/function/Consumer;Landroid/os/IInterface;)V
    .registers 2

    .line 134
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monServiceInited(Lcom/android/server/audio/ServiceHolder;Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/ServiceHolder;->onServiceInited(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 86
    new-instance v0, Lcom/android/server/audio/ServiceHolder$2;

    invoke-direct {v0}, Lcom/android/server/audio/ServiceHolder$2;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/audio/ServiceHolder;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/concurrent/Executor;Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/concurrent/Executor;Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;)V
    .registers 6

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mOnStartTasks:Ljava/util/Set;

    .line 63
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mOnDeathTasks:Ljava/util/Set;

    .line 65
    new-instance v0, Lcom/android/server/audio/ServiceHolder$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/ServiceHolder$1;-><init>(Lcom/android/server/audio/ServiceHolder;)V

    iput-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mServiceListener:Landroid/os/IServiceCallback;

    .line 117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/audio/ServiceHolder;->mServiceName:Ljava/lang/String;

    .line 118
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/server/audio/ServiceHolder;->mCastFunction:Ljava/util/function/Function;

    .line 119
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 120
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;

    iput-object p4, p0, Lcom/android/server/audio/ServiceHolder;->mServiceProvider:Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ServiceHolder: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/audio/ServiceHolder;->mTag:Ljava/lang/String;

    .line 122
    invoke-interface {p4, p1, v0}, Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    return-void
.end method


# virtual methods
.method public attemptClear(Landroid/os/IBinder;)V
    .registers 6

    .line 171
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    if-eqz v0, :cond_3e

    .line 173
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    .line 175
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 176
    iget-object p1, p0, Lcom/android/server/audio/ServiceHolder;->mOnDeathTasks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 177
    iget-object v2, p0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/os/IInterface;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_27

    :cond_3e
    return-void
.end method

.method public binderDied()V
    .registers 2

    .line 161
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Wrong binderDied called, this should never happen"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 2

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/server/audio/ServiceHolder;->attemptClear(Landroid/os/IBinder;)V

    return-void
.end method

.method public checkService()Landroid/os/IInterface;
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    if-eqz v0, :cond_b

    return-object v0

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mServiceProvider:Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;

    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mServiceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 188
    :cond_17
    invoke-virtual {p0, v0}, Lcom/android/server/audio/ServiceHolder;->onServiceInited(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method public final onServiceInited(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 7

    .line 201
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mCastFunction:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 202
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return-object v0

    .line 207
    :cond_15
    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mOnStartTasks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    .line 208
    iget-object v3, p0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v0}, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;Landroid/os/IInterface;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1b

    :cond_32
    const/4 v1, 0x0

    .line 211
    :try_start_33
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    return-object v0

    .line 213
    :catch_37
    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mTag:Ljava/lang/String;

    const-string v2, "Immediate service death. Service crash-looping"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/audio/ServiceHolder;->attemptClear(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public registerOnStartTask(Ljava/util/function/Consumer;)V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mOnStartTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    if-eqz v0, :cond_19

    .line 134
    iget-object p0, p0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/os/IInterface;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method

.method public waitForService()Landroid/os/IInterface;
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    if-eqz v0, :cond_b

    return-object v0

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mServiceProvider:Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;

    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mServiceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/ServiceHolder;->onServiceInited(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method
