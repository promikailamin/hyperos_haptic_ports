.class public abstract Lcom/android/server/location/listeners/ListenerRegistration;
.super Ljava/lang/Object;
.source "ListenerRegistration.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# instance fields
.field public mActive:Z

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public volatile mListener:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$Az8TrU1jpn4hMJorXEqKeseINgI(Lcom/android/server/location/listeners/ListenerRegistration;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->lambda$executeOperation$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    .line 43
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/listeners/ListenerRegistration;)V

    new-instance v2, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/listeners/ListenerRegistration;)V

    invoke-interface {p0, v0, v1, p1, v2}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    return-void
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    .line 50
    const-string p0, "ListenerRegistration"

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    .line 153
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isActive()Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    return p0
.end method

.method public final isRegistered()Z
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$executeOperation$0()Ljava/lang/Object;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    return-object p0
.end method

.method public onActive()V
    .registers 1

    .line 0
    return-void
.end method

.method public onInactive()V
    .registers 1

    .line 0
    return-void
.end method

.method public onListenerUnregister()V
    .registers 1

    .line 0
    return-void
.end method

.method public onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .registers 3

    .line 128
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public onRegister(Ljava/lang/Object;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onUnregister()V
    .registers 1

    .line 0
    return-void
.end method

.method public final setActive(Z)Z
    .registers 3

    .line 98
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    if-eq p1, v0, :cond_8

    .line 99
    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final unregisterInternal()V
    .registers 2

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->onListenerUnregister()V

    return-void
.end method
