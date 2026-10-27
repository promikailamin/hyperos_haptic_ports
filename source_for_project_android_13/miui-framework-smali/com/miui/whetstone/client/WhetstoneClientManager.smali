.class public abstract Lcom/miui/whetstone/client/WhetstoneClientManager;
.super Ljava/lang/Object;
.source "WhetstoneClientManager.java"


# static fields
.field private static final blacklist BOARD_PERFORMANCE_SUPPORT:Z

.field private static blacklist CACHAED_STATISTICS_SUPPORT:Z = false

.field private static blacklist CHECK_APP_MEMORY_SUPPORT:Z = false

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist POWER_PROFILE_CONFIG:Ljava/lang/String; = "persist.sys.aries.power_profile"

.field private static final blacklist POWER_PROFILE_PERFORMANCE:Ljava/lang/String; = "high"

.field private static blacklist RED_SUPPORT:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "WhetstoneClientManager"

.field private static blacklist mContext:Landroid/content/Context;

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist mService:Lcom/miui/whetstone/IWhetstoneClient;

.field public static blacklist mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

.field private static blacklist mThresholds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

.field private static blacklist protectApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sAndroidCachePss:J

.field private static blacklist sCallingPid:I

.field private static blacklist sPerformanceEnable:Z

.field private static blacklist sPerformanceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPowerProfile:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mContext:Landroid/content/Context;

    .line 34
    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 36
    const-string v0, "feature_red_suport"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->RED_SUPPORT:Z

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    const-string v2, "com.tencent.mm"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    const-string v3, "com.jeejen.family.miui"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    const-string v3, "com.google.android.gms"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mLock:Ljava/lang/Object;

    .line 50
    const-string v0, "feature_cached_statistics_suport"

    invoke-static {v0, v1}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    .line 132
    const/4 v3, 0x0

    sput-boolean v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    .line 134
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyReceiveUI"

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyDetailUI"

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    .line 294
    nop

    .line 295
    const-string v0, "feature_check_app_memory_suport"

    invoke-static {v0, v1}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CHECK_APP_MEMORY_SUPPORT:Z

    .line 294
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addComponment([Landroid/content/ComponentName;)Z
    .registers 6
    .param p0, "comps"    # [Landroid/content/ComponentName;

    .line 143
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_3
    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 145
    .local v1, "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    array-length v2, p0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_18

    aget-object v4, p0, v3

    .line 146
    .local v4, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    nop

    .end local v4    # "comp":Landroid/content/ComponentName;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 148
    :cond_18
    sput-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    .line 149
    .end local v1    # "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    monitor-exit v0

    .line 150
    const/4 v0, 0x1

    return v0

    .line 149
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public static blacklist checkIfPackageIsLocked(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist checkIfPackageIsLocked(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 95
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    .local v0, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 97
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 99
    const/4 v1, 0x1

    return v1

    .line 101
    .end local v3    # "name":Ljava/lang/String;
    :cond_28
    goto :goto_14

    .line 102
    :cond_29
    return v1
.end method

.method private static blacklist doPerformanceLam()V
    .registers 2

    .line 204
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    const-string v1, "persist.sys.aries.power_profile"

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v0, :cond_12

    .line 205
    const-string v0, "middle"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    .line 210
    :cond_12
    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v0, :cond_1b

    .line 211
    const-string v0, "high"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1b
    return-void
.end method

.method private static blacklist doResumeLam()V
    .registers 2

    .line 197
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-boolean v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v1, :cond_10

    .line 198
    const-string v1, "persist.sys.aries.power_profile"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    .line 201
    :cond_10
    return-void
.end method

.method public static blacklist getEmptyProcTotalMemoryInfo()J
    .registers 3

    .line 116
    const-wide/16 v0, 0x0

    .line 117
    .local v0, "totalMemory":J
    sget-boolean v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    if-nez v2, :cond_7

    .line 118
    return-wide v0

    .line 120
    :cond_7
    sget-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    .line 121
    return-wide v0
.end method

.method public static blacklist getWhetstoneSystemSetting()Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;
    .registers 1

    .line 298
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    return-object v0
.end method

.method public static blacklist init(Landroid/content/Context;Lcom/miui/whetstone/IWhetstoneClient;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lcom/miui/whetstone/IWhetstoneClient;
    .param p2, "whetstoneAM"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 52
    sput-object p0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mContext:Landroid/content/Context;

    .line 53
    sput-object p1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    .line 54
    new-instance v0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;-><init>(Landroid/content/Context;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    .line 55
    invoke-static {}, Lcom/miui/whetstone/process/WtServiceControlEntry;->getInstance()Lcom/miui/whetstone/process/WtServiceControlEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->addObserver(Ljava/util/Observer;)V

    .line 56
    sput-object p2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    .line 58
    return-void
.end method

.method public static blacklist isAlarmAllowedLocked(IILjava/lang/String;Z)Z
    .registers 5
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "generalRestrictApply"    # Z

    .line 222
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v0, :cond_b

    if-eqz p3, :cond_b

    .line 223
    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->isAlarmAllowedLocked(IILjava/lang/String;)Z

    move-result v0

    return v0

    .line 225
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAutoStartAllowedByPower(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 216
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 217
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->isAutoStartAllowedByPower(I)Z

    move-result v0

    return v0

    .line 218
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .registers 4
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v0, :cond_9

    .line 230
    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v0

    return v0

    .line 232
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isProtectImportantApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "processName"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isProtectImportantAppWithUid(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isProtectImportantAppWithUid(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 74
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 76
    return v2

    .line 78
    .end local v1    # "item":Ljava/lang/String;
    :cond_1a
    goto :goto_6

    .line 80
    :cond_1b
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 81
    .local v0, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz p0, :cond_46

    if-nez v0, :cond_2d

    goto :goto_46

    .line 82
    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83
    .local v4, "item":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 84
    return v2

    .line 86
    .end local v4    # "item":Ljava/lang/String;
    :cond_44
    goto :goto_31

    .line 87
    :cond_45
    return v1

    .line 81
    :cond_46
    :goto_46
    return v1
.end method

.method public static blacklist isStartServiceAllowedLocked(Landroid/content/Intent;ILjava/lang/String;I)Z
    .registers 5
    .param p0, "service"    # Landroid/content/Intent;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isSystemProtectImportantApp(Ljava/lang/String;)Z
    .registers 4
    .param p0, "processName"    # Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    .end local v1    # "item":Ljava/lang/String;
    :cond_1a
    goto :goto_6

    .line 66
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist notifyOnScroll(Z)V
    .registers 2
    .param p0, "start"    # Z

    .line 305
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v0, :cond_7

    .line 306
    invoke-virtual {v0, p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->notifyOnScroll(Z)V

    .line 308
    :cond_7
    return-void
.end method

.method public static blacklist prepareAppTransitionLam(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 6
    .param p0, "realActivity"    # Landroid/content/ComponentName;
    .param p1, "realActivity2"    # Landroid/content/ComponentName;

    .line 166
    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->RED_SUPPORT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 167
    return v1

    .line 169
    :cond_6
    if-nez p1, :cond_9

    .line 170
    return v1

    .line 177
    :cond_9
    :try_start_9
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 179
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    .line 180
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->doPerformanceLam()V

    .line 181
    return v0

    .line 183
    :cond_18
    sput-boolean v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    .line 184
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->doResumeLam()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 188
    goto :goto_26

    .line 186
    :catch_1e
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WhetstoneClientManager"

    const-string v3, "prepareAppTransitionLam"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    return v1
.end method

.method public static blacklist setCachedPidLam(IIJ)V
    .registers 6
    .param p0, "index"    # I
    .param p1, "pid"    # I
    .param p2, "lastPss"    # J

    .line 106
    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    if-nez v0, :cond_5

    .line 107
    return-void

    .line 109
    :cond_5
    if-nez p0, :cond_b

    .line 110
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    .line 112
    :cond_b
    sget-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    add-long/2addr v0, p2

    sput-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    .line 113
    return-void
.end method

.method public static blacklist setCallingProcessPid(I)V
    .registers 1
    .param p0, "pid"    # I

    .line 128
    sput p0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    .line 129
    return-void
.end method

.method public static blacklist setComponment([Landroid/content/ComponentName;)Z
    .registers 6
    .param p0, "comps"    # [Landroid/content/ComponentName;

    .line 154
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v1, "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    array-length v2, p0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_15

    aget-object v4, p0, v3

    .line 157
    .local v4, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    nop

    .end local v4    # "comp":Landroid/content/ComponentName;
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 159
    :cond_15
    sput-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    .line 160
    .end local v1    # "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    monitor-exit v0

    .line 161
    const/4 v0, 0x1

    return v0

    .line 160
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static blacklist startServiceAllowed(Landroid/content/ComponentName;IZ)Z
    .registers 4
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "intentFlags"    # I
    .param p2, "whileRestarting"    # Z

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist startServiceAllowed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 246
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    monitor-enter v0

    .line 247
    :try_start_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 248
    .local v2, "threshold":Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "values":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1e

    goto :goto_7

    .line 250
    :cond_1e
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    nop

    .end local v2    # "threshold":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    goto :goto_7

    .line 252
    :cond_2f
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public static blacklist updatePackageLockedStatus(Ljava/lang/String;Z)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "locked"    # Z

    .line 264
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V

    .line 265
    return-void
.end method

.method public static blacklist updatePackageLockedStatus(Ljava/lang/String;ZI)V
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "locked"    # Z
    .param p2, "userId"    # I

    .line 268
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 269
    :try_start_3
    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 270
    .local v1, "lockedApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 271
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 272
    .local v3, "name":Ljava/lang/String;
    if-nez v1, :cond_29

    .line 273
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 274
    if-eqz p1, :cond_27

    .line 275
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_27
    monitor-exit v0

    return-void

    .line 280
    :cond_29
    if-eqz p1, :cond_2f

    .line 281
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 283
    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 284
    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 285
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 286
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 287
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_34

    .line 291
    .end local v1    # "lockedApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    :cond_4b
    :goto_4b
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public static blacklist updateUserLockedAppList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;I)V

    .line 257
    return-void
.end method

.method public static blacklist updateUserLockedAppList(Ljava/util/List;I)V
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 260
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method
