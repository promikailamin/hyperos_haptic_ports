.class public final Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;
.super Landroid/app/AppOpsManagerInternal;
.source "AppOpsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public static synthetic $r8$lambda$KZ8csPYjnHRgqtsqPZIdzSZk2M0(Lcom/android/server/appop/AppOpsService;IZI)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mupdateStartedOpModeForUserForDefaultDevice(Lcom/android/server/appop/AppOpsService;IZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$_3mKgx97gA3YgX5RtEESYaD_JvY(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnotifyWatchersOnDefaultDevice(Lcom/android/server/appop/AppOpsService;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 7704
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/app/AppOpsManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;)V

    return-void
.end method


# virtual methods
.method public getOpRestrictionCount(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)I
    .registers 17

    .line 7771
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    .line 7772
    :try_start_3
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpUserRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_10
    if-ge v3, v0, :cond_36

    .line 7774
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpUserRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 7775
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    const/4 v11, 0x0

    move v7, p1

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->hasRestriction(ILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v5

    if-eqz v5, :cond_30

    add-int/lit8 v4, v4, 0x1

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :catchall_33
    move-exception v0

    move-object p0, v0

    goto :goto_5b

    .line 7781
    :cond_36
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    :goto_40
    if-ge v2, p2, :cond_59

    .line 7783
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->hasRestriction(I)Z

    move-result v0

    if-eqz v0, :cond_56

    add-int/lit8 v4, v4, 0x1

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 7787
    :cond_59
    monitor-exit v1

    return v4

    :goto_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_33

    throw p0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 7

    .line 7794
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mgetUserManagerInternal(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 7795
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 7796
    aget v2, v0, v1

    .line 7797
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-static {v3, p1, v2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$monPackageAdded(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1c
    return-void
.end method

.method public setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    .registers 3

    .line 7706
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 7707
    :try_start_3
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    .line 7708
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public setGlobalRestriction(IZLandroid/os/IBinder;)V
    .registers 11

    .line 7732
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_86

    .line 7737
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 7738
    :try_start_d
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_2c

    if-nez v1, :cond_30

    .line 7742
    :try_start_1b
    new-instance v1, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {v1, v2, p3}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_2e
    .catchall {:try_start_1b .. :try_end_22} :catchall_2c

    .line 7746
    :try_start_22
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :catchall_2c
    move-exception p0

    goto :goto_84

    .line 7744
    :catch_2e
    monitor-exit v0

    return-void

    .line 7749
    :cond_30
    :goto_30
    invoke-virtual {v1, p1, p2}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->setRestriction(IZ)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 7752
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 7754
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 7752
    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7755
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl$$ExternalSyntheticLambda1;-><init>()V

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 7757
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 7755
    invoke-static {v3, v4, p1, p2, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7760
    :cond_70
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_82

    .line 7761
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7762
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->destroy()V

    .line 7764
    :cond_82
    monitor-exit v0

    return-void

    :goto_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_22 .. :try_end_85} :catchall_2c

    throw p0

    .line 7734
    :cond_86
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system can set global restrictions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 6

    .line 7726
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V
    .registers 5

    .line 7720
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$msetUidMode(Lcom/android/server/appop/AppOpsService;IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .registers 3

    .line 7714
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mupdateAppWidgetVisibility(Lcom/android/server/appop/AppOpsService;Landroid/util/SparseArray;Z)V

    return-void
.end method
