.class final Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;
.super Landroid/app/AppOpsManagerInternal;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppOpsManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method private constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 7622
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/app/AppOpsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;)V

    return-void
.end method

.method static synthetic lambda$setGlobalRestriction$0(Ljava/lang/Object;II)V
    .registers 4
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I

    .line 7669
    move-object v0, p0

    check-cast v0, Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnotifyWatchersOfChange(Lcom/android/server/appop/AppOpsService;II)V

    return-void
.end method

.method static synthetic lambda$setGlobalRestriction$1(Ljava/lang/Object;IZI)V
    .registers 5
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Z
    .param p3, "x$2"    # I

    .line 7672
    move-object v0, p0

    check-cast v0, Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mupdateStartedOpModeForUser(Lcom/android/server/appop/AppOpsService;IZI)V

    return-void
.end method


# virtual methods
.method public getOpRestrictionCount(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "code"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 7686
    const/4 v0, 0x0

    .line 7687
    .local v0, "number":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    .line 7688
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpUserRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 7689
    .local v2, "numRestrictions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_31

    .line 7690
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpUserRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 7691
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    const/4 v10, 0x0

    move v6, p1

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->hasRestriction(ILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 7693
    add-int/lit8 v0, v0, 0x1

    .line 7689
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 7697
    .end local v3    # "i":I
    :cond_31
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v2, v3

    .line 7698
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3d
    if-ge v3, v2, :cond_56

    .line 7699
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    invoke-virtual {v4, p1}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->hasRestriction(I)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 7700
    add-int/lit8 v0, v0, 0x1

    .line 7698
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 7703
    .end local v2    # "numRestrictions":I
    .end local v3    # "i":I
    :cond_56
    monitor-exit v1

    .line 7705
    return v0

    .line 7703
    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_4 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    .registers 4
    .param p1, "owners"    # Landroid/util/SparseIntArray;

    .line 7624
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 7625
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p1, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    .line 7626
    monitor-exit v0

    .line 7627
    return-void

    .line 7626
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public setGlobalRestriction(IZLandroid/os/IBinder;)V
    .registers 12
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;

    .line 7650
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_88

    .line 7655
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 7656
    :try_start_d
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_85

    .line 7658
    .local v1, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
    if-nez v1, :cond_31

    .line 7660
    :try_start_1b
    new-instance v2, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {v2, v3, p3}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_2e
    .catchall {:try_start_1b .. :try_end_22} :catchall_85

    move-object v1, v2

    .line 7663
    nop

    .line 7664
    :try_start_24
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 7661
    :catch_2e
    move-exception v2

    .line 7662
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-void

    .line 7667
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    invoke-virtual {v1, p1, p2}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->setRestriction(IZ)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 7668
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 7669
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x2

    .line 7670
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 7668
    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7671
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl$$ExternalSyntheticLambda1;-><init>()V

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 7673
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 7671
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7676
    :cond_71
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 7677
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7678
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->destroy()V

    .line 7680
    .end local v1    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
    :cond_83
    monitor-exit v0

    .line 7681
    return-void

    .line 7680
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_24 .. :try_end_87} :catchall_85

    throw v1

    .line 7652
    :cond_88
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system can set global restrictions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 12
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 7644
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$msetMode(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 7645
    return-void
.end method

.method public setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 7638
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$msetUidMode(Lcom/android/server/appop/AppOpsService;IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 7639
    return-void
.end method

.method public updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .registers 4
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 7632
    .local p1, "uidPackageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mupdateAppWidgetVisibility(Lcom/android/server/appop/AppOpsService;Landroid/util/SparseArray;Z)V

    .line 7633
    return-void
.end method
