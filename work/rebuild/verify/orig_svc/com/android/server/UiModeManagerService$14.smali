.class public Lcom/android/server/UiModeManagerService$14;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public static synthetic $r8$lambda$VzlvZp-BLObNiPJySDYwBDWD6Lk(FLandroid/app/IUiModeManagerCallback;)V
    .registers 2

    .line 522
    invoke-interface {p1, p0}, Landroid/app/IUiModeManagerCallback;->notifyContrastChanged(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$pa5kjeMfCORkyiiMSWgu_bc-1oo(Lcom/android/server/UiModeManagerInternal$ContrastListenerInternal;IF)V
    .registers 3

    .line 541
    invoke-interface {p0, p1, p2}, Lcom/android/server/UiModeManagerInternal$ContrastListenerInternal;->onContrastChange(IF)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 509
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 9

    .line 512
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 514
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    const/4 v0, 0x0

    move v1, v0

    .line 516
    :goto_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeManagerCallbacks(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 517
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeManagerCallbacks(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 518
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3, v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateContrastLocked(Lcom/android/server/UiModeManagerService;I)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 519
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3, v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mgetContrastLocked(Lcom/android/server/UiModeManagerService;I)F

    move-result v3

    .line 520
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 521
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeManagerCallbacks(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    new-instance v4, Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda0;-><init>(F)V

    invoke-static {v4}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    goto :goto_54

    :catchall_52
    move-exception p0

    goto :goto_a5

    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 532
    :cond_57
    monitor-exit p2
    :try_end_58
    .catchall {:try_start_e .. :try_end_58} :catchall_52

    .line 534
    :goto_58
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_a4

    .line 535
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 536
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 538
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLocalService(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$LocalService;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/UiModeManagerService$LocalService;->-$$Nest$fgetmContrastListeners(Lcom/android/server/UiModeManagerService$LocalService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 539
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/HardwarePropertiesManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 540
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 541
    new-instance v4, Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p2, v1}, Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/UiModeManagerInternal$ContrastListenerInternal;IF)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_7e

    :cond_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_a4
    return-void

    .line 532
    :goto_a5
    :try_start_a5
    monitor-exit p2
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_52

    throw p0
.end method
