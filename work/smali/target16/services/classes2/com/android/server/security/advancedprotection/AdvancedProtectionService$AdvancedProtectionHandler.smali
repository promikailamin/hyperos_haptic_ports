.class public Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;
.super Landroid/os/Handler;
.source "AdvancedProtectionService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;)V
    .registers 3

    .line 510
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    .line 511
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;Lcom/android/server/security/advancedprotection/AdvancedProtectionService-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleAllCallbacks(Z)V
    .registers 10

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 532
    :goto_7
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v3}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmHooks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 533
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v3}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmHooks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;

    .line 535
    :try_start_1f
    invoke-virtual {v3}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 536
    invoke-virtual {v3, p1}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->onAdvancedProtectionChanged(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_29

    goto :goto_48

    :catch_29
    move-exception v4

    .line 539
    const-string v5, "AdvancedProtectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to call hook for feature "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v3}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/advancedprotection/AdvancedProtectionFeature;->getId()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-static {v5, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 543
    :cond_4b
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    move v3, v1

    .line 544
    :goto_53
    :try_start_53
    iget-object v4, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v4}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_77

    .line 545
    iget-object v4, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v4}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_6f

    .line 547
    :try_start_6b
    invoke-interface {v4, p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->onAdvancedProtectionChanged(Z)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_71
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_74

    :catchall_6f
    move-exception p0

    goto :goto_95

    .line 549
    :catch_71
    :try_start_71
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 553
    :cond_77
    :goto_77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_93

    .line 554
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    invoke-interface {v3}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 556
    :cond_93
    monitor-exit v2

    return-void

    :goto_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_71 .. :try_end_96} :catchall_6f

    throw p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 516
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    if-eq v0, v2, :cond_9

    return-void

    .line 524
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_e

    move v1, v2

    :cond_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->handleSingleCallback(ZLandroid/security/advancedprotection/IAdvancedProtectionCallback;)V

    return-void

    .line 519
    :cond_16
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1b

    move v1, v2

    :cond_1b
    invoke-virtual {p0, v1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->handleAllCallbacks(Z)V

    return-void
.end method

.method public final handleSingleCallback(ZLandroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    .registers 3

    .line 561
    :try_start_0
    invoke-interface {p2, p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->onAdvancedProtectionChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    .line 563
    :catch_4
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-interface {p2}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
