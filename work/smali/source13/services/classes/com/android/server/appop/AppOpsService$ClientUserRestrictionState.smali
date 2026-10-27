.class final Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientUserRestrictionState"
.end annotation


# instance fields
.field perUserExcludedPackageTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PackageTagsList;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7431
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7432
    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 7433
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    .line 7434
    return-void
.end method

.method private isDefault([Z)Z
    .registers 7
    .param p1, "array"    # [Z

    .line 7574
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 7575
    return v1

    .line 7577
    :cond_8
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_15

    aget-boolean v4, p1, v3

    .line 7578
    .local v4, "value":Z
    if-eqz v4, :cond_12

    .line 7579
    return v2

    .line 7577
    .end local v4    # "value":Z
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 7582
    :cond_15
    return v1
.end method


# virtual methods
.method public binderDied()V
    .registers 10

    .line 7549
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 7550
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpUserRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7551
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_14

    .line 7552
    monitor-exit v0

    return-void

    .line 7554
    :cond_14
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 7555
    .local v1, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_3e

    .line 7556
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    .line 7557
    .local v3, "restrictions":[Z
    array-length v4, v3

    .line 7558
    .local v4, "restrictionCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_25
    if-ge v5, v4, :cond_3b

    .line 7559
    aget-boolean v6, v3, v5

    if-eqz v6, :cond_38

    .line 7560
    move v6, v5

    .line 7561
    .local v6, "changedCode":I
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v6}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7558
    .end local v6    # "changedCode":I
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 7555
    .end local v3    # "restrictions":[Z
    .end local v4    # "restrictionCount":I
    .end local v5    # "j":I
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 7565
    .end local v2    # "i":I
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->destroy()V

    .line 7566
    .end local v1    # "userCount":I
    monitor-exit v0

    .line 7567
    return-void

    .line 7566
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public destroy()V
    .registers 3

    .line 7570
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 7571
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;Ljava/lang/String;IZ)Z
    .registers 10
    .param p1, "restriction"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "isCheckOp"    # Z

    .line 7504
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 7505
    return v1

    .line 7507
    :cond_6
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 7508
    .local v0, "restrictions":[Z
    if-nez v0, :cond_f

    .line 7509
    return v1

    .line 7511
    :cond_f
    aget-boolean v2, v0, p1

    if-nez v2, :cond_14

    .line 7512
    return v1

    .line 7514
    :cond_14
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    const/4 v2, 0x1

    if-nez v1, :cond_1a

    .line 7515
    return v2

    .line 7517
    :cond_1a
    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PackageTagsList;

    .line 7518
    .local v1, "perUserExclusions":Landroid/os/PackageTagsList;
    if-nez v1, :cond_23

    .line 7519
    return v2

    .line 7522
    :cond_23
    if-eqz p5, :cond_2b

    .line 7523
    invoke-virtual {v1, p2}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2

    .line 7525
    :cond_2b
    invoke-virtual {v1, p2, p3}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public isDefault()Z
    .registers 2

    .line 7544
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method synthetic lambda$binderDied$0$com-android-server-appop-AppOpsService$ClientUserRestrictionState(I)V
    .registers 4
    .param p1, "changedCode"    # I

    .line 7561
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnotifyWatchersOfChange(Lcom/android/server/appop/AppOpsService;II)V

    return-void
.end method

.method public removeUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 7529
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 7530
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7531
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_12

    .line 7532
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    .line 7535
    :cond_12
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_23

    .line 7536
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7537
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_23

    .line 7538
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 7541
    :cond_23
    return-void
.end method

.method public setRestriction(IZLandroid/os/PackageTagsList;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "excludedPackageTags"    # Landroid/os/PackageTagsList;
    .param p4, "userId"    # I

    .line 7438
    const/4 v0, 0x0

    .line 7440
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    if-eqz p2, :cond_e

    .line 7441
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 7445
    :cond_e
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p4, v1, :cond_3a

    .line 7448
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 7450
    .local v1, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 7451
    .local v4, "users":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_39

    .line 7452
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    aput v6, v4, v5

    .line 7451
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 7454
    .end local v1    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "i":I
    :cond_39
    goto :goto_3f

    .line 7455
    .end local v4    # "users":[I
    :cond_3a
    new-array v1, v3, [I

    aput p4, v1, v2

    move-object v4, v1

    .line 7458
    .restart local v4    # "users":[I
    :goto_3f
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v1, :cond_ac

    .line 7459
    array-length v1, v4

    .line 7461
    .local v1, "numUsers":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_45
    if-ge v5, v1, :cond_ac

    .line 7462
    aget v6, v4, v5

    .line 7464
    .local v6, "thisUserId":I
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Z

    .line 7465
    .local v7, "userRestrictions":[Z
    if-nez v7, :cond_5e

    if-eqz p2, :cond_5e

    .line 7466
    const/16 v8, 0x79

    new-array v7, v8, [Z

    .line 7467
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7469
    :cond_5e
    if-eqz v7, :cond_75

    aget-boolean v8, v7, p1

    if-eq v8, p2, :cond_75

    .line 7470
    aput-boolean p2, v7, p1

    .line 7471
    if-nez p2, :cond_74

    invoke-direct {p0, v7}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->isDefault([Z)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 7472
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 7473
    const/4 v7, 0x0

    .line 7475
    :cond_74
    const/4 v0, 0x1

    .line 7478
    :cond_75
    if-eqz v7, :cond_a9

    .line 7479
    if-eqz p3, :cond_82

    .line 7480
    invoke-virtual {p3}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_80

    goto :goto_82

    :cond_80
    move v8, v2

    goto :goto_83

    :cond_82
    :goto_82
    move v8, v3

    .line 7481
    .local v8, "noExcludedPackages":Z
    :goto_83
    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    if-nez v9, :cond_90

    if-nez v8, :cond_90

    .line 7482
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    .line 7484
    :cond_90
    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    if-eqz v9, :cond_a9

    .line 7485
    if-eqz v8, :cond_a5

    .line 7486
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 7487
    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_a8

    .line 7488
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    goto :goto_a8

    .line 7491
    :cond_a5
    invoke-virtual {v9, v6, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7493
    :cond_a8
    :goto_a8
    const/4 v0, 0x1

    .line 7461
    .end local v6    # "thisUserId":I
    .end local v7    # "userRestrictions":[Z
    .end local v8    # "noExcludedPackages":Z
    :cond_a9
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 7499
    .end local v1    # "numUsers":I
    .end local v5    # "i":I
    :cond_ac
    return v0
.end method
