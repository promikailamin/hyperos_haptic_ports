.class public final Lcom/android/server/usage/UsageStatsService$BinderService;
.super Landroid/app/usage/IUsageStatsManager$Stub;
.source "UsageStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public static synthetic $r8$lambda$KcrJYyWcmAOKG3NFhWUYPCQlNFI(Lcom/android/server/usage/UsageStatsService$BinderService;IIZLandroid/app/usage/AppStandbyInfo;)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService$BinderService;->lambda$getAppStandbyBuckets$0(IIZLandroid/app/usage/AppStandbyInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 2233
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public final canReportUsageStats()Z
    .registers 3

    .line 2252
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->isCallingUidSystem()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 2257
    :cond_8
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.REPORT_USAGE_STATS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_17

    return v1

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 6

    .line 2300
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2301
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2303
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, v0, :cond_15

    return-void

    .line 2305
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot query eventsfor package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3

    .line 2293
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2296
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public clearBroadcastEvents(Ljava/lang/String;I)V
    .registers 13

    .line 3125
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3127
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string v2, "clearBroadcastEvents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3131
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v7, 0x0

    const-string v8, "clearBroadcastResponseStats"

    const/4 v6, 0x0

    move-object v9, p1

    move v5, p2

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 3134
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->clearBroadcastEvents(II)V

    return-void
.end method

.method public clearBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)V
    .registers 16

    .line 3106
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_35

    .line 3112
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string v2, "clearBroadcastResponseStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3116
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v7, 0x0

    const-string v8, "clearBroadcastResponseStats"

    const/4 v6, 0x0

    move-object v9, p4

    move v5, p5

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p5

    .line 3119
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    move-wide p3, p2

    move-object p2, p1

    move p1, v4

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->clearBroadcastResponseStats(ILjava/lang/String;JI)V

    return-void

    .line 3108
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id needs to be >=0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 2777
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "UsageStatsService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 2778
    :cond_f
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/usage/UsageStatsService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public forceUsageSourceSettingRead()V
    .registers 1

    .line 3056
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreadUsageSourceSetting(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method

.method public getAppMinStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12

    .line 2700
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2702
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2703
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p3

    .line 2702
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_7a

    .line 2708
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, p1, v3, v4, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-eq v0, v2, :cond_31

    .line 2711
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_29

    goto :goto_31

    .line 2712
    :cond_29
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Don\'t have permission to query min app standby bucket"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2716
    :cond_31
    :goto_31
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p2, p1, p3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$misInstantApp(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;I)Z

    move-result p2

    .line 2717
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, v2, p3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v1

    if-ltz v0, :cond_5e

    if-eqz p2, :cond_43

    if-nez v1, :cond_5e

    .line 2724
    :cond_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2726
    :try_start_47
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2727
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2726
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/server/usage/AppStandbyInternal;->getAppMinStandbyBucket(Ljava/lang/String;IIZ)I

    move-result p0
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_58

    .line 2729
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_58
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2730
    throw p0

    .line 2720
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot get min standby bucket for non existent package ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_7a
    move-exception v0

    move-object p0, v0

    .line 2706
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 14

    .line 2598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2600
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 2601
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v8, "getAppStandbyBucket"

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p3

    .line 2600
    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_81

    .line 2606
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, p1, v5, v6, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    if-ne v3, v4, :cond_24

    const/4 v5, 0x1

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    :goto_25
    if-nez v5, :cond_36

    .line 2609
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    goto :goto_36

    .line 2610
    :cond_2e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Don\'t have permission to query app standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2613
    :cond_36
    :goto_36
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6, p1, v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$misInstantApp(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;I)Z

    move-result v6

    .line 2614
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v7, v4, v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v4

    if-ltz v3, :cond_65

    if-nez v5, :cond_4a

    if-eqz v6, :cond_4a

    if-nez v4, :cond_65

    .line 2620
    :cond_4a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2622
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2623
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v1, p1

    .line 2622
    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v0
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_60

    .line 2625
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_60
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2626
    throw v0

    .line 2617
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get standby bucket for non existent package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_81
    move-exception v0

    .line 2604
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11

    .line 2649
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2651
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2652
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p2

    .line 2651
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_58

    .line 2657
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 2661
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p1, v2, p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result p1

    .line 2663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2665
    :try_start_26
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2666
    invoke-interface {v0, p2}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 2668
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_38

    .line 2677
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_38
    move-exception v0

    move-object p0, v0

    goto :goto_4c

    .line 2671
    :cond_3b
    :try_start_3b
    new-instance v1, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/UsageStatsService$BinderService;IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2675
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_38

    .line 2677
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_4c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2678
    throw p0

    .line 2658
    :cond_50
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Don\'t have permission to query app standby bucket"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_58
    move-exception v0

    move-object p0, v0

    .line 2655
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3152
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3154
    const-string v0, "android.permission.READ_DEVICE_CONFIG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3157
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3155
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller doesn\'t have READ_DEVICE_CONFIG permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLastTimeAnyComponentUsed(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8

    .line 3061
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3064
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 3067
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3070
    :try_start_19
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLastTimeComponentUsedGlobal(Lcom/android/server/usage/UsageStatsService;)Ljava/util/Map;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 3071
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    div-long/2addr p0, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    mul-long/2addr p0, v0

    monitor-exit p2

    return-wide p0

    :catchall_3f
    move-exception p0

    .line 3072
    monitor-exit p2
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_3f

    throw p0

    .line 3065
    :cond_42
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Don\'t have permission to query usage stats"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3062
    :cond_4a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller doesn\'t have INTERACT_ACROSS_USERS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUsageSource()I
    .registers 2

    .line 3046
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3049
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3050
    :try_start_d
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 3051
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_13

    throw p0

    .line 3047
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    .line 3164
    new-instance v0, Lcom/android/server/usage/UsageStatsShellCommand;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {v0, v1}, Lcom/android/server/usage/UsageStatsShellCommand;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    .line 3165
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 3164
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final hasObserverPermission()Z
    .registers 5

    .line 2262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2263
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetDpmInternal(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2f

    if-eqz v1, :cond_1e

    .line 2267
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2268
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2f

    .line 2272
    :cond_1e
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.OBSERVE_APP_USAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2d

    return v3

    :cond_2d
    const/4 p0, 0x0

    return p0

    :cond_2f
    :goto_2f
    return v3
.end method

.method public final varargs hasPermissions([Ljava/lang/String;)Z
    .registers 7

    .line 2277
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    return v2

    .line 2284
    :cond_a
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v3, v2

    .line 2285
    :goto_13
    array-length v4, p1

    if-ge v1, v4, :cond_26

    if-eqz v3, :cond_22

    .line 2286
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    move v3, v0

    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_26
    return v3
.end method

.method public final hasQueryPermission(Ljava/lang/String;)Z
    .registers 6

    .line 2236
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    return v2

    .line 2240
    :cond_a
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2b

    invoke-virtual {v1, v3, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_28

    .line 2245
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_27

    return v2

    :cond_27
    return v1

    :cond_28
    if-nez p1, :cond_2b

    return v2

    :cond_2b
    return v1
.end method

.method public isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 2544
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2546
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v8, "isAppInactive"

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v5, p2

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v12
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_57

    move-object/from16 v11, p1

    .line 2553
    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    .line 2554
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v1, v5, v6, v12}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-eq v1, v4, :cond_38

    return v3

    .line 2559
    :cond_31
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    return v3

    .line 2562
    :cond_38
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, v4, v12}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v15

    .line 2564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2566
    :try_start_42
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 2566
    invoke-interface/range {v10 .. v15}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleFiltered(Ljava/lang/String;IJZ)Z

    move-result v0
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_52

    .line 2570
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_52
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2571
    throw v0

    :catch_57
    move-exception v0

    .line 2549
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isAppStandbyEnabled()Z
    .registers 1

    .line 2539
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result p0

    return p0
.end method

.method public final isCallingUidSystem()Z
    .registers 2

    .line 2311
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isPackageExemptedFromBroadcastResponseStats(Ljava/lang/String;I)Z
    .registers 6

    .line 3140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3142
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    const-string v2, "isPackageExemptedFromBroadcastResponseStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    .line 3146
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 3145
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->isPackageExemptedFromBroadcastResponseStats(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getAppStandbyBuckets$0(IIZLandroid/app/usage/AppStandbyInfo;)Z
    .registers 7

    .line 2672
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p4, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$msameApp(Lcom/android/server/usage/UsageStatsService;IILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p4, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 2673
    invoke-static {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$misInstantApp(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_18

    if-eqz p3, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .registers 4

    .line 2769
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BIND_CARRIER_SERVICES"

    const-string/jumbo v2, "onCarrierPrivilegedAppsChanged can only be called by privileged apps."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->clearCarrierPrivilegedApps()V

    return-void
.end method

.method public queryBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)Landroid/app/usage/BroadcastResponseStatsList;
    .registers 16

    .line 3082
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3d

    .line 3088
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string/jumbo v2, "queryBroadcastResponseStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3092
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v7, 0x0

    const-string/jumbo v8, "queryBroadcastResponseStats"

    const/4 v6, 0x0

    move-object v9, p4

    move v5, p5

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p5

    .line 3095
    new-instance v0, Landroid/app/usage/BroadcastResponseStatsList;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    move-wide p3, p2

    move-object p2, p1

    move p1, v4

    .line 3096
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->queryBroadcastResponseStats(ILjava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/app/usage/BroadcastResponseStatsList;-><init>(Ljava/util/List;)V

    return-object v0

    .line 3085
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id needs to be >=0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 18

    move-object/from16 v0, p6

    .line 2399
    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 2403
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2406
    :try_start_12
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    .line 2407
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 2410
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_26

    .line 2413
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_2d

    :cond_29
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :goto_2d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2414
    throw p0
.end method

.method public queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 18

    move-object/from16 v0, p6

    .line 2421
    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 2425
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2428
    :try_start_12
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    .line 2429
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsService;->queryEventStats(IIJJ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 2432
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_26

    .line 2435
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_2d

    :cond_29
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :goto_2d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2436
    throw p0
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 15

    .line 2442
    invoke-virtual {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2446
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/UsageStatsService$BinderService;->queryEventsHelper(IJJLjava/lang/String;[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    move-result-object p0

    return-object p0
.end method

.method public queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 16

    .line 2481
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2482
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2484
    invoke-virtual {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 2485
    invoke-virtual {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result v7

    .line 2487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2489
    :try_start_13
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_20

    .line 2492
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_20
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2493
    throw v0
.end method

.method public queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 13

    .line 2518
    invoke-virtual {p0, p7}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2521
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p7

    if-eq p5, p7, :cond_1b

    .line 2522
    iget-object p7, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p7}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p7

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v1, "No permission to query usage stats for this user"

    invoke-virtual {p7, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    :cond_1b
    invoke-virtual {p0, p6}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 2528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2530
    :try_start_22
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 p7, 0x1

    move-wide v3, p1

    move p1, p5

    move-wide p4, p3

    move-wide p2, v3

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object p0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_31

    .line 2533
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_31
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2534
    throw p0
.end method

.method public queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 16

    .line 2499
    invoke-virtual {p0, p6}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 2503
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p5, v1, :cond_1b

    .line 2505
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v4, "No permission to query usage stats for this user"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    :cond_1b
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v1, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/UsageStatsService$BinderService;->queryEventsHelper(IJJLjava/lang/String;[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    return-object v0
.end method

.method public final queryEventsHelper(IJJLjava/lang/String;[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;
    .registers 16

    .line 2317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2318
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2319
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2320
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2319
    invoke-static {v2, v0, v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v2

    .line 2322
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2324
    :try_start_16
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5, p1, p6, v1, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldHideShortcutInvocationEvents(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;II)Z

    move-result p6

    .line 2326
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5, v1, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldHideLocusIdEvents(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v5

    .line 2327
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6, v1, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateNotificationEvents(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v0

    if-eqz p6, :cond_2c

    or-int/lit8 v2, v2, 0x2

    :cond_2c
    if-eqz v5, :cond_30

    or-int/lit8 v2, v2, 0x8

    :cond_30
    if-eqz v0, :cond_34

    or-int/lit8 v2, v2, 0x4

    :cond_34
    move p6, v2

    .line 2335
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/usage/UsageStatsService;->queryEventsWithQueryFilters(IJJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    move-result-object p0
    :try_end_3b
    .catchall {:try_start_16 .. :try_end_3b} :catchall_3f

    .line 2338
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3f
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2339
    throw p0
.end method

.method public queryEventsWithFilter(Landroid/app/usage/UsageEventsQuery;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 15

    .line 2454
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 2461
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2462
    invoke-virtual {p1}, Landroid/app/usage/UsageEventsQuery;->getUserId()I

    move-result v1

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_1c

    move v4, v0

    goto :goto_1d

    :cond_1c
    move v4, v1

    :goto_1d
    if-eq v4, v0, :cond_3b

    .line 2468
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No permission to query usage stats for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    :cond_3b
    invoke-virtual {p1}, Landroid/app/usage/UsageEventsQuery;->getBeginTimeMillis()J

    move-result-wide v5

    .line 2474
    invoke-virtual {p1}, Landroid/app/usage/UsageEventsQuery;->getEndTimeMillis()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/app/usage/UsageEventsQuery;->getEventTypes()[I

    move-result-object v10

    new-instance v11, Landroid/util/ArraySet;

    .line 2475
    invoke-virtual {p1}, Landroid/app/usage/UsageEventsQuery;->getPackageNames()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v11, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v3, p0

    move-object v9, p2

    .line 2473
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/usage/UsageStatsService$BinderService;->queryEventsHelper(IJJLjava/lang/String;[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    move-result-object p0

    return-object p0
.end method

.method public queryUsageStats(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v7, p6

    .line 2371
    invoke-virtual {v0, v7}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_c

    return-object v8

    .line 2375
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2376
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v5, 0x1

    const-string/jumbo v6, "queryUsageStats"

    const/4 v4, 0x0

    move/from16 v3, p7

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 2380
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2381
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2380
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v16

    .line 2383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2385
    :try_start_2d
    iget-object v9, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 2388
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_44

    .line 2391
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_44
    move-exception v0

    goto :goto_4a

    :cond_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :goto_4a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2392
    throw v0
.end method

.method public registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 21

    .line 2936
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2937
    const-string v0, "android.permission.SUSPEND_APPS"

    const-string v2, "android.permission.OBSERVE_APP_USAGE"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2939
    invoke-static {v0, v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$misSupervisionEnabled(Lcom/android/server/usage/UsageStatsService;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 2940
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be the active supervision app or it must have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    if-eqz p2, :cond_55

    .line 2944
    array-length v0, p2

    if-eqz v0, :cond_55

    if-nez p7, :cond_37

    cmp-long v0, p5, p3

    if-ltz v0, :cond_2f

    goto :goto_37

    .line 2948
    :cond_2f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "callbackIntent can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2950
    :cond_37
    :goto_37
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2953
    :try_start_3f
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_4f

    .line 2956
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4f
    move-exception v0

    move-object p0, v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2957
    throw p0

    .line 2945
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify at least one package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 17

    .line 2851
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_3b

    if-eqz p2, :cond_33

    .line 2855
    array-length v0, p2

    if-eqz v0, :cond_33

    if-eqz p5, :cond_2b

    .line 2861
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2862
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2863
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2865
    :try_start_19
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_26

    .line 2868
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_26
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2869
    throw v0

    .line 2859
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2856
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2852
    :cond_3b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 23

    .line 2893
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_41

    if-eqz p2, :cond_39

    .line 2897
    array-length v0, p2

    if-eqz v0, :cond_39

    if-eqz p7, :cond_31

    .line 2903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2904
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2905
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 2907
    :try_start_19
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/usage/UsageStatsService;->registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_2c

    .line 2911
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2912
    throw v0

    .line 2901
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "limitReachedCallbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2898
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one observed entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2894
    :cond_41
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    if-eqz p1, :cond_4f

    if-eqz p3, :cond_4e

    .line 2788
    invoke-virtual {p3}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-nez v0, :cond_4e

    if-eqz p5, :cond_4e

    .line 2789
    invoke-virtual {p5}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_4e

    .line 2793
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->canReportUsageStats()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2800
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-gez v0, :cond_2d

    .line 2801
    const-string p0, "UsageStatsService"

    const-string p1, "Event report user selecting an invalid package"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2805
    :cond_2d
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2806
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2807
    iput-object p5, v0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 2808
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 2809
    iput-object p4, v0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 2810
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void

    .line 2794
    :cond_46
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system or holders of the REPORT_USAGE_STATS permission are allowed to call reportChooserSelection"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    :goto_4e
    return-void

    .line 2785
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Package selection must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V
    .registers 12

    .line 2989
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2990
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2991
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2994
    :try_start_c
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_4c

    .line 2995
    :try_start_11
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-nez v4, :cond_34

    .line 2997
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 2998
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    move-result p1

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_71

    .line 3000
    :cond_34
    :goto_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_32

    .line 3002
    :try_start_35
    monitor-enter v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_4c

    .line 3003
    :try_start_36
    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 3007
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_4e

    .line 3009
    :try_start_3d
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p0, p5, p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mbuildFullToken(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0, p3, p4}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_4c

    .line 3012
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4c
    move-exception p0

    goto :goto_73

    :catchall_4e
    move-exception p0

    goto :goto_6f

    .line 3004
    :cond_50
    :try_start_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is already reported as started for this activity"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3007
    :goto_6f
    monitor-exit v4
    :try_end_70
    .catchall {:try_start_50 .. :try_end_70} :catchall_4e

    :try_start_70
    throw p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_4c

    .line 3000
    :goto_71
    :try_start_71
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_32

    :try_start_72
    throw p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_4c

    .line 3012
    :goto_73
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3013
    throw p0
.end method

.method public reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2982
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService$BinderService;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 3018
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3019
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3020
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3023
    :try_start_c
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_39

    .line 3024
    :try_start_11
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_60

    .line 3030
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_5e

    .line 3032
    :try_start_22
    monitor-enter p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_39

    .line 3033
    :try_start_23
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3037
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_3b

    .line 3038
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p0, p3, p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mbuildFullToken(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_39

    .line 3040
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_39
    move-exception p0

    goto :goto_81

    :catchall_3b
    move-exception p0

    goto :goto_5c

    .line 3034
    :cond_3d
    :try_start_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is already reported as stopped for this activity"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3037
    :goto_5c
    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_3d .. :try_end_5d} :catchall_3b

    :try_start_5d
    throw p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_39

    :catchall_5e
    move-exception p0

    goto :goto_7f

    .line 3026
    :cond_60
    :try_start_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown reporter trying to stop token "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3030
    :goto_7f
    monitor-exit v3
    :try_end_80
    .catchall {:try_start_60 .. :try_end_80} :catchall_5e

    :try_start_80
    throw p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_39

    .line 3040
    :goto_81
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3041
    throw p0
.end method

.method public reportUserInteraction(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 2815
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->reportUserInteractionInnerHelper(Ljava/lang/String;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public final reportUserInteractionInnerHelper(Ljava/lang/String;ILandroid/os/PersistableBundle;)V
    .registers 8

    .line 2344
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->canReportUsageStats()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2349
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_19

    .line 2351
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "Caller doesn\'t have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    :cond_19
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ltz v0, :cond_39

    .line 2362
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/4 v1, 0x7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2363
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2364
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 2365
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void

    .line 2358
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2345
    :cond_55
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system or holders of the REPORT_USAGE_STATS permission are allowed to call reportUserInteraction"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reportUserInteractionWithBundle(Ljava/lang/String;ILandroid/os/PersistableBundle;)V
    .registers 8

    .line 2821
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4a

    .line 2822
    invoke-virtual {p3}, Landroid/os/PersistableBundle;->size()I

    move-result v0

    if-eqz v0, :cond_4a

    .line 2828
    const-string v0, "android.app.usage.extra.EVENT_CATEGORY"

    invoke-virtual {p3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2829
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 2833
    const-string v2, "android.app.usage.extra.EVENT_ACTION"

    invoke-virtual {p3, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2834
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 2839
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 2841
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2840
    invoke-virtual {v3, v0, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    invoke-static {p3}, Lcom/android/server/usage/UsageStatsService;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, v2, p3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/usage/UsageStatsService$BinderService;->reportUserInteractionInnerHelper(Ljava/lang/String;ILandroid/os/PersistableBundle;)V

    return-void

    .line 2835
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty android.app.usage.extra.EVENT_ACTION"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2830
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty android.app.usage.extra.EVENT_CATEGORY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2823
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Emtry extras!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppInactive(Ljava/lang/String;ZI)V
    .registers 12

    .line 2576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2578
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2579
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string/jumbo v6, "setAppInactive"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p3

    .line 2578
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_47

    .line 2584
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v2, "No permission to change app idle state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2588
    :try_start_28
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppId(Ljava/lang/String;)I

    move-result v0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_41

    if-gez v0, :cond_36

    .line 2592
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2590
    :cond_36
    :try_start_36
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->setAppIdleAsync(Ljava/lang/String;ZI)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_41

    .line 2592
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_41
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2593
    throw p0

    :catch_47
    move-exception v0

    move-object p0, v0

    .line 2582
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;II)V
    .registers 12

    .line 2633
    invoke-super {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBucket_enforcePermission()V

    .line 2635
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2636
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2639
    :try_start_f
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucket(Ljava/lang/String;IIII)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1d

    .line 2642
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2643
    throw p0
.end method

.method public setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    .registers 7

    .line 2685
    invoke-super {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBuckets_enforcePermission()V

    .line 2687
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2688
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2691
    :try_start_f
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBuckets(Ljava/util/List;III)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 2694
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2695
    throw p0
.end method

.method public setEstimatedLaunchTime(Ljava/lang/String;JI)V
    .registers 7

    .line 2738
    invoke-super {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTime_enforcePermission()V

    .line 2740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2742
    :try_start_7
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2743
    invoke-static {p0, p4, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$msetEstimatedLaunchTime(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;J)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 2745
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2746
    throw p0
.end method

.method public setEstimatedLaunchTimes(Landroid/content/pm/ParceledListSlice;I)V
    .registers 5

    .line 2753
    invoke-super {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTimes_enforcePermission()V

    .line 2755
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2757
    :try_start_7
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2758
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$msetEstimatedLaunchTimes(Lcom/android/server/usage/UsageStatsService;ILjava/util/List;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    .line 2760
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2761
    throw p0
.end method

.method public unregisterAppUsageLimitObserver(ILjava/lang/String;)V
    .registers 6

    .line 2962
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 2963
    const-string v0, "android.permission.SUSPEND_APPS"

    const-string v1, "android.permission.OBSERVE_APP_USAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2965
    invoke-static {v0, p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$misSupervisionEnabled(Lcom/android/server/usage/UsageStatsService;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 2966
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be the active supervision app or it must have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2970
    :cond_23
    :goto_23
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2971
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2973
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageLimitObserver(III)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_34

    .line 2976
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_34
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2977
    throw p0
.end method

.method public unregisterAppUsageObserver(ILjava/lang/String;)V
    .registers 6

    .line 2874
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 2878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 2879
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2882
    :try_start_12
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageObserver(III)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    .line 2884
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2885
    throw p0

    .line 2875
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterUsageSessionObserver(ILjava/lang/String;)V
    .registers 6

    .line 2917
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 2921
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 2922
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2923
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2925
    :try_start_12
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/usage/UsageStatsService;->unregisterUsageSessionObserver(III)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    .line 2928
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2929
    throw p0

    .line 2918
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
