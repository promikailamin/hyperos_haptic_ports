.class public Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;
.super Ljava/lang/Object;
.source "AccessCheckDelegate.java"

# interfaces
.implements Lcom/android/server/pm/permission/AccessCheckDelegate;


# instance fields
.field public mDelegateAllPermissions:Z

.field public mDelegateAndOwnerUid:I

.field public mDelegatePackage:Ljava/lang/String;

.field public mDelegatePermissions:[Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mOverridePermissionStates:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 149
    iput v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    return-void
.end method


# virtual methods
.method public addOverridePermissionState(IILjava/lang/String;I)V
    .registers 7

    .line 190
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-nez v1, :cond_13

    .line 192
    iput p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 193
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_3d

    .line 196
    :cond_13
    :goto_13
    iget-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_26

    .line 199
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 200
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2f

    .line 202
    :cond_26
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/util/ArrayMap;

    .line 205
    :goto_2f
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_11

    const/16 p0, 0x13

    .line 207
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    return-void

    .line 206
    :goto_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_11

    throw p0
.end method

.method public checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .registers 8

    .line 408
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p3, v1, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_5b

    :cond_11
    const/4 p0, 0x0

    .line 410
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    if-eqz p0, :cond_44

    .line 413
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 p3, 0x7d0

    invoke-static {p0, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 417
    :try_start_23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "com.android.shell"

    invoke-interface {p5, p1, p2, p0, v0}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_3f

    .line 419
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_3f
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    throw p0

    .line 422
    :cond_44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p5, p0, p1, p2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 410
    :goto_5b
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_f

    throw p0
.end method

.method public checkOperation(IILjava/lang/String;Ljava/lang/String;IZLcom/android/internal/util/function/HexFunction;)I
    .registers 15

    .line 386
    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_3
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p2, v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :catchall_f
    move-exception v0

    move-object p0, v0

    goto :goto_6a

    :cond_12
    const/4 p0, 0x0

    .line 388
    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    if-eqz p0, :cond_4c

    .line 391
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 p2, 0x7d0

    invoke-static {p0, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 395
    :try_start_24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.android.shell"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_46

    .line 397
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_46
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 398
    throw p0

    :cond_4c
    move-object v0, p7

    .line 400
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 388
    :goto_6a
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_f

    throw p0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/QuadFunction;)I
    .registers 11

    .line 313
    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_3
    const-string v0, "com.android.shell"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePackage:Ljava/lang/String;

    .line 315
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 316
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegatePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v3

    goto :goto_21

    :catchall_1d
    move-exception v0

    move-object p0, v0

    goto :goto_88

    :cond_20
    move v0, v2

    .line 317
    :goto_21
    iget-object v4, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-eqz v4, :cond_26

    move v2, v3

    .line 318
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_1d

    if-nez v0, :cond_63

    if-eqz v2, :cond_63

    .line 321
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    .line 322
    invoke-virtual {v1, p1, v2, v3, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ltz v1, :cond_63

    .line 324
    iget-object v2, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 325
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-eqz v3, :cond_5f

    .line 327
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_5f

    .line 329
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 330
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v2

    return p0

    :catchall_5c
    move-exception v0

    move-object p0, v0

    goto :goto_61

    .line 333
    :cond_5f
    monitor-exit v2

    goto :goto_63

    :goto_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_5c

    throw p0

    :cond_63
    :goto_63
    if-eqz v0, :cond_79

    .line 338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 340
    :try_start_69
    const-string p1, "com.android.shell"

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/QuadFunction;)I

    move-result p0
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_73

    .line 343
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_73
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 344
    throw p0

    .line 346
    :cond_79
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p5, p1, p2, p3, p0}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 318
    :goto_88
    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_1d

    throw p0
.end method

.method public checkUidPermission(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/TriFunction;)I
    .registers 10

    .line 355
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x7d0

    if-eq p1, v1, :cond_15

    .line 356
    :try_start_7
    iget v2, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p1, v2, :cond_15

    .line 357
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegatePermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :catchall_13
    move-exception p0

    goto :goto_59

    :cond_15
    const/4 v2, 0x0

    :goto_16
    if-nez v2, :cond_36

    .line 359
    iget-object v3, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-eqz v3, :cond_36

    .line 360
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_36

    .line 361
    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 362
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 365
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_13

    if-eqz v2, :cond_4a

    .line 368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 370
    :try_start_3d
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/TriFunction;)I

    move-result p0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_45

    .line 373
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_45
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    throw p0

    .line 376
    :cond_4a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p0, p2, p3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 365
    :goto_59
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_13

    throw p0
.end method

.method public clearAllOverridePermissionStates()V
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 257
    :try_start_4
    iput-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 258
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    const/16 p0, 0x16

    .line 259
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    return-void

    :catchall_d
    move-exception p0

    .line 258
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public clearOverridePermissionStates(I)V
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-nez v1, :cond_b

    .line 241
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_20

    .line 244
    :cond_b
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 246
    iget-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 249
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_9

    const/16 p0, 0x15

    .line 250
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    return-void

    .line 249
    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_9

    throw p0
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/HexConsumer;)V
    .registers 15

    .line 602
    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_3
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p3, v0, :cond_12

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :catchall_f
    move-exception v0

    move-object p0, v0

    goto :goto_56

    :cond_12
    const/4 p0, 0x0

    .line 604
    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    if-eqz p0, :cond_42

    .line 608
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 p3, 0x7d0

    invoke-static {p0, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 609
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 611
    :try_start_24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "com.android.shell"

    .line 612
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p1

    move-object v5, p5

    move-object v0, p7

    .line 611
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_3c

    .line 615
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3c
    move-exception v0

    move-object p0, v0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw p0

    :cond_42
    move-object v1, p1

    move-object v5, p5

    move-object v0, p7

    .line 618
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 619
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p4

    .line 618
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 604
    :goto_56
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_f

    throw p0
.end method

.method public finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V
    .registers 20

    move-object/from16 v1, p5

    .line 572
    iget-object v2, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 573
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    iget v4, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne v3, v4, :cond_1a

    move/from16 v3, p2

    .line 574
    invoke-virtual {p0, v3}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :catchall_17
    move-exception v0

    move-object p0, v0

    goto :goto_6e

    :cond_1a
    move/from16 v3, p2

    :cond_1c
    const/4 p0, 0x0

    .line 575
    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_17

    if-eqz p0, :cond_60

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    .line 578
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 v2, 0x7d0

    invoke-static {p0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 582
    :try_start_32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v3, Landroid/content/AttributionSource;

    const-string v6, "com.android.shell"

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    const/4 v5, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 587
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 582
    invoke-interface {v1, p1, p0, v3, v2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_32 .. :try_end_56} :catchall_5a

    .line 590
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5a
    move-exception v0

    move-object p0, v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    throw p0

    .line 593
    :cond_60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-interface {v1, p1, p0, v3, v2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 575
    :goto_6e
    :try_start_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_17

    throw p0
.end method

.method public getDelegatedPermissionNames()Ljava/util/List;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePermissions:[Ljava/lang/String;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    :cond_9
    invoke-static {p0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_d
    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 267
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public hasDelegateOrOverrides()Z
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->hasShellPermissionDelegate()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->hasOverriddenPermissions()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_14

    :cond_10
    const/4 p0, 0x0

    goto :goto_15

    :catchall_12
    move-exception p0

    goto :goto_17

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    monitor-exit v0

    return p0

    .line 303
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_12

    throw p0
.end method

.method public hasOverriddenPermissions()Z
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 289
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public hasShellPermissionDelegate()Z
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    if-nez v1, :cond_10

    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePermissions:[Ljava/lang/String;

    if-eqz p0, :cond_c

    goto :goto_10

    :cond_c
    const/4 p0, 0x0

    goto :goto_11

    :catchall_e
    move-exception p0

    goto :goto_13

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    monitor-exit v0

    return p0

    .line 274
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_e

    throw p0
.end method

.method public isDelegateAndOwnerUid(I)Z
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p1, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 296
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final isDelegateOp(I)Z
    .registers 4

    .line 630
    iget-boolean v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 634
    :cond_6
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    return v1

    .line 638
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegatePermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDelegatePackage(ILjava/lang/String;)Z
    .registers 5

    .line 279
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne v1, p1, :cond_13

    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePackage:Ljava/lang/String;

    .line 281
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    .line 282
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public final isDelegatePermission(Ljava/lang/String;)Z
    .registers 4

    .line 624
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget-boolean v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePermissions:[Ljava/lang/String;

    .line 626
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZILcom/android/internal/util/function/NonaFunction;)Landroid/app/SyncNotedAppOp;
    .registers 24

    .line 433
    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_3
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p2, v0, :cond_12

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :catchall_f
    move-exception v0

    move-object p0, v0

    goto :goto_7b

    :cond_12
    const/4 p0, 0x0

    .line 435
    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    if-eqz p0, :cond_54

    .line 438
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 p2, 0x7d0

    invoke-static {p0, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 442
    :try_start_24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "com.android.shell"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 443
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v7, p4

    move-object/from16 v10, p7

    move-object/from16 v3, p10

    .line 442
    invoke-interface/range {v3 .. v12}, Lcom/android/internal/util/function/NonaFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;
    :try_end_4a
    .catchall {:try_start_24 .. :try_end_4a} :catchall_4e

    .line 445
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_4e
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    throw p0

    .line 448
    :cond_54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 449
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p7

    move-object/from16 v3, p10

    .line 448
    invoke-interface/range {v3 .. v12}, Lcom/android/internal/util/function/NonaFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;

    return-object p0

    .line 435
    :goto_7b
    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_f

    throw p0
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;
    .registers 20

    .line 461
    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result v2

    .line 463
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 464
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_aa

    if-nez v2, :cond_28

    .line 467
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 468
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v5, p2

    move-object/from16 v7, p4

    move-object/from16 v3, p7

    .line 467
    invoke-interface/range {v3 .. v9}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0

    .line 472
    :cond_28
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x7d0

    .line 471
    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 473
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 474
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    if-ne v2, v0, :cond_61

    .line 475
    new-instance v3, Landroid/content/AttributionSource;

    const-string v6, "com.android.shell"

    .line 476
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    .line 477
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v10

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    const/4 v5, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 478
    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    goto :goto_62

    :cond_61
    move-object v1, p2

    .line 480
    :goto_62
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    if-ne v2, v0, :cond_82

    .line 481
    new-instance v3, Landroid/content/AttributionSource;

    const-string v6, "com.android.shell"

    .line 482
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 483
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    .line 484
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v10

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    const/4 v5, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    goto :goto_83

    :cond_82
    move-object v3, v1

    .line 486
    :goto_83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 488
    :try_start_87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 489
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v5, p4

    move-object/from16 v1, p7

    .line 488
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_a1
    .catchall {:try_start_87 .. :try_end_a1} :catchall_a5

    .line 491
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_a5
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    throw v0

    :catchall_aa
    move-exception v0

    .line 464
    :try_start_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v0
.end method

.method public removeOverridePermissionState(ILjava/lang/String;)V
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-nez v1, :cond_b

    .line 215
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_35

    .line 218
    :cond_b
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_15

    .line 221
    monitor-exit v0

    return-void

    .line 224
    :cond_15
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 227
    iget-object p2, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 229
    :cond_23
    iget-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2e

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 232
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_9

    const/16 p0, 0x14

    .line 233
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    return-void

    .line 232
    :goto_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_9

    throw p0
.end method

.method public removeShellPermissionDelegate()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 179
    :try_start_4
    iput-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePackage:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 181
    iput-boolean v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    .line 182
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    const/16 p0, 0x12

    .line 183
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    return-void

    :catchall_12
    move-exception p0

    .line 182
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setShellPermissionDelegate(ILjava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_3
    iput p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 168
    iput-object p2, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePackage:Ljava/lang/String;

    .line 169
    iput-object p3, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePermissions:[Ljava/lang/String;

    if-nez p3, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 170
    :goto_e
    iput-boolean p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    .line 171
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    const/16 p0, 0x11

    .line 172
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    return-void

    :catchall_17
    move-exception p0

    .line 171
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIILcom/android/internal/util/function/DodecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 32

    move-object/from16 v0, p0

    .line 505
    iget-object v1, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_5
    iget v2, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    move/from16 v3, p3

    if-ne v3, v2, :cond_18

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :catchall_15
    move-exception v0

    goto/16 :goto_96

    :cond_18
    move/from16 v2, p2

    :cond_1a
    const/4 v0, 0x0

    .line 507
    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_15

    if-eqz v0, :cond_65

    .line 510
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 512
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 514
    :try_start_2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "com.android.shell"

    .line 515
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 516
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v6, p1

    move-object/from16 v10, p5

    move-object/from16 v14, p9

    move-object/from16 v5, p13

    .line 514
    invoke-interface/range {v5 .. v17}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_5c
    .catchall {:try_start_2c .. :try_end_5c} :catchall_60

    .line 518
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_60
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    throw v0

    .line 521
    :cond_65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 522
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 523
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v6, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v14, p9

    move-object/from16 v5, p13

    .line 521
    invoke-interface/range {v5 .. v17}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0

    .line 507
    :goto_96
    :try_start_96
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_15

    throw v0
.end method

.method public startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 38

    move-object/from16 v0, p0

    .line 538
    iget-object v1, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 539
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    iget v3, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne v2, v3, :cond_1a

    move/from16 v2, p2

    .line 540
    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :catchall_17
    move-exception v0

    goto/16 :goto_b1

    :cond_1a
    move/from16 v2, p2

    :cond_1c
    const/4 v0, 0x0

    .line 541
    :goto_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_17

    if-eqz v0, :cond_82

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 544
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 546
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 548
    :try_start_32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v16, Landroid/content/AttributionSource;

    const-string v5, "com.android.shell"

    .line 550
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v10

    const/4 v4, -0x1

    const/4 v8, 0x0

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v10}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 553
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 554
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 555
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v14, p1

    move-object/from16 v19, p6

    move-object/from16 v13, p12

    .line 548
    invoke-interface/range {v13 .. v24}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_79
    .catchall {:try_start_32 .. :try_end_79} :catchall_7d

    .line 557
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_7d
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 558
    throw v0

    .line 560
    :cond_82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 561
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 562
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v14, p1

    move-object/from16 v16, p3

    move-object/from16 v19, p6

    move-object/from16 v13, p12

    .line 560
    invoke-interface/range {v13 .. v24}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0

    .line 541
    :goto_b1
    :try_start_b1
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_17

    throw v0
.end method
