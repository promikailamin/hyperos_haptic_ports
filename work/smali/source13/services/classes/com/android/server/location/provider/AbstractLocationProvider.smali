.class public abstract Lcom/android/server/location/provider/AbstractLocationProvider;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/provider/AbstractLocationProvider$Controller;,
        Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;,
        Lcom/android/server/location/provider/AbstractLocationProvider$State;,
        Lcom/android/server/location/provider/AbstractLocationProvider$Listener;
    }
.end annotation


# instance fields
.field private final mController:Lcom/android/server/location/provider/LocationProviderController;

.field protected final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInternalState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmInternalState(Lcom/android/server/location/provider/AbstractLocationProvider;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p3, "properties"    # Landroid/location/provider/ProviderProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/location/util/identity/CallerIdentity;",
            "Landroid/location/provider/ProviderProperties;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p4, "extraAttributionTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 224
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 227
    invoke-virtual {v3, p2}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withIdentity(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v3

    .line 228
    invoke-virtual {v3, p3}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withProperties(Landroid/location/provider/ProviderProperties;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v3

    .line 229
    invoke-virtual {v3, p4}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withExtraAttributionTags(Ljava/util/Set;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 230
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/LocationProviderController;

    .line 231
    return-void
.end method

.method static synthetic lambda$setAllowed$1(ZLcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 3
    .param p0, "allowed"    # Z
    .param p1, "state"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 276
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withAllowed(Z)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setExtraAttributionTags$4(Ljava/util/Set;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 3
    .param p0, "extraAttributionTags"    # Ljava/util/Set;
    .param p1, "state"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 302
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withExtraAttributionTags(Ljava/util/Set;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setIdentity$3(Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 3
    .param p0, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p1, "state"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 291
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withIdentity(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setProperties$2(Landroid/location/provider/ProviderProperties;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 3
    .param p0, "properties"    # Landroid/location/provider/ProviderProperties;
    .param p1, "state"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 283
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withProperties(Landroid/location/provider/ProviderProperties;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setState$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
    .registers 4
    .param p0, "oldStateRef"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p1, "operator"    # Ljava/util/function/UnaryOperator;
    .param p2, "internalState"    # Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 246
    iget-object v0, p2, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p2, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->withState(Ljava/util/function/UnaryOperator;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method getController()Lcom/android/server/location/provider/LocationProviderController;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/LocationProviderController;

    return-object v0
.end method

.method public final getExtraAttributionTags()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    return-object v0
.end method

.method public final getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-object v0
.end method

.method protected abstract onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected abstract onFlush(Ljava/lang/Runnable;)V
.end method

.method protected abstract onSetRequest(Landroid/location/provider/ProviderRequest;)V
.end method

.method protected onStart()V
    .registers 1

    .line 325
    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 332
    return-void
.end method

.method protected reportLocation(Landroid/location/LocationResult;)V
    .registers 6
    .param p1, "locationResult"    # Landroid/location/LocationResult;

    .line 309
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    .line 310
    .local v0, "listener":Lcom/android/server/location/provider/AbstractLocationProvider$Listener;
    if-eqz v0, :cond_22

    .line 311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 313
    .local v1, "identity":J
    :try_start_10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationResult;

    invoke-interface {v0, v3}, Lcom/android/server/location/provider/AbstractLocationProvider$Listener;->onReportLocation(Landroid/location/LocationResult;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    .line 315
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    goto :goto_22

    .line 315
    :catchall_1d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    throw v3

    .line 318
    .end local v1    # "identity":J
    :cond_22
    :goto_22
    return-void
.end method

.method protected setAllowed(Z)V
    .registers 3
    .param p1, "allowed"    # Z

    .line 276
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 277
    return-void
.end method

.method protected setExtraAttributionTags(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "extraAttributionTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 303
    return-void
.end method

.method protected setIdentity(Landroid/location/util/identity/CallerIdentity;)V
    .registers 3
    .param p1, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 290
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 291
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;-><init>(Landroid/location/util/identity/CallerIdentity;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 292
    return-void
.end method

.method protected setProperties(Landroid/location/provider/ProviderProperties;)V
    .registers 3
    .param p1, "properties"    # Landroid/location/provider/ProviderProperties;

    .line 283
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda2;-><init>(Landroid/location/provider/ProviderProperties;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 284
    return-void
.end method

.method protected setState(Ljava/util/function/UnaryOperator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Lcom/android/server/location/provider/AbstractLocationProvider$State;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Lcom/android/server/location/provider/AbstractLocationProvider$State;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 244
    .local v0, "oldStateRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/android/server/location/provider/AbstractLocationProvider$State;>;"
    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 249
    .local v1, "newInternalState":Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 251
    .local v2, "oldState":Lcom/android/server/location/provider/AbstractLocationProvider$State;
    iget-object v3, v1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {v2, v3}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 252
    return-void

    .line 255
    :cond_21
    iget-object v3, v1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    if-eqz v3, :cond_39

    .line 256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 258
    .local v3, "identity":J
    :try_start_29
    iget-object v5, v1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    iget-object v6, v1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-interface {v5, v2, v6}, Lcom/android/server/location/provider/AbstractLocationProvider$Listener;->onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_34

    .line 260
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    goto :goto_39

    .line 260
    :catchall_34
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    throw v5

    .line 263
    .end local v3    # "identity":J
    :cond_39
    :goto_39
    return-void
.end method
