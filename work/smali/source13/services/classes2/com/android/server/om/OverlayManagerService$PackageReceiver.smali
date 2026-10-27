.class final Lcom/android/server/om/OverlayManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$PackageReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;[I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 416
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageAdded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 417
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_5c

    aget v4, p2, v3

    .line 418
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_61

    .line 419
    :try_start_26
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageAdded(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 421
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v6, :cond_55

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v7
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_59

    if-nez v7, :cond_55

    .line 423
    :try_start_3e
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    .line 424
    invoke-virtual {v8, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageAdded(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v8

    .line 423
    invoke-static {v7, v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_4b
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_3e .. :try_end_4b} :catch_4c
    .catchall {:try_start_3e .. :try_end_4b} :catchall_59

    .line 427
    goto :goto_55

    .line 425
    :catch_4c
    move-exception v7

    .line 426
    .local v7, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_4d
    const-string v8, "OverlayManager"

    const-string/jumbo v9, "onPackageAdded internal error"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v7    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :cond_55
    :goto_55
    monitor-exit v5

    .line 417
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 429
    .restart local v4    # "userId":I
    :catchall_59
    move-exception v2

    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_59

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_5b
    throw v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_61

    .line 432
    .end local v4    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_5c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 433
    nop

    .line 434
    return-void

    .line 432
    :catchall_61
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 433
    throw v2
.end method

.method private onPackageChanged(Ljava/lang/String;[I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 439
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 440
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_5c

    aget v4, p2, v3

    .line 441
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_61

    .line 442
    :try_start_26
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 444
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v6, :cond_55

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v7
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_59

    if-nez v7, :cond_55

    .line 446
    :try_start_3e
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    .line 447
    invoke-virtual {v8, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageChanged(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v8

    .line 446
    invoke-static {v7, v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_4b
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_3e .. :try_end_4b} :catch_4c
    .catchall {:try_start_3e .. :try_end_4b} :catchall_59

    .line 450
    goto :goto_55

    .line 448
    :catch_4c
    move-exception v7

    .line 449
    .local v7, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_4d
    const-string v8, "OverlayManager"

    const-string/jumbo v9, "onPackageChanged internal error"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v7    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :cond_55
    :goto_55
    monitor-exit v5

    .line 440
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 452
    .restart local v4    # "userId":I
    :catchall_59
    move-exception v2

    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_59

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_5b
    throw v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_61

    .line 455
    .end local v4    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_5c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 456
    nop

    .line 457
    return-void

    .line 455
    :catchall_61
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 456
    throw v2
.end method

.method private onPackageRemoved(Ljava/lang/String;[I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 523
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 524
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_43

    aget v4, p2, v3

    .line 525
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_48

    .line 526
    :try_start_26
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageRemoved(Ljava/lang/String;I)V

    .line 527
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V

    .line 528
    monitor-exit v5

    .line 524
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 528
    .restart local v4    # "userId":I
    :catchall_40
    move-exception v2

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_40

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_42
    throw v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_48

    .line 531
    .end local v4    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_43
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    nop

    .line 533
    return-void

    .line 531
    :catchall_48
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    throw v2
.end method

.method private onPackageReplaced(Ljava/lang/String;[I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 485
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplaced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 486
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_81

    aget v4, p2, v3

    .line 487
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_86

    .line 488
    :try_start_26
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 490
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v6, :cond_7a

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_7a

    .line 494
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    const-string v8, "android"

    .line 495
    invoke-virtual {v7, v8, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v7
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_7e

    .line 502
    .local v7, "frameworkOverlays":Landroid/content/pm/overlay/OverlayPaths;
    :try_start_4a
    invoke-virtual {v7}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_61

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v8

    if-eqz v8, :cond_61

    .line 503
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageAdded(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v8

    .local v8, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    goto :goto_6b

    .line 505
    .end local v8    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :cond_61
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v8

    .line 507
    .restart local v8    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :goto_6b
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v9, v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_70
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_4a .. :try_end_70} :catch_71
    .catchall {:try_start_4a .. :try_end_70} :catchall_7e

    .line 511
    goto :goto_7a

    .line 509
    .end local v8    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :catch_71
    move-exception v8

    .line 510
    .local v8, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_72
    const-string v9, "OverlayManager"

    const-string/jumbo v10, "onPackageReplaced internal error"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v7    # "frameworkOverlays":Landroid/content/pm/overlay/OverlayPaths;
    .end local v8    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :cond_7a
    :goto_7a
    monitor-exit v5

    .line 486
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 513
    .restart local v4    # "userId":I
    :catchall_7e
    move-exception v2

    monitor-exit v5
    :try_end_80
    .catchall {:try_start_72 .. :try_end_80} :catchall_7e

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_80
    throw v2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_86

    .line 516
    .end local v4    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_81
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    nop

    .line 518
    return-void

    .line 516
    :catchall_86
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    throw v2
.end method

.method private onPackageReplacing(Ljava/lang/String;[I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 462
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 463
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_5c

    aget v4, p2, v3

    .line 464
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_61

    .line 465
    :try_start_26
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 467
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v6, :cond_55

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v7
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_59

    if-nez v7, :cond_55

    .line 469
    :try_start_3e
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    .line 470
    invoke-virtual {v8, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageReplacing(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v8

    .line 469
    invoke-static {v7, v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_4b
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_3e .. :try_end_4b} :catch_4c
    .catchall {:try_start_3e .. :try_end_4b} :catchall_59

    .line 473
    goto :goto_55

    .line 471
    :catch_4c
    move-exception v7

    .line 472
    .local v7, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_4d
    const-string v8, "OverlayManager"

    const-string/jumbo v9, "onPackageReplacing internal error"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v7    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :cond_55
    :goto_55
    monitor-exit v5

    .line 463
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 475
    .restart local v4    # "userId":I
    :catchall_59
    move-exception v2

    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_59

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_5b
    throw v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_61

    .line 478
    .end local v4    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_5c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 479
    nop

    .line 480
    return-void

    .line 478
    :catchall_61
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 479
    throw v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "action":Ljava/lang/String;
    const-string v1, "OverlayManager"

    if-nez v0, :cond_e

    .line 365
    const-string v2, "Cannot handle package broadcast with null action"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void

    .line 368
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 369
    .local v2, "data":Landroid/net/Uri;
    if-nez v2, :cond_1a

    .line 370
    const-string v3, "Cannot handle package broadcast with null data"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 373
    :cond_1a
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 378
    .local v3, "replacing":Z
    const-string v5, "android.intent.extra.UID"

    const/16 v6, -0x2710

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 379
    .local v5, "extraUid":I
    const/4 v7, 0x1

    if-ne v5, v6, :cond_3b

    .line 380
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmUserManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    .local v6, "userIds":[I
    goto :goto_43

    .line 382
    .end local v6    # "userIds":[I
    :cond_3b
    new-array v6, v7, [I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    aput v8, v6, v4

    .line 385
    .restart local v6    # "userIds":[I
    :goto_43
    const/4 v8, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_96

    :cond_4b
    goto :goto_69

    :sswitch_4c
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    goto :goto_6a

    :sswitch_55
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v4, 0x2

    goto :goto_6a

    :sswitch_5f
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    move v4, v7

    goto :goto_6a

    :goto_69
    move v4, v8

    :goto_6a
    packed-switch v4, :pswitch_data_a4

    goto :goto_94

    .line 401
    :pswitch_6e
    if-eqz v3, :cond_74

    .line 402
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplacing(Ljava/lang/String;[I)V

    goto :goto_94

    .line 404
    :cond_74
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageRemoved(Ljava/lang/String;[I)V

    .line 406
    goto :goto_94

    .line 396
    :pswitch_78
    const-string v4, "android.intent.extra.REASON"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 397
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageChanged(Ljava/lang/String;[I)V

    goto :goto_94

    .line 387
    :pswitch_8a
    if-eqz v3, :cond_90

    .line 388
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplaced(Ljava/lang/String;[I)V

    goto :goto_94

    .line 390
    :cond_90
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageAdded(Ljava/lang/String;[I)V

    .line 392
    nop

    .line 411
    :cond_94
    :goto_94
    return-void

    nop

    :sswitch_data_96
    .sparse-switch
        0xa480416 -> :sswitch_5f
        0x1f50b9c2 -> :sswitch_55
        0x5c1076e2 -> :sswitch_4c
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_78
        :pswitch_6e
    .end packed-switch
.end method
