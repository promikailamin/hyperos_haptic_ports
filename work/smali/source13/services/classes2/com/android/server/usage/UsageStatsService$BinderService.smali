.class final Lcom/android/server/usage/UsageStatsService$BinderService;
.super Landroid/app/usage/IUsageStatsManager$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 2076
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2134
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2136
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne v2, v0, :cond_15

    .line 2141
    return-void

    .line 2138
    :cond_15
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot query eventsfor package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2126
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2127
    return-void

    .line 2129
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 2130
    return-void
.end method

.method private hasObserverPermission()Z
    .registers 6

    .line 2095
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2096
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetDpmInternal(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    .line 2098
    .local v1, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2f

    if-eqz v1, :cond_1e

    .line 2100
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 2101
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_2f

    .line 2105
    :cond_1e
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.OBSERVE_APP_USAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    return v2

    .line 2103
    :cond_2f
    :goto_2f
    return v2
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2079
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2080
    .local v0, "callingUid":I
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 2081
    return v1

    .line 2083
    :cond_a
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    .line 2085
    .local v2, "mode":I
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_29

    .line 2088
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27

    goto :goto_28

    :cond_27
    move v1, v4

    :goto_28
    return v1

    .line 2091
    :cond_29
    if-nez v2, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v4

    :goto_2d
    return v1
.end method

.method private varargs hasPermissions([Ljava/lang/String;)Z
    .registers 8
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 2110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2111
    .local v0, "callingUid":I
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 2113
    return v1

    .line 2116
    :cond_a
    const/4 v2, 0x1

    .line 2117
    .local v2, "hasPermissions":Z
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2118
    .local v3, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    array-length v5, p1

    if-ge v4, v5, :cond_26

    .line 2119
    if-eqz v2, :cond_21

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_21

    move v5, v1

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    :goto_22
    move v2, v5

    .line 2118
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2122
    .end local v4    # "i":I
    :cond_26
    return v2
.end method

.method private isCallingUidSystem()Z
    .registers 3

    .line 2144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2145
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method public clearBroadcastEvents(Ljava/lang/String;I)V
    .registers 13
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2895
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2897
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string v2, "clearBroadcastEvents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2901
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "clearBroadcastResponseStats"

    move v4, v0

    move v5, p2

    move-object v9, p1

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2904
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->clearBroadcastEvents(II)V

    .line 2905
    return-void
.end method

.method public clearBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 2876
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2877
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_36

    .line 2882
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string v2, "clearBroadcastResponseStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2885
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2886
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "clearBroadcastResponseStats"

    move v4, v0

    move v5, p5

    move-object v9, p4

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p5

    .line 2889
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object v3

    move-object v5, p1

    move-wide v6, p2

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->clearBroadcastResponseStats(ILjava/lang/String;JI)V

    .line 2891
    return-void

    .line 2878
    .end local v0    # "callingUid":I
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id needs to be >=0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2584
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2585
    :cond_f
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/usage/UsageStatsService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2586
    return-void
.end method

.method public forceUsageSourceSettingRead()V
    .registers 2

    .line 2826
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreadUsageSourceSetting(Lcom/android/server/usage/UsageStatsService;)V

    .line 2827
    return-void
.end method

.method public getAppMinStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2508
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2510
    .local v8, "callingUid":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2511
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    .line 2510
    move v2, v8

    move v3, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_74

    move p3, v0

    .line 2515
    nop

    .line 2516
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 2518
    .local v0, "packageUid":I
    if-eq v0, v8, :cond_34

    .line 2519
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_34

    .line 2520
    :cond_2c
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Don\'t have permission to query min app standby bucket"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2524
    :cond_34
    :goto_34
    if-ltz v0, :cond_55

    .line 2529
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, v8, p3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v1

    .line 2531
    .local v1, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2533
    .local v2, "token":J
    :try_start_40
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2534
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 2533
    invoke-interface {v4, p1, v5, p3, v1}, Lcom/android/server/usage/AppStandbyInternal;->getAppMinStandbyBucket(Ljava/lang/String;IIZ)I

    move-result v4
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_50

    .line 2536
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2533
    return v4

    .line 2536
    :catchall_50
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2537
    throw v4

    .line 2525
    .end local v1    # "obfuscateInstantApps":Z
    .end local v2    # "token":J
    :cond_55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get min standby bucket for non existent package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2513
    .end local v0    # "packageUid":I
    :catch_74
    move-exception v0

    .line 2514
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2419
    .local v8, "callingUid":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2420
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    .line 2419
    move v2, v8

    move v3, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_77

    move p3, v0

    .line 2424
    nop

    .line 2425
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 2427
    .local v0, "packageUid":I
    if-eq v0, v8, :cond_34

    .line 2428
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_34

    .line 2429
    :cond_2c
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Don\'t have permission to query app standby bucket"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2433
    :cond_34
    :goto_34
    if-ltz v0, :cond_58

    .line 2437
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, v8, p3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v7

    .line 2439
    .local v7, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2441
    .local v9, "token":J
    :try_start_40
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2441
    move-object v2, p1

    move v3, p3

    move v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v1
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_53

    .line 2444
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2441
    return v1

    .line 2444
    :catchall_53
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2445
    throw v1

    .line 2434
    .end local v7    # "obfuscateInstantApps":Z
    .end local v9    # "token":J
    :cond_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get standby bucket for non existent package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2422
    .end local v0    # "packageUid":I
    :catch_77
    move-exception v0

    .line 2423
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 12
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 2467
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2469
    .local v8, "callingUid":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2470
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    .line 2469
    move v2, v8

    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_48

    move p2, v0

    .line 2474
    nop

    .line 2475
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2479
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2481
    .local v0, "token":J
    :try_start_23
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2482
    invoke-interface {v2, p2}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object v2

    .line 2483
    .local v2, "standbyBucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    if-nez v2, :cond_32

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    goto :goto_37

    .line 2484
    :cond_32
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_3b

    .line 2486
    :goto_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2483
    return-object v3

    .line 2486
    .end local v2    # "standbyBucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2487
    throw v2

    .line 2476
    .end local v0    # "token":J
    :cond_40
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Don\'t have permission to query app standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2472
    :catch_48
    move-exception v0

    .line 2473
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 2910
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    const-string v0, "android.permission.READ_DEVICE_CONFIG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2915
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2913
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have READ_DEVICE_CONFIG permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastTimeAnyComponentUsed(Ljava/lang/String;Ljava/lang/String;)J
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2831
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2834
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2837
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2840
    :try_start_19
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLastTimeComponentUsedGlobal(Lcom/android/server/usage/UsageStatsService;)Ljava/util/Map;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2841
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    div-long/2addr v1, v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    mul-long/2addr v1, v3

    monitor-exit v0

    .line 2840
    return-wide v1

    .line 2842
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_41

    throw v1

    .line 2835
    :cond_44
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Don\'t have permission to query usage stats"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2832
    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have INTERACT_ACROSS_USERS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUsageSource()I
    .registers 3

    .line 2816
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2819
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2820
    :try_start_d
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    monitor-exit v0

    return v1

    .line 2821
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_13

    throw v1

    .line 2817
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;

    .line 2922
    new-instance v0, Lcom/android/server/usage/UsageStatsShellCommand;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {v0, v1}, Lcom/android/server/usage/UsageStatsShellCommand;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    .line 2923
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 2922
    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 2363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2365
    .local v8, "callingUid":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "isAppInactive"

    const/4 v7, 0x0

    move v2, v8

    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_58

    move p2, v0

    .line 2369
    nop

    .line 2372
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 2373
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p3, v2, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 2375
    .local v0, "actualCallingUid":I
    if-eq v0, v8, :cond_2d

    .line 2376
    return v1

    .line 2375
    .end local v0    # "actualCallingUid":I
    :cond_2d
    goto :goto_35

    .line 2378
    :cond_2e
    invoke-direct {p0, p3}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2379
    return v1

    .line 2378
    :cond_35
    :goto_35
    nop

    .line 2381
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0, v8, p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v0

    .line 2383
    .local v0, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2385
    .local v9, "token":J
    :try_start_40
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2385
    move-object v2, p1

    move v3, p2

    move v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleFiltered(Ljava/lang/String;IJZ)Z

    move-result v1
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_53

    .line 2389
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2385
    return v1

    .line 2389
    :catchall_53
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2390
    throw v1

    .line 2367
    .end local v0    # "obfuscateInstantApps":Z
    .end local v9    # "token":J
    :catch_58
    move-exception v0

    .line 2368
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .registers 4

    .line 2576
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BIND_CARRIER_SERVICES"

    const-string/jumbo v2, "onCarrierPrivilegedAppsChanged can only be called by privileged apps."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->clearCarrierPrivilegedApps()V

    .line 2580
    return-void
.end method

.method public queryBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)Landroid/app/usage/BroadcastResponseStatsList;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 2852
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2854
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3e

    .line 2858
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string/jumbo v2, "queryBroadcastResponseStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2862
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "queryBroadcastResponseStats"

    move v4, v0

    move v5, p5

    move-object v9, p4

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p5

    .line 2865
    new-instance v1, Landroid/app/usage/BroadcastResponseStatsList;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object v3

    .line 2866
    move-object v5, p1

    move-wide v6, p2

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->queryBroadcastResponseStats(ILjava/lang/String;JI)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/usage/BroadcastResponseStatsList;-><init>(Ljava/util/List;)V

    .line 2865
    return-object v1

    .line 2855
    .end local v0    # "callingUid":I
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id needs to be >=0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 21
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2213
    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_b

    .line 2214
    return-object v3

    .line 2217
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 2218
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2220
    .local v12, "token":J
    :try_start_13
    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2221
    move v5, v11

    move v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 2223
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz v0, :cond_2a

    .line 2224
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2f

    .line 2227
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2224
    return-object v3

    .line 2227
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    :cond_2a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2228
    nop

    .line 2229
    return-object v3

    .line 2227
    :catchall_2f
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2228
    throw v0
.end method

.method public queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 21
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2235
    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_b

    .line 2236
    return-object v3

    .line 2239
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 2240
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2242
    .local v12, "token":J
    :try_start_13
    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2243
    move v5, v11

    move v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryEventStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 2245
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    if-eqz v0, :cond_2a

    .line 2246
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2f

    .line 2249
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2246
    return-object v3

    .line 2249
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    :cond_2a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2250
    nop

    .line 2251
    return-object v3

    .line 2249
    :catchall_2f
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2250
    throw v0
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 25
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 2256
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2257
    const/4 v0, 0x0

    return-object v0

    .line 2260
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 2261
    .local v10, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2262
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 2263
    .local v12, "callingPid":I
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0, v11, v10}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v13

    .line 2266
    .local v13, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2268
    .local v14, "token":J
    :try_start_22
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0, v10, v2, v12, v11}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldHideShortcutInvocationEvents(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;II)Z

    move-result v0

    .line 2270
    .local v0, "hideShortcutInvocationEvents":Z
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3, v12, v11}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldHideLocusIdEvents(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v3

    move/from16 v16, v3

    .line 2271
    .local v16, "hideLocusIdEvents":Z
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3, v12, v11}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateNotificationEvents(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v3

    move/from16 v17, v3

    .line 2273
    .local v17, "obfuscateNotificationEvents":Z
    const/4 v3, 0x0

    .line 2274
    .local v3, "flags":I
    if-eqz v13, :cond_3d

    or-int/lit8 v3, v3, 0x1

    .line 2275
    :cond_3d
    if-eqz v0, :cond_41

    or-int/lit8 v3, v3, 0x2

    .line 2276
    :cond_41
    if-eqz v16, :cond_45

    or-int/lit8 v3, v3, 0x8

    .line 2277
    :cond_45
    if-eqz v17, :cond_49

    or-int/lit8 v3, v3, 0x4

    :cond_49
    move/from16 v18, v3

    .line 2278
    .end local v3    # "flags":I
    .local v18, "flags":I
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v4, v10

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, v18

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object v3
    :try_end_58
    .catchall {:try_start_22 .. :try_end_58} :catchall_5c

    .line 2280
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2278
    return-object v3

    .line 2280
    .end local v0    # "hideShortcutInvocationEvents":Z
    .end local v16    # "hideLocusIdEvents":Z
    .end local v17    # "obfuscateNotificationEvents":Z
    .end local v18    # "flags":I
    :catchall_5c
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2281
    throw v0
.end method

.method public queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 22
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 2287
    move-object/from16 v1, p0

    move-object/from16 v10, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2288
    .local v11, "callingUid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 2290
    .local v12, "callingUserId":I
    invoke-direct {v1, v10}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 2291
    invoke-direct {v1, v10}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v13

    .line 2293
    .local v13, "includeTaskRoot":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2295
    .local v14, "token":J
    :try_start_17
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, v12

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move v9, v13

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_29

    .line 2298
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2295
    return-object v0

    .line 2298
    :catchall_29
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2299
    throw v0
.end method

.method public queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 23
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "userId"    # I
    .param p6, "pkg"    # Ljava/lang/String;
    .param p7, "callingPackage"    # Ljava/lang/String;

    .line 2342
    move-object v1, p0

    move-object/from16 v2, p7

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2343
    const/4 v0, 0x0

    return-object v0

    .line 2345
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move/from16 v11, p5

    if-eq v11, v0, :cond_20

    .line 2346
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v4, "No permission to query usage stats for this user"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    :cond_20
    move-object/from16 v12, p6

    invoke-direct {p0, v12}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 2352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2354
    .local v13, "token":J
    :try_start_29
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v10, 0x1

    move/from16 v4, p5

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_3c

    .line 2357
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2354
    return-object v0

    .line 2357
    :catchall_3c
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2358
    throw v0
.end method

.method public queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 27
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "userId"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;

    .line 2305
    move-object/from16 v1, p0

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct {v1, v10}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2306
    const/4 v0, 0x0

    return-object v0

    .line 2309
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 2310
    .local v11, "callingUserId":I
    if-eq v9, v11, :cond_21

    .line 2311
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "No permission to query usage stats for this user"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    :cond_21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2317
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 2318
    .local v13, "callingPid":I
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0, v12, v11}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v14

    .line 2321
    .local v14, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 2323
    .local v15, "token":J
    :try_start_33
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0, v9, v10, v13, v12}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldHideShortcutInvocationEvents(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;II)Z

    move-result v0

    .line 2325
    .local v0, "hideShortcutInvocationEvents":Z
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2, v13, v12}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateNotificationEvents(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v2

    move/from16 v17, v2

    .line 2327
    .local v17, "obfuscateNotificationEvents":Z
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2, v13, v12}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldHideLocusIdEvents(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v2

    move/from16 v18, v2

    .line 2328
    .local v18, "hideLocusIdEvents":Z
    const/4 v2, 0x0

    .line 2329
    .local v2, "flags":I
    if-eqz v14, :cond_4e

    or-int/lit8 v2, v2, 0x1

    .line 2330
    :cond_4e
    if-eqz v0, :cond_52

    or-int/lit8 v2, v2, 0x2

    .line 2331
    :cond_52
    if-eqz v18, :cond_56

    or-int/lit8 v2, v2, 0x8

    .line 2332
    :cond_56
    if-eqz v17, :cond_5a

    or-int/lit8 v2, v2, 0x4

    :cond_5a
    move/from16 v19, v2

    .line 2333
    .end local v2    # "flags":I
    .local v19, "flags":I
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move/from16 v3, p5

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, v19

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object v2
    :try_end_6a
    .catchall {:try_start_33 .. :try_end_6a} :catchall_6e

    .line 2335
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2333
    return-object v2

    .line 2335
    .end local v0    # "hideShortcutInvocationEvents":Z
    .end local v17    # "obfuscateNotificationEvents":Z
    .end local v18    # "hideLocusIdEvents":Z
    .end local v19    # "flags":I
    :catchall_6e
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2336
    throw v0
.end method

.method public queryUsageStats(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 28
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 2151
    move-object/from16 v1, p0

    move-object/from16 v9, p6

    invoke-direct {v1, v9}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_c

    .line 2152
    return-object v10

    .line 2155
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2156
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string/jumbo v7, "queryUsageStats"

    move v3, v11

    move/from16 v4, p7

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2160
    .end local p7    # "userId":I
    .local v2, "userId":I
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2161
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2160
    invoke-static {v0, v11, v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v3

    .line 2163
    .local v3, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2165
    .local v4, "token":J
    :try_start_30
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v13, v2

    move/from16 v14, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    move/from16 v19, v3

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    .line 2167
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v0, :cond_4a

    .line 2168
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_4f

    .line 2171
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2168
    return-object v6

    .line 2171
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_4a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2172
    nop

    .line 2173
    return-object v10

    .line 2171
    :catchall_4f
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2172
    throw v0
.end method

.method public queryUsageStatsAsUser(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 25
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 2182
    move-object/from16 v1, p0

    move/from16 v10, p7

    if-ltz v10, :cond_59

    .line 2185
    move-object/from16 v11, p6

    invoke-direct {v1, v11}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_10

    .line 2186
    return-object v12

    .line 2189
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 2190
    .local v13, "callingUid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v10, v0, :cond_27

    .line 2191
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "get usagestats"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    :cond_27
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2196
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2195
    invoke-static {v0, v13, v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v14

    .line 2197
    .local v14, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 2199
    .local v15, "token":J
    :try_start_35
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move/from16 v3, p7

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    .line 2201
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v0, :cond_4f

    .line 2202
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_54

    .line 2205
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2202
    return-object v2

    .line 2205
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_4f
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2206
    nop

    .line 2207
    return-object v12

    .line 2205
    :catchall_54
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2206
    throw v0

    .line 2183
    .end local v13    # "callingUid":I
    .end local v14    # "obfuscateInstantApps":Z
    .end local v15    # "token":J
    :cond_59
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 27
    .param p1, "observerId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "timeLimitMs"    # J
    .param p5, "timeUsedMs"    # J
    .param p7, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p8, "callingPackage"    # Ljava/lang/String;

    .line 2704
    move-object/from16 v1, p0

    move-object/from16 v12, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 2705
    .local v13, "callingUid":I
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetDpmInternal(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v14

    .line 2706
    .local v14, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    const-string v0, "android.permission.SUSPEND_APPS"

    const-string v2, "android.permission.OBSERVE_APP_USAGE"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    if-eqz v14, :cond_25

    .line 2708
    invoke-virtual {v14, v13}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveSupervisionApp(I)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2d

    .line 2709
    :cond_25
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Caller must be the active supervision app or it must have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2713
    :cond_2d
    :goto_2d
    if-eqz v12, :cond_64

    array-length v0, v12

    if-eqz v0, :cond_64

    .line 2716
    if-nez p7, :cond_41

    cmp-long v0, p5, p3

    if-ltz v0, :cond_39

    goto :goto_41

    .line 2717
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "callbackIntent can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2719
    :cond_41
    :goto_41
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 2720
    .local v15, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2722
    .local v16, "token":J
    :try_start_49
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, v13

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move v11, v15

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_5f

    .line 2725
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2726
    nop

    .line 2727
    return-void

    .line 2725
    :catchall_5f
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2726
    throw v0

    .line 2714
    .end local v15    # "userId":I
    .end local v16    # "token":J
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify at least one package"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 22
    .param p1, "observerId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "timeLimitMs"    # J
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p6, "callingPackage"    # Ljava/lang/String;

    .line 2619
    move-object/from16 v9, p2

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2623
    if-eqz v9, :cond_3e

    array-length v0, v9

    if-eqz v0, :cond_3e

    .line 2626
    if-eqz p5, :cond_35

    .line 2629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2630
    .local v10, "callingUid":I
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2631
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2633
    .local v12, "token":J
    move-object v14, p0

    :try_start_1c
    iget-object v1, v14, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v2, v10

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_30

    .line 2636
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2637
    nop

    .line 2638
    return-void

    .line 2636
    :catchall_30
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2637
    throw v0

    .line 2627
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .end local v12    # "token":J
    :cond_35
    move-object v14, p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2623
    :cond_3e
    move-object v14, p0

    .line 2624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2620
    :cond_47
    move-object v14, p0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 27
    .param p1, "sessionObserverId"    # I
    .param p2, "observed"    # [Ljava/lang/String;
    .param p3, "timeLimitMs"    # J
    .param p5, "sessionThresholdTimeMs"    # J
    .param p7, "limitReachedCallbackIntent"    # Landroid/app/PendingIntent;
    .param p8, "sessionEndCallbackIntent"    # Landroid/app/PendingIntent;
    .param p9, "callingPackage"    # Ljava/lang/String;

    .line 2661
    move-object/from16 v12, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2665
    if-eqz v12, :cond_42

    array-length v0, v12

    if-eqz v0, :cond_42

    .line 2668
    if-eqz p7, :cond_3a

    .line 2671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 2672
    .local v13, "callingUid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 2673
    .local v14, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 2675
    .local v15, "token":J
    move-object/from16 v11, p0

    :try_start_1d
    iget-object v1, v11, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v2, v13

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move v11, v14

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/usage/UsageStatsService;->registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_35

    .line 2679
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2680
    nop

    .line 2681
    return-void

    .line 2679
    :catchall_35
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2680
    throw v0

    .line 2669
    .end local v13    # "callingUid":I
    .end local v14    # "userId":I
    .end local v15    # "token":J
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "limitReachedCallbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2666
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one observed entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2662
    :cond_4a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "annotations"    # [Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;

    .line 2591
    if-nez p1, :cond_a

    .line 2592
    const-string v0, "UsageStatsService"

    const-string v1, "Event report user selecting a null package"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    return-void

    .line 2596
    :cond_a
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2597
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2598
    iput-object p5, v0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 2599
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 2600
    iput-object p4, v0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 2601
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    .line 2602
    return-void
.end method

.method public reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V
    .registers 14
    .param p1, "activity"    # Landroid/os/IBinder;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "timeAgoMs"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 2759
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2760
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2761
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2764
    .local v2, "binderToken":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_76

    .line 2765
    :try_start_11
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 2766
    .local v5, "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v5, :cond_32

    .line 2767
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move-object v5, v6

    .line 2768
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2770
    :cond_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_73

    .line 2772
    :try_start_33
    monitor-enter v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_76

    .line 2773
    :try_start_34
    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 2777
    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_70

    .line 2779
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6, p5, p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mbuildFullToken(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1, p3, p4}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_76

    .line 2782
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2783
    nop

    .line 2784
    return-void

    .line 2774
    .restart local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4d
    :try_start_4d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is already reported as started for this activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "timeAgoMs":J
    .end local p5    # "callingPackage":Ljava/lang/String;
    throw v4

    .line 2777
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "timeAgoMs":J
    .restart local p5    # "callingPackage":Ljava/lang/String;
    :catchall_70
    move-exception v4

    monitor-exit v5
    :try_end_72
    .catchall {:try_start_4d .. :try_end_72} :catchall_70

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "timeAgoMs":J
    .end local p5    # "callingPackage":Ljava/lang/String;
    :try_start_72
    throw v4
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_76

    .line 2770
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "timeAgoMs":J
    .restart local p5    # "callingPackage":Ljava/lang/String;
    :catchall_73
    move-exception v5

    :try_start_74
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "timeAgoMs":J
    .end local p5    # "callingPackage":Ljava/lang/String;
    :try_start_75
    throw v5
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    .line 2782
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "timeAgoMs":J
    .restart local p5    # "callingPackage":Ljava/lang/String;
    :catchall_76
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2783
    throw v4
.end method

.method public reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "activity"    # Landroid/os/IBinder;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 2752
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService$BinderService;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V

    .line 2753
    return-void
.end method

.method public reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "activity"    # Landroid/os/IBinder;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 2788
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2789
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2790
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2793
    .local v2, "binderToken":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_88

    .line 2794
    :try_start_11
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 2795
    .local v5, "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_62

    .line 2800
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_85

    .line 2802
    :try_start_22
    monitor-enter v5
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_88

    .line 2803
    :try_start_23
    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2807
    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_5f

    .line 2808
    :try_start_2a
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6, p3, p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mbuildFullToken(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_88

    .line 2810
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2811
    nop

    .line 2812
    return-void

    .line 2804
    .restart local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3c
    :try_start_3c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is already reported as stopped for this activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v4

    .line 2807
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_5f
    move-exception v4

    monitor-exit v5
    :try_end_61
    .catchall {:try_start_3c .. :try_end_61} :catchall_5f

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_61
    throw v4
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_88

    .line 2796
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_62
    :try_start_62
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown reporter trying to stop token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v6

    .line 2800
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_85
    move-exception v5

    monitor-exit v4
    :try_end_87
    .catchall {:try_start_62 .. :try_end_87} :catchall_85

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_87
    throw v5
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    .line 2810
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_88
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2811
    throw v4
.end method

.method public reportUserInteraction(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2606
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2607
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2610
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/4 v1, 0x7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2611
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2612
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    .line 2613
    return-void

    .line 2608
    .end local v0    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system is allowed to call reportUserInteraction"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppInactive(Ljava/lang/String;ZI)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .line 2395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2397
    .local v8, "callingUid":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2398
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setAppInactive"

    const/4 v7, 0x0

    .line 2397
    move v2, v8

    move v3, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_4a

    move p3, v0

    .line 2402
    nop

    .line 2403
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v2, "No permission to change app idle state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2407
    .local v0, "token":J
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppId(Ljava/lang/String;)I

    move-result v2
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_45

    .line 2408
    .local v2, "appId":I
    if-gez v2, :cond_39

    .line 2411
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2408
    return-void

    .line 2409
    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->setAppIdleAsync(Ljava/lang/String;ZI)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_45

    .line 2411
    .end local v2    # "appId":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2412
    nop

    .line 2413
    return-void

    .line 2411
    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2412
    throw v2

    .line 2400
    .end local v0    # "token":J
    :catch_4a
    move-exception v0

    .line 2401
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAppStandbyBucket(Ljava/lang/String;II)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .param p3, "userId"    # I

    .line 2450
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v2, "No permission to change app standby state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2454
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2455
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2457
    .local v9, "token":J
    :try_start_19
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, v0

    move v8, v1

    invoke-interface/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucket(Ljava/lang/String;IIII)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_2a

    .line 2460
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2461
    nop

    .line 2462
    return-void

    .line 2460
    :catchall_2a
    move-exception v2

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2461
    throw v2
.end method

.method public setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    .registers 9
    .param p1, "appBuckets"    # Landroid/content/pm/ParceledListSlice;
    .param p2, "userId"    # I

    .line 2492
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v2, "No permission to change app standby state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2496
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2497
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2499
    .local v2, "token":J
    :try_start_19
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5, p2, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBuckets(Ljava/util/List;III)V
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_29

    .line 2502
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2503
    nop

    .line 2504
    return-void

    .line 2502
    :catchall_29
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2503
    throw v4
.end method

.method public setEstimatedLaunchTime(Ljava/lang/String;JI)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "estimatedLaunchTime"    # J
    .param p4, "userId"    # I

    .line 2543
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_LAUNCH_TIME_ESTIMATE"

    const-string v2, "No permission to change app launch estimates"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2549
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2550
    invoke-static {v2, p4, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$msetEstimatedLaunchTime(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;J)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 2552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2553
    nop

    .line 2554
    return-void

    .line 2552
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2553
    throw v2
.end method

.method public setEstimatedLaunchTimes(Landroid/content/pm/ParceledListSlice;I)V
    .registers 7
    .param p1, "estimatedLaunchTimes"    # Landroid/content/pm/ParceledListSlice;
    .param p2, "userId"    # I

    .line 2558
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_LAUNCH_TIME_ESTIMATE"

    const-string v2, "No permission to change app launch estimates"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2564
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2565
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$msetEstimatedLaunchTimes(Lcom/android/server/usage/UsageStatsService;ILjava/util/List;)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1f

    .line 2567
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2568
    nop

    .line 2569
    return-void

    .line 2567
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2568
    throw v2
.end method

.method public unregisterAppUsageLimitObserver(ILjava/lang/String;)V
    .registers 9
    .param p1, "observerId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2732
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetDpmInternal(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    .line 2733
    .local v1, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    const-string v2, "android.permission.SUSPEND_APPS"

    const-string v3, "android.permission.OBSERVE_APP_USAGE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    if-eqz v1, :cond_21

    .line 2735
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveSupervisionApp(I)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_29

    .line 2736
    :cond_21
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller must be the active supervision app or it must have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2740
    :cond_29
    :goto_29
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2741
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2743
    .local v3, "token":J
    :try_start_31
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v5, v0, p1, v2}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageLimitObserver(III)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3b

    .line 2746
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2747
    nop

    .line 2748
    return-void

    .line 2746
    :catchall_3b
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2747
    throw v5
.end method

.method public unregisterAppUsageObserver(ILjava/lang/String;)V
    .registers 8
    .param p1, "observerId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2642
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2647
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2648
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2650
    .local v2, "token":J
    :try_start_12
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageObserver(III)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 2652
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2653
    nop

    .line 2654
    return-void

    .line 2652
    :catchall_1c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2653
    throw v4

    .line 2643
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "token":J
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterUsageSessionObserver(ILjava/lang/String;)V
    .registers 8
    .param p1, "sessionObserverId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2685
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2689
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2690
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2691
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2693
    .local v2, "token":J
    :try_start_12
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->unregisterUsageSessionObserver(III)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 2696
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2697
    nop

    .line 2698
    return-void

    .line 2696
    :catchall_1c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2697
    throw v4

    .line 2686
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "token":J
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
