.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$Metrics;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;,
        Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field private static final RULE_INSTANCE_GRACE_PERIOD:I = 0xf731400

.field static final RULE_LIMIT_PER_PACKAGE:I = 0x64

.field public static final SUPPRESSED_EFFECT_ALL:J = 0x3L

.field public static final SUPPRESSED_EFFECT_CALLS:J = 0x2L

.field public static final SUPPRESSED_EFFECT_NOTIFICATIONS:J = 0x1L

.field static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field protected mAudioManager:Landroid/media/AudioManagerInternal;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mConditions:Lcom/android/server/notification/ZenModeConditions;

.field protected mConfig:Landroid/service/notification/ZenModeConfig;

.field final mConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

.field private final mContext:Landroid/content/Context;

.field protected mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field protected mIsBootComplete:Z

.field private final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field protected final mNotificationManager:Landroid/app/NotificationManager;

.field protected mPm:Landroid/content/pm/PackageManager;

.field private mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

.field protected final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

.field protected final mRulesUidCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private final mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

.field private mSuppressedEffects:J

.field private mUser:I

.field protected mZenMode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMetrics(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyConfig(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetZenModeSetting(Lcom/android/server/notification/ZenModeHelper;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 105
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;
    .param p4, "statsEventBuilderFactory"    # Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 127
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$Metrics;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$Metrics-IA;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 132
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 149
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 150
    new-instance v4, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v4, p0, p2, v2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$H-IA;)V

    iput-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 152
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 153
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 156
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRuleNames()V

    .line 157
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 158
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 161
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-direct {v0, p0, v4}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 162
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 163
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering;

    invoke-direct {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 164
    new-instance v0, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {v0, p0, p3}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 165
    invoke-virtual {p3}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 166
    iput-object p4, p0, Lcom/android/server/notification/ZenModeHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    .line 167
    return-void
.end method

.method private applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p4, "setRingerMode"    # Z

    .line 953
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode_config_etag"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 955
    invoke-virtual {p0, p2, p4}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 956
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p3, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 957
    return-void
.end method

.method private applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 5
    .param p1, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p2, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1032
    iget v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 1033
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 1034
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1035
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 1033
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_3a

    .line 1036
    :cond_16
    iget v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 1037
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 1038
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1039
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1040
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 1037
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_3a

    .line 1043
    :cond_35
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    .line 1045
    :goto_3a
    return-void
.end method

.method private cleanUpZenRules()V
    .registers 11

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 862
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v2

    .line 863
    :try_start_7
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 864
    .local v3, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v4, :cond_4f

    .line 865
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_19
    if-ltz v4, :cond_4f

    .line 866
    iget-object v5, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 867
    .local v5, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-wide/32 v6, 0xf731400

    iget-wide v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_58

    sub-long v8, v0, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_4c

    .line 869
    :try_start_34
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_45

    .line 870
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x400000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_45} :catch_46
    .catchall {:try_start_34 .. :try_end_45} :catchall_58

    .line 874
    :cond_45
    goto :goto_4c

    .line 872
    :catch_46
    move-exception v6

    .line 873
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_47
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 865
    .end local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 878
    .end local v4    # "i":I
    :cond_4f
    const/4 v4, 0x0

    const-string v5, "cleanUpZenRules"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 879
    nop

    .end local v3    # "newConfig":Landroid/service/notification/ZenModeConfig;
    monitor-exit v2

    .line 880
    return-void

    .line 879
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_58

    throw v3
.end method

.method private computeZenMode()I
    .registers 8

    .line 1010
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1011
    :cond_6
    monitor-enter v0

    .line 1012
    :try_start_7
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    monitor-exit v0

    return v1

    .line 1013
    :cond_15
    const/4 v1, 0x0

    .line 1014
    .local v1, "zen":I
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1015
    .local v3, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1016
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v4

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v5

    if-le v4, v5, :cond_5f

    .line 1018
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "zen_settings_suggestion_viewed"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5c

    .line 1020
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "show_zen_settings_suggestion"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1023
    :cond_5c
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    move v1, v4

    .line 1026
    .end local v3    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5f
    goto :goto_22

    .line 1027
    :cond_60
    monitor-exit v0

    return v1

    .line 1028
    .end local v1    # "zen":I
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_7 .. :try_end_64} :catchall_62

    throw v1
.end method

.method private dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 1221
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1222
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$Callback;->onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1223
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_6

    .line 1224
    :cond_16
    return-void
.end method

.method private dispatchOnConfigChanged()V
    .registers 3

    .line 1196
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1197
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    .line 1198
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_6

    .line 1199
    :cond_16
    return-void
.end method

.method private dispatchOnConsolidatedPolicyChanged()V
    .registers 3

    .line 1208
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1209
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConsolidatedPolicyChanged()V

    .line 1210
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_6

    .line 1211
    :cond_16
    return-void
.end method

.method private dispatchOnPolicyChanged()V
    .registers 3

    .line 1202
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1203
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged()V

    .line 1204
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_6

    .line 1205
    :cond_16
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .registers 3

    .line 1214
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1215
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    .line 1216
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_6

    .line 1217
    :cond_16
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .registers 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "var"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 736
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 737
    if-nez p3, :cond_11

    .line 738
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 739
    return-void

    .line 741
    :cond_11
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p3, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 744
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p3, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x3

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 745
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 746
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x6

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x7

    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 747
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x8

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 748
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x9

    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 749
    invoke-static {v4}, Landroid/service/notification/ZenPolicy;->conversationTypeToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0xa

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 750
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0xb

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    .line 741
    const-string v1, "allow(alarms=%b,media=%b,system=%b,calls=%b,callsFrom=%s,repeatCallers=%b,messages=%b,messagesFrom=%s,conversations=%b,conversationsFrom=%s,events=%b,reminders=%b)\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 751
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 752
    new-array v0, v3, [Ljava/lang/Object;

    iget v1, p3, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "  disallow(visualEffects=%s)\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 753
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  manualRule="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 754
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b2

    return-void

    .line 755
    :cond_b2
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 756
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b9
    if-ge v1, v0, :cond_d4

    .line 757
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v1, :cond_c3

    const-string v2, "  automaticRules="

    goto :goto_c5

    :cond_c3
    const-string v2, "                 "

    :goto_c5
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 758
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 756
    add-int/lit8 v1, v1, 0x1

    goto :goto_b9

    .line 760
    .end local v1    # "i":I
    :cond_d4
    return-void
.end method

.method private findMatchingRules(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Ljava/util/List;
    .registers 8
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "id"    # Landroid/net/Uri;
    .param p3, "condition"    # Landroid/service/notification/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig;",
            "Landroid/net/Uri;",
            "Landroid/service/notification/Condition;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v0, "matchingRules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 486
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 488
    :cond_13
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 489
    .local v2, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 490
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    .end local v2    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_32
    goto :goto_1d

    .line 494
    :cond_33
    :goto_33
    return-object v0
.end method

.method private getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .registers 8
    .param p1, "configActivity"    # Landroid/content/ComponentName;

    .line 606
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 607
    .local v0, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 608
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 611
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 608
    const/16 v3, 0x81

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 612
    .local v1, "installedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_26

    .line 613
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    if-ge v2, v3, :cond_26

    .line 614
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 615
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v5

    .line 618
    .end local v2    # "i":I
    .end local v3    # "count":I
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_26
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .registers 2
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 842
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private getPackageRuleCount(Ljava/lang/String;)I
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 531
    if-nez p1, :cond_4

    .line 532
    const/4 v0, 0x0

    return v0

    .line 534
    :cond_4
    const/4 v0, 0x0

    .line 535
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 536
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 537
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 538
    add-int/lit8 v0, v0, 0x1

    .line 540
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2c
    goto :goto_14

    .line 541
    :cond_2d
    monitor-exit v1

    .line 542
    return v0

    .line 541
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method private getPackageUid(Ljava/lang/String;I)I
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 1314
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1315
    const/16 v0, 0x3e8

    return v0

    .line 1317
    :cond_b
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenModeHelper;->getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1318
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_28

    .line 1320
    :try_start_17
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_26} :catch_27

    .line 1322
    goto :goto_28

    .line 1321
    :catch_27
    move-exception v1

    .line 1324
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "user"    # I

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreviousRingerModeSetting()I
    .registers 4

    .line 970
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_ringer_level"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 10
    .param p1, "owner"    # Landroid/content/ComponentName;

    .line 587
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 588
    .local v0, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 589
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 592
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 589
    const/16 v3, 0x84

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 593
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_35

    .line 594
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_1b
    if-ge v2, v3, :cond_35

    .line 595
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 596
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 597
    .local v5, "info":Landroid/content/pm/ServiceInfo;
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 598
    return-object v5

    .line 594
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "info":Landroid/content/pm/ServiceInfo;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 602
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_35
    const/4 v2, 0x0

    return-object v2
.end method

.method private getZenModeSetting()I
    .registers 4

    .line 960
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private loadConfigForUser(ILjava/lang/String;)V
    .registers 7
    .param p1, "user"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 250
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v0, p1, :cond_75

    if-gez p1, :cond_7

    goto :goto_75

    .line 254
    :cond_7
    invoke-static {}, Lcom/android/server/notification/ZenModeStub;->get()Lcom/android/server/notification/ZenModeStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/notification/ZenModeStub;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 256
    :cond_12
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 257
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_34

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_34
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 259
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_66

    .line 260
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_5e

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " generating default config for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_5e
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 262
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 264
    :cond_66
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 265
    const/4 v2, 0x0

    :try_start_6a
    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 266
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_72

    .line 267
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 268
    return-void

    .line 266
    :catchall_72
    move-exception v2

    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v2

    .line 250
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_75
    :goto_75
    return-void
.end method

.method private populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p3, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p4, "isNew"    # Z

    .line 623
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 624
    const/4 v0, 0x0

    iput-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 625
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 626
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iput-boolean v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 627
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isModified()Z

    move-result v0

    iput-boolean v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    .line 628
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iput-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 629
    nop

    .line 630
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    .line 629
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v0

    iput v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 631
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 633
    if-eqz p4, :cond_49

    .line 634
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 636
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 637
    iput-object p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 640
    :cond_49
    iget-boolean v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_53

    .line 641
    iput-boolean v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 643
    :cond_53
    return-void
.end method

.method private readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .registers 6
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 1227
    const/4 v0, 0x0

    .line 1229
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    const v1, 0x1170008

    :try_start_4
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 1230
    :goto_9
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    .line 1231
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->readXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_26
    .catchall {:try_start_4 .. :try_end_18} :catchall_24

    .line 1232
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v1, :cond_1e

    .line 1237
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1232
    return-object v1

    .line 1233
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_1e
    goto :goto_9

    .line 1237
    :cond_1f
    nop

    :goto_20
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1238
    goto :goto_30

    .line 1237
    :catchall_24
    move-exception v1

    goto :goto_36

    .line 1234
    :catch_26
    move-exception v1

    .line 1235
    .local v1, "e":Ljava/lang/Exception;
    :try_start_27
    const-string v2, "ZenModeHelper"

    const-string v3, "Error reading default zen mode config from resource"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 1237
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_20

    .line 1239
    :goto_30
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig;-><init>()V

    return-object v1

    .line 1237
    :goto_36
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1238
    throw v1
.end method

.method private ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 6
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "condition"    # Landroid/service/notification/Condition;
    .param p3, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 498
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    if-eqz p3, :cond_1e

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_a

    goto :goto_1e

    .line 499
    :cond_a
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    .line 500
    :cond_13
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return v0

    .line 501
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 498
    :cond_1e
    :goto_1e
    return v0
.end method

.method private ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;Ljava/util/List;)V
    .registers 9
    .param p1, "user"    # I
    .param p2, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1283
    .local p3, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_8

    move-object v0, v1

    goto :goto_a

    :cond_8
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 1284
    .local v0, "id":Ljava/lang/String;
    :goto_a
    sget-object v2, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1285
    const-string v0, ""

    .line 1289
    :cond_14
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v1

    .line 1290
    .local v1, "pkg":Ljava/lang/String;
    :goto_1f
    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 1291
    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 1292
    const-string v0, "MANUAL_RULE"

    .line 1296
    :cond_27
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v2}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    const/16 v3, 0x2764

    .line 1297
    invoke-virtual {v2, v3}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    .line 1298
    invoke-virtual {v2, p1}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1299
    invoke-virtual {v2, v3}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    .line 1300
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    iget v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1301
    invoke-virtual {v2, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    .line 1302
    invoke-virtual {v2, v0}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    .line 1303
    invoke-direct {p0, v1, p1}, Lcom/android/server/notification/ZenModeHelper;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    .line 1304
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    .line 1305
    .local v2, "data":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    new-array v3, v3, [B

    .line 1306
    .local v3, "policyProto":[B
    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v4, :cond_65

    .line 1307
    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v4}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object v3

    .line 1309
    :cond_65
    invoke-virtual {v2, v3}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeByteArray([B)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1310
    invoke-virtual {v2}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    return-void
.end method

.method private setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;)V
    .registers 9
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "condition"    # Landroid/service/notification/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig;",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;",
            "Landroid/service/notification/Condition;",
            ")V"
        }
    .end annotation

    .line 468
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    if-eqz p2, :cond_40

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_40

    .line 470
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 471
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-object p3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 472
    invoke-direct {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 473
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const-string v3, "conditionChanged"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 475
    if-eqz p3, :cond_3e

    iget v2, p3, Landroid/service/notification/Condition;->state:I

    .line 476
    invoke-static {v2}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "STATE_TRUE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 477
    invoke-static {}, Lcom/android/server/notification/ZenModeStub;->get()Lcom/android/server/notification/ZenModeStub;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-interface {v2, v4, v3}, Lcom/android/server/notification/ZenModeStub;->zenContentObserver(Landroid/content/Context;Ljava/lang/String;)V

    .line 480
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3e
    goto :goto_d

    .line 481
    :cond_3f
    return-void

    .line 468
    :cond_40
    :goto_40
    return-void
.end method

.method private setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z
    .registers 12
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p4, "setRingerMode"    # Z

    .line 911
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 913
    .local v0, "identity":J
    const/4 v2, 0x0

    const-string v3, "ZenModeHelper"

    if-eqz p1, :cond_a9

    :try_start_9
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_a9

    .line 917
    :cond_11
    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    const/4 v6, 0x1

    if-eq v4, v5, :cond_41

    .line 919
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 920
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_3c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfigLocked: store config for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_3c} :catch_a7
    .catchall {:try_start_9 .. :try_end_3c} :catchall_a5

    .line 921
    :cond_3c
    nop

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 921
    return v6

    .line 924
    :cond_41
    :try_start_41
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 926
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 927
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_6e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfigLocked reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 928
    :cond_6e
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p2, v4, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 931
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    .line 932
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    .line 931
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    move v4, v6

    goto :goto_86

    :cond_85
    move v4, v2

    .line 933
    .local v4, "policyChanged":Z
    :goto_86
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v5}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    .line 934
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 935
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 936
    invoke-direct {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->updateConsolidatedPolicy(Ljava/lang/String;)V

    .line 938
    :cond_96
    if-eqz v4, :cond_9b

    .line 939
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged()V

    .line 941
    :cond_9b
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v5, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostApplyConfig(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    :try_end_a0
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_a0} :catch_a7
    .catchall {:try_start_41 .. :try_end_a0} :catchall_a5

    .line 942
    nop

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    return v6

    .line 947
    .end local v4    # "policyChanged":Z
    :catchall_a5
    move-exception v2

    goto :goto_ce

    .line 943
    :catch_a7
    move-exception v4

    goto :goto_c4

    .line 914
    :cond_a9
    :goto_a9
    :try_start_a9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid config in setConfigLocked; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catch Ljava/lang/SecurityException; {:try_start_a9 .. :try_end_bf} :catch_a7
    .catchall {:try_start_a9 .. :try_end_bf} :catchall_a5

    .line 915
    nop

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 915
    return v2

    .line 944
    .local v4, "e":Ljava/lang/SecurityException;
    :goto_c4
    :try_start_c4
    const-string v5, "Invalid rule in config"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c9
    .catchall {:try_start_c4 .. :try_end_c9} :catchall_a5

    .line 945
    nop

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 945
    return v2

    .line 947
    .end local v4    # "e":Ljava/lang/SecurityException;
    :goto_ce
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    throw v2
.end method

.method private setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "setRingerMode"    # Z

    .line 664
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 665
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 666
    :cond_9
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 667
    :cond_11
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_50

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setManualZenMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conditionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setRingerMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_50
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 671
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_7c

    .line 672
    iput-object v3, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 673
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 674
    .local v5, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 675
    iput-boolean v2, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 677
    .end local v5    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_7a
    goto :goto_66

    :cond_7b
    goto :goto_94

    .line 679
    :cond_7c
    new-instance v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 680
    .local v4, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 681
    iput p1, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 682
    iput-object p2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 683
    iput-object p4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 684
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 686
    invoke-static {}, Lcom/android/server/notification/ZenModeStub;->get()Lcom/android/server/notification/ZenModeStub;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-interface {v2, v5, p3}, Lcom/android/server/notification/ZenModeStub;->zenContentObserver(Landroid/content/Context;Ljava/lang/String;)V

    .line 689
    .end local v4    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_94
    invoke-direct {p0, v1, p3, v3, p5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    .line 690
    monitor-exit v0

    .line 691
    return-void

    .line 690
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_99
    move-exception v1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_3 .. :try_end_9b} :catchall_99

    throw v1
.end method

.method private setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "previousRingerLevel"    # Ljava/lang/Integer;

    .line 975
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 976
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 977
    if-nez p1, :cond_a

    const/4 v1, 0x0

    goto :goto_12

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 975
    :goto_12
    const-string/jumbo v2, "zen_mode_ringer_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 978
    return-void
.end method

.method private showZenUpgradeNotification(I)V
    .registers 10
    .param p1, "zen"    # I

    .line 1495
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1497
    .local v0, "isWatch":Z
    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeHelper;->mIsBootComplete:Z

    const/4 v2, 0x1

    const-string/jumbo v3, "show_zen_upgrade_notification"

    const/4 v4, 0x0

    if-eqz v1, :cond_35

    if-eqz p1, :cond_35

    if-nez v0, :cond_35

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1500
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1502
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "zen_settings_updated"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_35

    goto :goto_36

    :cond_35
    move v2, v4

    :goto_36
    move v1, v2

    .line 1505
    .local v1, "showNotification":Z
    if-eqz v0, :cond_42

    .line 1506
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1510
    :cond_42
    if-eqz v1, :cond_5a

    .line 1511
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x30

    .line 1512
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->createZenUpgradeNotification()Landroid/app/Notification;

    move-result-object v6

    .line 1511
    const-string v7, "ZenModeHelper"

    invoke-virtual {v2, v7, v5, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1513
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1516
    :cond_5a
    return-void
.end method

.method private updateConsolidatedPolicy(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 1048
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_5

    return-void

    .line 1049
    :cond_5
    monitor-enter v0

    .line 1050
    :try_start_6
    new-instance v1, Landroid/service/notification/ZenPolicy;

    invoke-direct {v1}, Landroid/service/notification/ZenPolicy;-><init>()V

    .line 1051
    .local v1, "policy":Landroid/service/notification/ZenPolicy;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_18

    .line 1052
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 1055
    :cond_18
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1056
    .local v3, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1057
    invoke-direct {p0, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 1059
    .end local v3    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_39
    goto :goto_24

    .line 1060
    :cond_3a
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 1061
    .local v2, "newPolicy":Landroid/app/NotificationManager$Policy;
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 1062
    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 1063
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConsolidatedPolicyChanged()V

    .line 1064
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v3, p1}, Lcom/android/server/notification/ZenLog;->traceSetConsolidatedZenPolicy(Landroid/app/NotificationManager$Policy;Ljava/lang/String;)V

    .line 1066
    .end local v1    # "policy":Landroid/service/notification/ZenPolicy;
    .end local v2    # "newPolicy":Landroid/app/NotificationManager$Policy;
    :cond_52
    monitor-exit v0

    .line 1067
    return-void

    .line 1066
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_54

    throw v1
.end method

.method private updateDefaultAutomaticRuleNames()V
    .registers 5

    .line 1070
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1071
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v3, "EVENTS_DEFAULT_RULE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1072
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a05

    .line 1073
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_4b

    .line 1074
    :cond_32
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v3, "EVERY_NIGHT_DEFAULT_RULE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1075
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a06

    .line 1076
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1078
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_4b
    :goto_4b
    goto :goto_c

    .line 1079
    :cond_4c
    return-void
.end method

.method private updateRingerModeAffectedStreams()V
    .registers 2

    .line 1004
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_7

    .line 1005
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    .line 1007
    :cond_7
    return-void
.end method

.method private updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 4
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 505
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 506
    iput-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 507
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snoozing reset for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_2d
    const/4 v0, 0x1

    return v0

    .line 510
    :cond_2f
    return v0
.end method

.method private static zenSeverity(I)I
    .registers 2
    .param p0, "zen"    # I

    .line 1243
    packed-switch p0, :pswitch_data_c

    .line 1247
    const/4 v0, 0x0

    return v0

    .line 1245
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 1246
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 1244
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p3, "reason"    # Ljava/lang/String;

    .line 324
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5b

    .line 325
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 326
    .local v0, "component":Landroid/content/pm/PackageItemInfo;
    if-nez v0, :cond_1b

    .line 327
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 329
    :cond_1b
    if-eqz v0, :cond_53

    .line 332
    const/4 v2, -0x1

    .line 333
    .local v2, "ruleInstanceLimit":I
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2b

    .line 334
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.service.zen.automatic.ruleInstanceLimit"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 337
    :cond_2b
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v3

    .line 338
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 340
    .local v3, "newRuleInstanceCount":I
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getPackageRuleCount(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v1

    .line 341
    .local v4, "newPackageRuleCount":I
    const/16 v5, 0x64

    if-gt v4, v5, :cond_4b

    if-lez v2, :cond_4a

    if-lt v2, v3, :cond_4b

    :cond_4a
    goto :goto_5b

    .line 343
    :cond_4b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "Rule instance limit exceeded"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    .end local v2    # "ruleInstanceLimit":I
    .end local v3    # "newRuleInstanceCount":I
    .end local v4    # "newPackageRuleCount":I
    :cond_53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Lacking enabled CPS or config activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    .end local v0    # "component":Landroid/content/pm/PackageItemInfo;
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 349
    :try_start_5e
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_b1

    .line 352
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_88

    .line 353
    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAutomaticZenRule rule= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_88
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 356
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 357
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 358
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-direct {p0, v2, p3, v4, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 360
    iget-object v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 362
    :cond_a9
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v4, "Could not create rule"

    invoke-direct {v1, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p3    # "reason":Ljava/lang/String;
    throw v1

    .line 350
    .end local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p3    # "reason":Ljava/lang/String;
    :cond_b1
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "Could not create rule"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p3    # "reason":Ljava/lang/String;
    throw v1

    .line 364
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p3    # "reason":Ljava/lang/String;
    :catchall_b9
    move-exception v1

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_5e .. :try_end_bb} :catchall_b9

    throw v1
.end method

.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 205
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method protected applyRestrictions()V
    .registers 28

    .line 1083
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    move v4, v3

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    .line 1084
    .local v4, "zenOn":Z
    :goto_a
    if-ne v1, v3, :cond_e

    move v5, v3

    goto :goto_f

    :cond_e
    const/4 v5, 0x0

    .line 1085
    .local v5, "zenPriorityOnly":Z
    :goto_f
    const/4 v6, 0x2

    if-ne v1, v6, :cond_14

    move v7, v3

    goto :goto_15

    :cond_14
    const/4 v7, 0x0

    .line 1086
    .local v7, "zenSilence":Z
    :goto_15
    const/4 v8, 0x3

    if-ne v1, v8, :cond_1a

    move v1, v3

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 1087
    .local v1, "zenAlarmsOnly":Z
    :goto_1b
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v9

    if-eqz v9, :cond_2d

    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 1088
    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v9

    if-nez v9, :cond_2d

    move v9, v3

    goto :goto_2e

    :cond_2d
    const/4 v9, 0x0

    .line 1089
    .local v9, "allowCalls":Z
    :goto_2e
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v10}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v10

    .line 1090
    .local v10, "allowRepeatCallers":Z
    iget-object v11, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v11}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v11

    .line 1091
    .local v11, "allowSystem":Z
    iget-object v12, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v12}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v12

    .line 1092
    .local v12, "allowMedia":Z
    iget-object v13, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v13}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v13

    .line 1095
    .local v13, "allowAlarms":Z
    invoke-static {}, Lcom/android/server/notification/ZenModeStub;->get()Lcom/android/server/notification/ZenModeStub;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-interface {v14, v15, v3}, Lcom/android/server/notification/ZenModeStub;->shouldInterceptWhenUnLocked(Landroid/content/Context;Z)Z

    move-result v14

    xor-int/2addr v14, v3

    .line 1097
    .local v14, "allowUnlocked":Z
    if-eqz v4, :cond_57

    if-eqz v14, :cond_57

    move v15, v3

    goto :goto_58

    :cond_57
    const/4 v15, 0x0

    .line 1101
    .local v15, "allowEveryThing":Z
    :goto_58
    const-wide/16 v16, 0x0

    if-nez v4, :cond_6d

    move/from16 v18, v4

    .end local v4    # "zenOn":Z
    .local v18, "zenOn":Z
    iget-wide v3, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v19, 0x1

    and-long v3, v3, v19

    cmp-long v3, v3, v16

    if-eqz v3, :cond_6b

    if-nez v15, :cond_6b

    goto :goto_6f

    :cond_6b
    const/4 v3, 0x0

    goto :goto_70

    .end local v18    # "zenOn":Z
    .restart local v4    # "zenOn":Z
    :cond_6d
    move/from16 v18, v4

    .end local v4    # "zenOn":Z
    .restart local v18    # "zenOn":Z
    :goto_6f
    const/4 v3, 0x1

    .line 1104
    .local v3, "muteNotifications":Z
    :goto_70
    if-nez v1, :cond_8d

    if-eqz v5, :cond_7c

    if-nez v9, :cond_7c

    if-eqz v10, :cond_79

    goto :goto_7c

    :cond_79
    move/from16 v19, v3

    goto :goto_8f

    :cond_7c
    :goto_7c
    move/from16 v19, v3

    .end local v3    # "muteNotifications":Z
    .local v19, "muteNotifications":Z
    iget-wide v2, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v20, 0x2

    and-long v2, v2, v20

    cmp-long v2, v2, v16

    if-eqz v2, :cond_8b

    if-nez v15, :cond_8b

    goto :goto_8f

    :cond_8b
    const/4 v2, 0x0

    goto :goto_90

    .end local v19    # "muteNotifications":Z
    .restart local v3    # "muteNotifications":Z
    :cond_8d
    move/from16 v19, v3

    .end local v3    # "muteNotifications":Z
    .restart local v19    # "muteNotifications":Z
    :goto_8f
    const/4 v2, 0x1

    .line 1108
    .local v2, "muteCalls":Z
    :goto_90
    if-eqz v5, :cond_98

    if-nez v13, :cond_98

    if-nez v15, :cond_98

    const/4 v3, 0x1

    goto :goto_99

    :cond_98
    const/4 v3, 0x0

    .line 1110
    .local v3, "muteAlarms":Z
    :goto_99
    if-eqz v5, :cond_a2

    if-nez v12, :cond_a2

    if-nez v15, :cond_a2

    const/16 v16, 0x1

    goto :goto_a4

    :cond_a2
    const/16 v16, 0x0

    .line 1112
    .local v16, "muteMedia":Z
    :goto_a4
    if-nez v1, :cond_b0

    if-eqz v5, :cond_ad

    if-nez v11, :cond_ad

    if-nez v15, :cond_ad

    goto :goto_b0

    :cond_ad
    const/16 v17, 0x0

    goto :goto_b2

    :cond_b0
    :goto_b0
    const/16 v17, 0x1

    .line 1115
    .local v17, "muteSystem":Z
    :goto_b2
    if-nez v7, :cond_c3

    if-eqz v5, :cond_c1

    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 1116
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v4

    if-eqz v4, :cond_c1

    if-nez v15, :cond_c1

    goto :goto_c3

    :cond_c1
    const/4 v4, 0x0

    goto :goto_c4

    :cond_c3
    :goto_c3
    const/4 v4, 0x1

    .line 1119
    .local v4, "muteEverything":Z
    :goto_c4
    sget-object v6, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    array-length v8, v6

    move/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "zenAlarmsOnly":Z
    .local v22, "zenAlarmsOnly":Z
    :goto_ca
    if-ge v1, v8, :cond_171

    move/from16 v23, v4

    .end local v4    # "muteEverything":Z
    .local v23, "muteEverything":Z
    aget v4, v6, v1

    .line 1120
    .local v4, "usage":I
    move-object/from16 v24, v6

    sget-object v6, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1121
    .local v6, "suppressionBehavior":I
    move/from16 v25, v7

    const/4 v7, 0x3

    .end local v7    # "zenSilence":Z
    .local v25, "zenSilence":Z
    if-ne v6, v7, :cond_ea

    .line 1122
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    move/from16 v7, v23

    move/from16 v26, v2

    move/from16 v23, v8

    const/4 v8, 0x3

    .end local v23    # "muteEverything":Z
    .local v7, "muteEverything":Z
    goto/16 :goto_164

    .line 1123
    .end local v7    # "muteEverything":Z
    .restart local v23    # "muteEverything":Z
    :cond_ea
    move/from16 v7, v23

    .end local v23    # "muteEverything":Z
    .restart local v7    # "muteEverything":Z
    move/from16 v23, v8

    const/4 v8, 0x1

    if-ne v6, v8, :cond_ff

    .line 1124
    if-nez v19, :cond_f7

    if-eqz v7, :cond_f6

    goto :goto_f7

    :cond_f6
    const/4 v8, 0x0

    :cond_f7
    :goto_f7
    invoke-virtual {v0, v5, v8, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    move/from16 v26, v2

    const/4 v8, 0x3

    goto/16 :goto_164

    .line 1125
    :cond_ff
    const/4 v8, 0x2

    if-ne v6, v8, :cond_111

    .line 1126
    if-nez v2, :cond_109

    if-eqz v7, :cond_107

    goto :goto_109

    :cond_107
    const/4 v8, 0x0

    goto :goto_10a

    :cond_109
    :goto_109
    const/4 v8, 0x1

    :goto_10a
    invoke-virtual {v0, v5, v8, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    move/from16 v26, v2

    const/4 v8, 0x3

    goto :goto_164

    .line 1127
    :cond_111
    const/4 v8, 0x4

    if-ne v6, v8, :cond_123

    .line 1128
    if-nez v3, :cond_11b

    if-eqz v7, :cond_119

    goto :goto_11b

    :cond_119
    const/4 v8, 0x0

    goto :goto_11c

    :cond_11b
    :goto_11b
    const/4 v8, 0x1

    :goto_11c
    invoke-virtual {v0, v5, v8, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    move/from16 v26, v2

    const/4 v8, 0x3

    goto :goto_164

    .line 1129
    :cond_123
    const/4 v8, 0x5

    if-ne v6, v8, :cond_135

    .line 1130
    if-nez v16, :cond_12d

    if-eqz v7, :cond_12b

    goto :goto_12d

    :cond_12b
    const/4 v8, 0x0

    goto :goto_12e

    :cond_12d
    :goto_12d
    const/4 v8, 0x1

    :goto_12e
    invoke-virtual {v0, v5, v8, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    move/from16 v26, v2

    const/4 v8, 0x3

    goto :goto_164

    .line 1131
    :cond_135
    const/4 v8, 0x6

    if-ne v6, v8, :cond_15e

    .line 1132
    const/16 v8, 0xd

    if-ne v4, v8, :cond_151

    .line 1134
    if-nez v17, :cond_143

    if-eqz v7, :cond_141

    goto :goto_143

    :cond_141
    const/4 v8, 0x0

    goto :goto_144

    :cond_143
    :goto_143
    const/4 v8, 0x1

    :goto_144
    move/from16 v26, v2

    .end local v2    # "muteCalls":Z
    .local v26, "muteCalls":Z
    const/16 v2, 0x1c

    invoke-virtual {v0, v5, v8, v4, v2}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1136
    const/4 v2, 0x0

    const/4 v8, 0x3

    invoke-virtual {v0, v5, v2, v4, v8}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    goto :goto_164

    .line 1138
    .end local v26    # "muteCalls":Z
    .restart local v2    # "muteCalls":Z
    :cond_151
    move/from16 v26, v2

    const/4 v2, 0x0

    const/4 v8, 0x3

    .end local v2    # "muteCalls":Z
    .restart local v26    # "muteCalls":Z
    if-nez v17, :cond_159

    if-eqz v7, :cond_15a

    :cond_159
    const/4 v2, 0x1

    :cond_15a
    invoke-virtual {v0, v5, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_164

    .line 1141
    .end local v26    # "muteCalls":Z
    .restart local v2    # "muteCalls":Z
    :cond_15e
    move/from16 v26, v2

    const/4 v8, 0x3

    .end local v2    # "muteCalls":Z
    .restart local v26    # "muteCalls":Z
    invoke-virtual {v0, v5, v7, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    .line 1119
    .end local v4    # "usage":I
    .end local v6    # "suppressionBehavior":I
    :goto_164
    add-int/lit8 v1, v1, 0x1

    move v4, v7

    move/from16 v8, v23

    move-object/from16 v6, v24

    move/from16 v7, v25

    move/from16 v2, v26

    goto/16 :goto_ca

    .line 1144
    .end local v25    # "zenSilence":Z
    .end local v26    # "muteCalls":Z
    .restart local v2    # "muteCalls":Z
    .local v4, "muteEverything":Z
    .local v7, "zenSilence":Z
    :cond_171
    return-void
.end method

.method protected applyRestrictions(ZZI)V
    .registers 5
    .param p1, "zenPriorityOnly"    # Z
    .param p2, "mute"    # Z
    .param p3, "usage"    # I

    .line 1161
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1162
    const/16 v0, 0x1c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1163
    return-void
.end method

.method protected applyRestrictions(ZZII)V
    .registers 9
    .param p1, "zenPriorityOnly"    # Z
    .param p2, "mute"    # Z
    .param p3, "usage"    # I
    .param p4, "code"    # I

    .line 1149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1151
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 1152
    nop

    .line 1153
    if-eqz p1, :cond_c

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    .line 1151
    :goto_d
    invoke-virtual {v2, p4, p3, p2, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 1155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1156
    nop

    .line 1157
    return-void

    .line 1155
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1156
    throw v2
.end method

.method protected applyZenToRingerMode()V
    .registers 5

    .line 1168
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_5

    return-void

    .line 1170
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v0

    .line 1171
    .local v0, "ringerModeInternal":I
    move v1, v0

    .line 1172
    .local v1, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_32

    goto :goto_26

    .line 1175
    :pswitch_10
    if-eqz v0, :cond_26

    .line 1176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 1177
    const/4 v1, 0x0

    goto :goto_26

    .line 1182
    :pswitch_1b
    goto :goto_26

    .line 1184
    :pswitch_1c
    if-nez v0, :cond_26

    .line 1185
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting()I

    move-result v1

    .line 1186
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 1190
    :cond_26
    :goto_26
    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    .line 1191
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v3, "ZenModeHelper"

    invoke-virtual {v2, v1, v3}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 1193
    :cond_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 9
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 547
    .local v0, "callingUid":I
    const/4 v1, 0x1

    if-eqz v0, :cond_39

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_c

    goto :goto_39

    .line 549
    :cond_c
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_17

    .line 551
    return v1

    .line 553
    :cond_17
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_37

    .line 555
    array-length v3, v2

    .line 556
    .local v3, "packageCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-ge v4, v3, :cond_37

    .line 557
    aget-object v5, v2, v4

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 558
    return v1

    .line 556
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 562
    .end local v3    # "packageCount":I
    .end local v4    # "i":I
    :cond_37
    const/4 v1, 0x0

    return v1

    .line 548
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_39
    :goto_39
    return v1
.end method

.method protected cleanUpCallersAfter(J)V
    .registers 4
    .param p1, "timeThreshold"    # J

    .line 195
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->cleanUpCallersAfter(J)V

    .line 196
    return-void
.end method

.method protected createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .registers 13
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 646
    new-instance v10, Landroid/app/AutomaticZenRule;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 649
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v6

    iget-boolean v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-wide v8, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZJ)V

    .line 651
    .local v0, "azr":Landroid/app/AutomaticZenRule;
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setPackageName(Ljava/lang/String;)V

    .line 652
    return-object v0
.end method

.method protected createZenUpgradeNotification()Landroid/app/Notification;
    .registers 11

    .line 1520
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1521
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1522
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104044d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1521
    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const v1, 0x1040a19

    .line 1524
    .local v1, "title":I
    const v2, 0x1040a18

    .line 1525
    .local v2, "content":I
    const v3, 0x1080594

    .line 1526
    .local v3, "drawable":I
    nop

    .line 1527
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v4, v4, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1526
    invoke-static {v4}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1528
    const v1, 0x1040a1b

    .line 1529
    const v2, 0x1040a1a

    .line 1530
    const v3, 0x108039b

    .line 1533
    :cond_36
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.ZEN_MODE_ONBOARDING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1534
    .local v4, "onboardingIntent":Landroid/content/Intent;
    const v5, 0x10008000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1535
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1536
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const v7, 0x108054c

    .line 1537
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1538
    invoke-static {v7, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1539
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1540
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0xc000000

    .line 1541
    invoke-static {v7, v8, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1543
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1544
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1545
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1546
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1547
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 1535
    return-object v5
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 694
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 695
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 696
    :try_start_d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-wide v2, 0x20b00000002L

    if-eqz v1, :cond_1f

    .line 697
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 699
    :cond_1f
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 700
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v5, :cond_4d

    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v5, :cond_4d

    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v5, v5, Landroid/service/notification/Condition;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4d

    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-nez v5, :cond_4d

    .line 703
    invoke-virtual {v4, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 705
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_4d
    goto :goto_2b

    .line 706
    :cond_4e
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/app/NotificationManager$Policy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 707
    const-wide v1, 0x10500000003L

    iget-wide v3, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 708
    monitor-exit v0

    .line 709
    return-void

    .line 708
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_d .. :try_end_6a} :catchall_68

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 712
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 713
    const-string/jumbo v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConsolidatedPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowUnlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/ZenModeStub;->get()Lcom/android/server/notification/ZenModeStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/server/notification/ZenModeStub;->shouldInterceptWhenUnLocked(Landroid/content/Context;Z)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 722
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    if-ge v1, v0, :cond_89

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConfigs[u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 722
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 725
    .end local v1    # "i":I
    :cond_89
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mUser="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 726
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 727
    :try_start_9a
    const-string v2, "mConfig"

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 728
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_bb

    .line 730
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mSuppressedEffects="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 731
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 733
    return-void

    .line 728
    :catchall_bb
    move-exception v2

    :try_start_bc
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v2
.end method

.method protected evaluateZenMode(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "setRingerMode"    # Z

    .line 982
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ZenModeHelper"

    const-string v1, "evaluateZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_10

    return-void

    .line 984
    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1a

    .line 985
    :cond_16
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v0

    :goto_1a
    nop

    .line 986
    .local v0, "policyHashBefore":I
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 987
    .local v1, "zenBefore":I
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode()I

    move-result v2

    .line 988
    .local v2, "zen":I
    invoke-static {v2, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 989
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 990
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 991
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->updateConsolidatedPolicy(Ljava/lang/String;)V

    .line 992
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateRingerModeAffectedStreams()V

    .line 993
    if-eqz p2, :cond_41

    if-ne v2, v1, :cond_3e

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 994
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v3

    if-eq v0, v3, :cond_41

    .line 995
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 997
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 998
    if-eq v2, v1, :cond_4b

    .line 999
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostDispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 1001
    :cond_4b
    return-void
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return-object v2

    .line 313
    :cond_a
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 314
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_22

    .line 315
    if-nez v1, :cond_16

    return-object v2

    .line 316
    :cond_16
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 317
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0

    .line 319
    :cond_21
    return-object v2

    .line 314
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .registers 3

    .line 886
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 887
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 888
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 2

    .line 895
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInstanceCount(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 514
    if-nez p1, :cond_4

    .line 515
    const/4 v0, 0x0

    return v0

    .line 517
    :cond_4
    const/4 v0, 0x0

    .line 518
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 519
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 520
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 521
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 523
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_32
    goto :goto_14

    .line 524
    :cond_33
    monitor-exit v1

    .line 525
    return v0

    .line 524
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 2

    .line 838
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getSuppressedEffects()J
    .registers 3

    .line 289
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    return-wide v0
.end method

.method public getZenMode()I
    .registers 2

    .line 293
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .registers 2

    .line 271
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    return v0
.end method

.method public getZenRules()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 299
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v2, :cond_e

    monitor-exit v1

    return-object v0

    .line 300
    :cond_e
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 301
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 302
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2d
    goto :goto_18

    .line 305
    :cond_2e
    monitor-exit v1

    .line 306
    return-object v0

    .line 305
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public initZenMode()V
    .registers 3

    .line 213
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ZenModeHelper"

    const-string v1, "initZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_b
    const/4 v0, 0x1

    const-string v1, "init"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 215
    return-void
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 187
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 15
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .line 180
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v1 .. v8}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 183
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onSystemReady()V
    .registers 4

    .line 218
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    const-string/jumbo v1, "onSystemReady"

    if-eqz v0, :cond_c

    const-string v0, "ZenModeHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_c
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 220
    if-eqz v0, :cond_1d

    .line 221
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-virtual {v0, v2}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 223
    :cond_1d
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 224
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostMetricsTimer(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 225
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 227
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mIsBootComplete:Z

    .line 228
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->showZenUpgradeNotification(I)V

    .line 229
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 4
    .param p1, "user"    # I

    .line 236
    if-gez p1, :cond_3

    return-void

    .line 237
    :cond_3
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserRemoved u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_20
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 239
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 3
    .param p1, "user"    # I

    .line 232
    const-string/jumbo v0, "onUserSwitched"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 233
    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 3
    .param p1, "user"    # I

    .line 242
    const-string/jumbo v0, "onUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 243
    return-void
.end method

.method public pullRules(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1255
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 1256
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1257
    .local v1, "numConfigs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_91

    .line 1258
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1259
    .local v3, "user":I
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig;

    .line 1260
    .local v4, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v5}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    const/16 v6, 0x2764

    .line 1261
    invoke-virtual {v5, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    .line 1262
    invoke-virtual {v5, v3}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v7, 0x1

    if-eqz v6, :cond_31

    move v6, v7

    goto :goto_32

    :cond_31
    const/4 v6, 0x0

    .line 1263
    :goto_32
    invoke-virtual {v5, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    iget-boolean v6, v4, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    .line 1264
    invoke-virtual {v5, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    const/4 v6, -0x1

    .line 1265
    invoke-virtual {v5, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    const-string v6, ""

    .line 1266
    invoke-virtual {v5, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    const/16 v6, 0x3e8

    .line 1267
    invoke-virtual {v5, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    .line 1268
    invoke-virtual {v5, v7, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    .line 1269
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->toZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeByteArray([B)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    .line 1270
    .local v5, "data":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    invoke-virtual {v5}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v6, :cond_73

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v6, :cond_73

    .line 1272
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v3, v6, p1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;Ljava/util/List;)V

    .line 1274
    :cond_73
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1275
    .local v7, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, v3, v7, p1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;Ljava/util/List;)V

    .line 1276
    .end local v7    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_7d

    .line 1257
    .end local v3    # "user":I
    .end local v4    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v5    # "data":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    :cond_8d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 1278
    .end local v1    # "numConfigs":I
    .end local v2    # "i":I
    :cond_91
    monitor-exit v0

    .line 1279
    return-void

    .line 1278
    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw v1
.end method

.method public readXml(Landroid/util/TypedXmlPullParser;ZI)V
    .registers 20
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "forRestore"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    move-object/from16 v1, p0

    move/from16 v0, p3

    invoke-static/range {p1 .. p1}, Landroid/service/notification/ZenModeConfig;->readXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 765
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v3, "readXml"

    .line 767
    .local v3, "reason":Ljava/lang/String;
    if-eqz v2, :cond_d3

    .line 768
    const/4 v4, 0x0

    if-eqz p2, :cond_14

    .line 769
    iput v0, v2, Landroid/service/notification/ZenModeConfig;->user:I

    .line 770
    iput-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 774
    :cond_14
    const/4 v5, 0x1

    .line 775
    .local v5, "allRulesDisabled":Z
    iget-object v6, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    sget-object v7, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    .line 778
    .local v6, "hasDefaultRules":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 779
    .local v7, "time":J
    iget-object v9, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_52

    iget-object v9, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_52

    .line 780
    iget-object v9, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_39
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_52

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 781
    .local v12, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz p2, :cond_4d

    .line 783
    iput-boolean v10, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 784
    iput-object v4, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 785
    iput-wide v7, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 788
    :cond_4d
    iget-boolean v13, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    xor-int/2addr v13, v11

    and-int/2addr v5, v13

    .line 789
    .end local v12    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_39

    .line 792
    :cond_52
    const/16 v9, 0x8

    if-nez v6, :cond_9a

    if-eqz v5, :cond_9a

    if-nez p2, :cond_5e

    iget v12, v2, Landroid/service/notification/ZenModeConfig;->version:I

    if-ge v12, v9, :cond_9a

    .line 797
    :cond_5e
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    iput-object v12, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 798
    iget-object v12, v1, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v12, v12, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_71
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_85

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 799
    .local v13, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v14, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v15, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    .end local v13    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_71

    .line 801
    :cond_85
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", reset to default rules"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_9b

    .line 805
    :cond_9a
    move-object v12, v3

    .end local v3    # "reason":Ljava/lang/String;
    .local v12, "reason":Ljava/lang/String;
    :goto_9b
    const/4 v3, -0x1

    if-ne v0, v3, :cond_9f

    goto :goto_a0

    :cond_9f
    move v10, v0

    .line 806
    .end local p3    # "userId":I
    .local v10, "userId":I
    :goto_a0
    iget v0, v2, Landroid/service/notification/ZenModeConfig;->version:I

    if-ge v0, v9, :cond_b1

    .line 807
    iget-object v0, v1, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "show_zen_upgrade_notification"

    invoke-static {v0, v3, v11, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_bd

    .line 811
    :cond_b1
    iget-object v0, v1, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "zen_settings_updated"

    invoke-static {v0, v3, v11, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 814
    :goto_bd
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_c6

    const-string v0, "ZenModeHelper"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_c6
    iget-object v9, v1, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v9

    .line 816
    :try_start_c9
    invoke-virtual {v1, v2, v4, v12}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 817
    monitor-exit v9

    move v0, v10

    move-object v3, v12

    goto :goto_d3

    :catchall_d0
    move-exception v0

    monitor-exit v9
    :try_end_d2
    .catchall {:try_start_c9 .. :try_end_d2} :catchall_d0

    throw v0

    .line 819
    .end local v5    # "allRulesDisabled":Z
    .end local v6    # "hasDefaultRules":Z
    .end local v7    # "time":J
    .end local v10    # "userId":I
    .end local v12    # "reason":Ljava/lang/String;
    .local v0, "userId":I
    .restart local v3    # "reason":Ljava/lang/String;
    :cond_d3
    :goto_d3
    return-void
.end method

.method public recordCaller(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 191
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->recordCall(Lcom/android/server/notification/NotificationRecord;)V

    .line 192
    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 401
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    .line 402
    :cond_a
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 403
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 404
    .local v3, "ruleToRemove":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v3, :cond_1a

    monitor-exit v0

    return v2

    .line 405
    :cond_1a
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 406
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_72

    const-string v2, "android"

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 408
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 409
    .local v4, "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 410
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 411
    goto :goto_63

    .line 413
    .end local v4    # "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_62
    goto :goto_41

    .line 414
    :cond_63
    :goto_63
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v4, v5}, Lcom/android/server/notification/ZenModeHelper;->getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_72
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_99

    const-string v2, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeZenRule zenRule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_99
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->user:I

    .line 422
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 421
    invoke-direct {p0, v2, v4, p1, v5}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    .line 423
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, p2, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 418
    :cond_ad
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Cannot delete rules not owned by your condition provider"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "reason":Ljava/lang/String;
    throw v2

    .line 424
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v3    # "ruleToRemove":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "id":Ljava/lang/String;
    .restart local p2    # "reason":Ljava/lang/String;
    :catchall_b5
    move-exception v1

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_3 .. :try_end_b7} :catchall_b5

    throw v1
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 431
    :cond_a
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 432
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_3e

    .line 433
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 434
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 435
    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 432
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3b
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 438
    .end local v2    # "i":I
    :cond_3e
    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 439
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 209
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "filter"    # I

    .line 275
    const/4 v0, -0x1

    invoke-static {p2, v0}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v1

    .line 276
    .local v1, "newZen":I
    if-eq v1, v0, :cond_2e

    .line 277
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_f
    move-object v2, v0

    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 278
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    goto :goto_23

    :cond_22
    move-object v4, v0

    :goto_23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_2e
    return-void
.end method

.method public setAutomaticZenRuleState(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    .registers 6
    .param p1, "ruleDefinition"    # Landroid/net/Uri;
    .param p2, "condition"    # Landroid/service/notification/Condition;

    .line 456
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 457
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 458
    :cond_9
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 460
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    nop

    .line 461
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->findMatchingRules(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Ljava/util/List;

    move-result-object v2

    .line 460
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;)V

    .line 463
    monitor-exit v0

    .line 464
    return-void

    .line 463
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "condition"    # Landroid/service/notification/Condition;

    .line 444
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 445
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 447
    :cond_9
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 448
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v2, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;)V

    .line 451
    .end local v2    # "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    monitor-exit v0

    .line 452
    return-void

    .line 451
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p3, "reason"    # Ljava/lang/String;

    .line 904
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 905
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 906
    monitor-exit v0

    .line 907
    return-void

    .line 906
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p3, "reason"    # Ljava/lang/String;

    .line 900
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .line 656
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 657
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_zen_settings_suggestion"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 659
    return-void
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 6
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 849
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_7

    goto :goto_1e

    .line 850
    :cond_7
    monitor-enter v0

    .line 851
    :try_start_8
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 852
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v1, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 853
    const/4 v2, 0x0

    const-string/jumbo v3, "setNotificationPolicy"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 854
    nop

    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    monitor-exit v0

    .line 855
    return-void

    .line 854
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1b

    throw v1

    .line 849
    :cond_1e
    :goto_1e
    return-void
.end method

.method setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V
    .registers 2
    .param p1, "packages"    # [Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setSuppressedEffects(J)V
    .registers 5
    .param p1, "suppressedEffects"    # J

    .line 283
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 284
    :cond_7
    iput-wide p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    .line 285
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 286
    return-void
.end method

.method protected setZenModeSetting(I)V
    .registers 4
    .param p1, "zen"    # I

    .line 965
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 966
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->showZenUpgradeNotification(I)V

    .line 967
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 199
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 201
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 175
    const-string v0, "ZenModeHelper"

    return-object v0
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z
    .registers 12
    .param p1, "ruleId"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p3, "reason"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    .line 372
    :cond_a
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_31

    .line 373
    const-string v1, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutomaticZenRule zenRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_31
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 378
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    if-eqz p1, :cond_7b

    .line 381
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 382
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v3, :cond_73

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 387
    iget-boolean v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_66

    .line 388
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    .line 389
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 390
    move v7, v6

    goto :goto_63

    :cond_62
    const/4 v7, 0x2

    .line 388
    :goto_63
    invoke-direct {p0, v4, v5, p1, v7}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    .line 393
    :cond_66
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-direct {p0, v4, p2, v3, v2}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 394
    iget-object v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-direct {p0, v1, p3, v2, v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 383
    :cond_73
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Cannot update rules not owned by your condition provider"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "ruleId":Ljava/lang/String;
    .end local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p3    # "reason":Ljava/lang/String;
    throw v2

    .line 379
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "ruleId":Ljava/lang/String;
    .restart local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p3    # "reason":Ljava/lang/String;
    :cond_7b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Rule doesn\'t exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "ruleId":Ljava/lang/String;
    .end local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p3    # "reason":Ljava/lang/String;
    throw v2

    .line 395
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "ruleId":Ljava/lang/String;
    .restart local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p3    # "reason":Ljava/lang/String;
    :catchall_83
    move-exception v1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_3 .. :try_end_85} :catchall_83

    throw v1
.end method

.method protected updateDefaultZenRules()V
    .registers 7

    .line 567
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRuleNames()V

    .line 568
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 569
    .local v1, "defaultRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 572
    .local v2, "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v2, :cond_7a

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    if-nez v3, :cond_7a

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v3, :cond_7a

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 573
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 574
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 575
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_6b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locale change - updating default zen rule name from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZenModeHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_6b
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 579
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v4

    const-string v5, "locale changed"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z

    .line 583
    .end local v1    # "defaultRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v2    # "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_7a
    goto :goto_f

    .line 584
    :cond_7b
    return-void
.end method

.method public writeXml(Landroid/util/TypedXmlSerializer;ZLjava/lang/Integer;I)V
    .registers 9
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "forBackup"    # Z
    .param p3, "version"    # Ljava/lang/Integer;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    monitor-enter v0

    .line 824
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 825
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_25

    .line 826
    if-eqz p2, :cond_17

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-eq v3, p4, :cond_17

    .line 827
    goto :goto_22

    .line 829
    :cond_17
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeXml(Landroid/util/TypedXmlSerializer;Ljava/lang/Integer;)V

    .line 825
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 831
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_25
    monitor-exit v0

    .line 832
    return-void

    .line 831
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method
