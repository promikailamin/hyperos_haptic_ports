.class public Lcom/android/server/location/listeners/ListenerRegistration;
.super Ljava/lang/Object;
.source "ListenerRegistration.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/listeners/ListenerExecutor;"
    }
.end annotation


# instance fields
.field private mActive:Z

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    .local p2, "listener":Ljava/lang/Object;, "TTListener;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    .line 43
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 131
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method protected final executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    .local p1, "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/listeners/ListenerRegistration;)V

    new-instance v2, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/listeners/ListenerRegistration;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/location/listeners/ListenerRegistration;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    .line 121
    return-void
.end method

.method protected final getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 47
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 136
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isActive()Z
    .registers 2

    .line 77
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    return v0
.end method

.method public final isRegistered()Z
    .registers 2

    .line 90
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method synthetic lambda$executeOperation$0$com-android-server-location-listeners-ListenerRegistration()Ljava/lang/Object;
    .registers 2

    .line 120
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    return-object v0
.end method

.method protected onActive()V
    .registers 1

    .line 67
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    return-void
.end method

.method protected onInactive()V
    .registers 1

    .line 74
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    return-void
.end method

.method protected onListenerUnregister()V
    .registers 1

    .line 104
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    return-void
.end method

.method protected onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .registers 4
    .param p2, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    .local p1, "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onRegister(Ljava/lang/Object;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 54
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    return-void
.end method

.method protected onUnregister()V
    .registers 1

    .line 60
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    return-void
.end method

.method final setActive(Z)Z
    .registers 3
    .param p1, "active"    # Z

    .line 81
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    if-eq p1, v0, :cond_8

    .line 82
    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    .line 83
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 125
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    const-string v0, "[]"

    return-object v0
.end method

.method final unregisterInternal()V
    .registers 2

    .line 94
    .local p0, "this":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<TTListener;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->onListenerUnregister()V

    .line 96
    return-void
.end method
