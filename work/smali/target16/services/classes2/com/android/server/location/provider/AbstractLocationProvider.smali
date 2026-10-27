.class public abstract Lcom/android/server/location/provider/AbstractLocationProvider;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"


# instance fields
.field public final mController:Lcom/android/server/location/provider/LocationProviderController;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mInternalState:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static synthetic $r8$lambda$CeuvNTBi50NGKIcNe9haAXCHlUo(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
    .registers 4

    .line 246
    iget-object v0, p2, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p2, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->withState(Ljava/util/function/UnaryOperator;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FB2CxvzMg7jhWqN8Car2RHjBkcQ(Landroid/location/provider/ProviderProperties;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2

    .line 283
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withProperties(Landroid/location/provider/ProviderProperties;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xmpiQinuk56UCsTwnnQ2qoBXpWE(ZLcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2

    .line 276
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withAllowed(Z)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInternalState(Lcom/android/server/location/provider/AbstractLocationProvider;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V
    .registers 7

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_e

    .line 223
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

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 225
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    sget-object v1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 227
    invoke-virtual {v1, p2}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withIdentity(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p2

    .line 228
    invoke-virtual {p2, p3}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withProperties(Landroid/location/provider/ProviderProperties;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p2

    .line 229
    invoke-virtual {p2, p4}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withExtraAttributionTags(Ljava/util/Set;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v0, p3, p2}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 230
    new-instance p1, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    invoke-direct {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/LocationProviderController;

    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public getController()Lcom/android/server/location/provider/LocationProviderController;
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/LocationProviderController;

    return-object p0
.end method

.method public final getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-object p0
.end method

.method public abstract onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onFlush(Ljava/lang/Runnable;)V
.end method

.method public abstract onSetRequest(Landroid/location/provider/ProviderRequest;)V
.end method

.method public onStart()V
    .registers 1

    .line 0
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 0
    return-void
.end method

.method public reportLocation(Landroid/location/LocationResult;)V
    .registers 5

    .line 309
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    if-eqz p0, :cond_22

    .line 311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 313
    :try_start_10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/location/LocationResult;

    invoke-interface {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Listener;->onReportLocation(Landroid/location/LocationResult;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    .line 315
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    throw p0

    :cond_22
    return-void
.end method

.method public setAllowed(Z)V
    .registers 3

    .line 276
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public setProperties(Landroid/location/provider/ProviderProperties;)V
    .registers 3

    .line 283
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda1;-><init>(Landroid/location/provider/ProviderProperties;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public setState(Ljava/util/function/UnaryOperator;)V
    .registers 5

    .line 243
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 244
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 249
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 251
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {p1, v0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_39

    .line 255
    :cond_21
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    if-eqz v0, :cond_39

    .line 256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 258
    :try_start_29
    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-interface {v2, p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Listener;->onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_34

    .line 260
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_34
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    throw p0

    :cond_39
    :goto_39
    return-void
.end method
