.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# static fields
.field public static final DEBUG:Z

.field public static final DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

.field public static final IMPLICIT_RULE_KEPT_FOR:Ljava/time/Duration;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field protected mAudioManager:Landroid/media/AudioManagerInternal;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mClock:Ljava/time/Clock;

.field protected final mConditions:Lcom/android/server/notification/ZenModeConditions;

.field protected mConfig:Landroid/service/notification/ZenModeConfig;

.field public final mConfigLock:Ljava/lang/Object;

.field final mConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field protected mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field public mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

.field public final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field public final mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

.field public final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field protected mIsSystemServicesReady:Z

.field public final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

.field public final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

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

.field public final mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

.field public final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field public mSuppressedEffects:J

.field public mUser:I

.field protected mZenMode:I

.field public final mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;


# direct methods
.method public static synthetic $r8$lambda$0g2TCyxqVWjORDguCddL_QuImw0(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->lambda$updateImplicitZenRuleNameAndDescription$0(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Y6UWStRzjZ6nvNm1-qNw0sA5E6c(ZZZZZZI)Z
    .registers 7

    .line 2309
    invoke-static {p6}, Landroid/media/AudioAttributes;->getSuppressibleUsage(I)I

    move-result p6

    packed-switch p6, :pswitch_data_26

    return p1

    :pswitch_8
    if-nez p5, :cond_23

    if-eqz p1, :cond_21

    goto :goto_23

    :pswitch_d
    if-nez p4, :cond_23

    if-eqz p1, :cond_21

    goto :goto_23

    :pswitch_12
    if-nez p3, :cond_23

    if-eqz p1, :cond_21

    goto :goto_23

    :pswitch_17
    if-nez p2, :cond_23

    if-eqz p1, :cond_21

    goto :goto_23

    :pswitch_1c
    if-nez p0, :cond_23

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    :pswitch_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_17
        :pswitch_21
        :pswitch_12
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method public static synthetic $r8$lambda$jCGBJWj1oyQ155mkPHIohH7fSEU(Ljava/util/function/IntPredicate;I)Z
    .registers 3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_c

    .line 2321
    invoke-interface {p0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigLock(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetrics(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mapplyConsolidatedDeviceEffects(Lcom/android/server/notification/ZenModeHelper;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->applyConsolidatedDeviceEffects(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetZenModeSetting(Lcom/android/server/notification/ZenModeHelper;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRingerAndAudio(Lcom/android/server/notification/ZenModeHelper;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->updateRingerAndAudio(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 148
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    const-wide/16 v0, 0x1e

    .line 155
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/android/server/notification/ZenModeHelper;->DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

    .line 161
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ZenModeHelper;->IMPLICIT_RULE_KEPT_FOR:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/time/Clock;Lcom/android/server/notification/ConditionProviders;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Lcom/android/server/notification/ZenModeEventLogger;)V
    .registers 13

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 186
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 188
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$Metrics;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper-IA;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 195
    new-instance v3, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v3}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 196
    invoke-virtual {v3}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    const/4 v3, 0x0

    .line 197
    iput v3, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 199
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 221
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 222
    new-instance v5, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v5, p0, p2, v2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper-IA;)V

    iput-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 223
    iput-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    .line 224
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 225
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 227
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 228
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    .line 230
    monitor-enter v4

    .line 231
    :try_start_5e
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 232
    invoke-virtual {v0, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_93

    .line 234
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 236
    new-instance p2, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-direct {p2, p0, v5}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 237
    invoke-virtual {p2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 238
    new-instance p2, Lcom/android/server/notification/ZenModeFiltering;

    invoke-direct {p2, p1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 239
    new-instance p1, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {p1, p0, p4}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 240
    invoke-virtual {p4}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 241
    iput-object p5, p0, Lcom/android/server/notification/ZenModeHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 242
    iput-object p6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;

    return-void

    :catchall_93
    move-exception p0

    .line 233
    :try_start_94
    monitor-exit v4
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p0
.end method

.method public static applyConditionAndReconsiderOverride(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;I)V
    .registers 5

    .line 938
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 942
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 943
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    return-void

    :cond_e
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v0, :cond_39

    if-eqz p1, :cond_39

    .line 944
    iget v0, p1, Landroid/service/notification/Condition;->source:I

    if-ne v0, v1, :cond_39

    .line 952
    iget p1, p1, Landroid/service/notification/Condition;->state:I

    if-ne p1, v1, :cond_29

    .line 953
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 954
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result p1

    if-nez p1, :cond_38

    .line 955
    invoke-virtual {p0, v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    return-void

    :cond_29
    if-nez p1, :cond_38

    .line 958
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 959
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x2

    .line 960
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    :cond_38
    return-void

    :cond_39
    const/4 v0, 0x7

    if-ne p2, v0, :cond_48

    if-eqz p1, :cond_48

    .line 963
    iget p2, p1, Landroid/service/notification/Condition;->source:I

    if-ne p2, v1, :cond_48

    .line 968
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 969
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    return-void

    .line 973
    :cond_48
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 974
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->reconsiderConditionOverride()V

    return-void
.end method

.method public static checkManageRuleOrigin(Ljava/lang/String;I)V
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_c

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    .line 2717
    :goto_d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2713
    const-string p1, "Expected one of ORIGIN_APP, ORIGIN_SYSTEM, or ORIGIN_USER_IN_SYSTEMUI for %s, but received \'%s\'."

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static checkSetRuleStateOrigin(Ljava/lang/String;I)V
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    const/4 v0, 0x7

    if-eq p1, v0, :cond_f

    const/4 v0, 0x5

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 2729
    :goto_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2725
    const-string p1, "Expected one of ORIGIN_APP, ORIGIN_USER_IN_APP, ORIGIN_SYSTEM, or ORIGIN_USER_IN_SYSTEMUI for %s, but received \'%s\'."

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static doesOriginAlwaysUpdateValues(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .registers 4

    .line 1648
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0x3d

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 1649
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static findMatchingRules(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Ljava/util/List;
    .registers 6

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 981
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {p1, p2, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 982
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 984
    :cond_13
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 985
    invoke-static {p1, p2, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 986
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_33
    return-object v0
.end method

.method public static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1794
    :cond_4
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 2513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maybeReplaceDefaultRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;)V
    .registers 5

    .line 529
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    if-eqz p1, :cond_11

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 530
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result p2

    if-eq p1, p2, :cond_2c

    .line 533
    :cond_11
    iget-object p1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const-string p2, "EVERY_NIGHT_DEFAULT_RULE"

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p1, :cond_2c

    .line 535
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v0, :cond_2c

    .line 537
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result p1

    if-nez p1, :cond_2c

    .line 538
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-void
.end method

.method public static ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    if-eqz p2, :cond_1c

    .line 994
    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_a

    goto :goto_1c

    .line 995
    :cond_a
    invoke-virtual {v1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    return v0

    .line 996
    :cond_11
    iget-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    return v0

    :cond_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static updateDefaultAutomaticRulePolicies(Landroid/service/notification/ZenModeConfig;)V
    .registers 5

    .line 2272
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 2273
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2274
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v2, :cond_e

    .line 2275
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_e

    :cond_31
    return-void
.end method

.method public static updateDefaultConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V
    .registers 2

    .line 2250
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRulePolicies(Landroid/service/notification/ZenModeConfig;)V

    .line 2251
    invoke-static {p0, p1}, Landroid/service/notification/SystemZenRules;->maybeUpgradeRules(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    .line 2252
    invoke-static {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method public static updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V
    .registers 5

    .line 2257
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2258
    const-string v1, "EVENTS_DEFAULT_RULE"

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2259
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040b51

    .line 2260
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_45

    .line 2261
    :cond_2e
    const-string v1, "EVERY_NIGHT_DEFAULT_RULE"

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2262
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040b52

    .line 2263
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 2265
    :cond_45
    :goto_45
    invoke-static {p0, v0}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    goto :goto_a

    :cond_49
    return-void
.end method

.method public static updateZenDeviceEffects(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenDeviceEffects;ZZ)Z
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1414
    :cond_4
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v0, :cond_9

    goto :goto_12

    .line 1416
    :cond_9
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    :goto_12
    if-eqz p2, :cond_65

    .line 1420
    new-instance p2, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {p2, p1}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>(Landroid/service/notification/ZenDeviceEffects;)V

    .line 1423
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result p1

    .line 1422
    invoke-virtual {p2, p1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1424
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1425
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1426
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1427
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1428
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1429
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightLight(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1430
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->getBrightnessCap()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setBrightnessCap(Ljava/lang/Float;)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1431
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1432
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object p1

    .line 1435
    :cond_65
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz p3, :cond_111

    .line 1438
    iget p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 1439
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v1

    if-eq p3, v1, :cond_77

    or-int/lit8 p2, p2, 0x1

    .line 1442
    :cond_77
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result p3

    .line 1443
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v1

    if-eq p3, v1, :cond_83

    or-int/lit8 p2, p2, 0x2

    .line 1446
    :cond_83
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v1

    if-eq p3, v1, :cond_8f

    or-int/lit8 p2, p2, 0x4

    .line 1449
    :cond_8f
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v1

    if-eq p3, v1, :cond_9b

    or-int/lit8 p2, p2, 0x8

    .line 1452
    :cond_9b
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result p3

    .line 1453
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v1

    if-eq p3, v1, :cond_a7

    or-int/lit8 p2, p2, 0x10

    .line 1456
    :cond_a7
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v1

    if-eq p3, v1, :cond_b3

    or-int/lit8 p2, p2, 0x20

    .line 1459
    :cond_b3
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v1

    if-eq p3, v1, :cond_bf

    or-int/lit8 p2, p2, 0x40

    .line 1462
    :cond_bf
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v1

    if-eq p3, v1, :cond_cb

    or-int/lit16 p2, p2, 0x80

    .line 1465
    :cond_cb
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v1

    if-eq p3, v1, :cond_d7

    or-int/lit16 p2, p2, 0x100

    .line 1468
    :cond_d7
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v1

    if-eq p3, v1, :cond_e3

    or-int/lit16 p2, p2, 0x200

    .line 1471
    :cond_e3
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v1

    if-eq p3, v1, :cond_ef

    or-int/lit16 p2, p2, 0x800

    .line 1476
    :cond_ef
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->getBrightnessCap()Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getBrightnessCap()Ljava/lang/Float;

    move-result-object v1

    .line 1475
    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_ff

    or-int/lit16 p2, p2, 0x1000

    .line 1479
    :cond_ff
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v1

    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_10f

    or-int/lit16 p2, p2, 0x400

    .line 1482
    :cond_10f
    iput p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 1485
    :cond_111
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenDeviceEffects;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zenSeverity(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v1

    :cond_c
    return v0
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;Landroid/app/AutomaticZenRule;ILjava/lang/String;I)Ljava/lang/String;
    .registers 16

    .line 432
    const-string v0, "addAutomaticZenRule"

    invoke-static {v0, p4}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    .line 433
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 434
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 436
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    :cond_1f
    if-eqz v0, :cond_56

    .line 442
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, -0x1

    if-eqz v0, :cond_2c

    .line 443
    const-string v2, "android.service.zen.automatic.ruleInstanceLimit"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 446
    :cond_2c
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/os/UserHandle;Landroid/content/ComponentName;)I

    move-result v0

    .line 447
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/os/UserHandle;Landroid/content/ComponentName;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 449
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/ZenModeHelper;->getPackageRuleCount(Landroid/os/UserHandle;Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x64

    if-gt v2, v3, :cond_4e

    if-lez v1, :cond_5e

    if-lt v1, v0, :cond_4e

    goto :goto_5e

    .line 452
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Rule instance limit exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 439
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lacking enabled CPS or config activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 457
    :cond_5e
    :goto_5e
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_61
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-eqz p1, :cond_cc

    .line 462
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_8d

    .line 463
    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAutomaticZenRule rule= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :catchall_8a
    move-exception v0

    move-object p0, v0

    goto :goto_d4

    .line 465
    :cond_8d
    :goto_8d
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 466
    new-instance v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    const/4 v8, 0x1

    move-object v2, p0

    move-object v4, p3

    move v7, p4

    move-object v6, v5

    move-object v5, v3

    move-object v3, p2

    .line 467
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z

    move-object v3, v5

    move-object v4, p2

    move-object v5, v6

    move-object v6, p3

    .line 468
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->maybeRestoreRemovedRule(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;I)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p1

    .line 469
    iget-object p2, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 470
    invoke-static {v3, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->maybeReplaceDefaultRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;)V

    .line 472
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p4

    move-object v5, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result p0

    if-eqz p0, :cond_c4

    .line 473
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    monitor-exit v1

    return-object p0

    .line 475
    :cond_c4
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Could not create rule"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 460
    :cond_cc
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Could not create rule"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 477
    :goto_d4
    monitor-exit v1
    :try_end_d5
    .catchall {:try_start_61 .. :try_end_d5} :catchall_8a

    throw p0
.end method

.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 2

    .line 279
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final applyConsolidatedDeviceEffects(I)V
    .registers 4

    .line 2232
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2233
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    .line 2234
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 2235
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e

    if-eqz v1, :cond_d

    .line 2237
    invoke-interface {v1, p0, p1}, Landroid/service/notification/DeviceEffectsApplier;->apply(Landroid/service/notification/ZenDeviceEffects;I)V

    :cond_d
    return-void

    :catchall_e
    move-exception p0

    .line 2235
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .registers 7

    .line 2141
    iget v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 2142
    invoke-static {}, Landroid/service/notification/ZenPolicy;->getBasePolicyInterruptionFilterNone()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    :cond_d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 2144
    invoke-static {}, Landroid/service/notification/ZenPolicy;->getBasePolicyInterruptionFilterAlarms()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    .line 2145
    :cond_18
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v0, :cond_20

    .line 2146
    invoke-virtual {p2, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    :cond_20
    if-eqz p4, :cond_2a

    .line 2150
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    .line 2156
    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "active automatic rule found with no specified policy: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ZenModeHelper"

    invoke-static {p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void
.end method

.method public applyGlobalPolicyAsImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V
    .registers 13

    .line 662
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 663
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_e

    .line 665
    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    move-object p0, v0

    goto :goto_58

    .line 667
    :cond_e
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 669
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v0, :cond_31

    .line 672
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    const/4 p2, 0x1

    .line 673
    iput p2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 674
    iget-object v2, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2e
    move v7, p2

    move-object v4, v0

    goto :goto_36

    .line 676
    :cond_31
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    const/4 p2, 0x0

    goto :goto_2e

    .line 681
    :goto_36
    iget p2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    if-nez p2, :cond_56

    .line 682
    invoke-static {p4}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    move-result-object p2

    if-eqz v7, :cond_48

    .line 689
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object p2

    :cond_48
    move-object v5, p2

    const/4 v6, 0x0

    move-object v2, p0

    .line 691
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z

    .line 698
    const-string v6, "applyGlobalPolicyAsImplicitZenRule"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 701
    :cond_56
    monitor-exit v1

    return-void

    :goto_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_b

    throw p0
.end method

.method public applyGlobalZenModeAsImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;II)V
    .registers 14

    .line 599
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_f

    .line 602
    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_94

    .line 604
    :cond_f
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 605
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez p4, :cond_50

    if-eqz v0, :cond_92

    .line 609
    new-instance v5, Landroid/service/notification/Condition;

    iget-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object p4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const v2, 0x1040b62

    .line 610
    invoke-virtual {p4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    invoke-direct {v5, p1, p4, v2}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 612
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "applyGlobalZenModeAsImplicitZenRule: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x4

    move-object v2, p0

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V

    goto :goto_92

    :cond_50
    move-object v2, p0

    move v7, p3

    if-nez v0, :cond_6a

    .line 620
    invoke-virtual {v2, p2}, Lcom/android/server/notification/ZenModeHelper;->newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    .line 627
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 628
    iget-object p0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 630
    :cond_6a
    invoke-virtual {v2, v0}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 635
    :goto_6d
    iget p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_75

    .line 636
    iput p4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 638
    :cond_75
    new-instance p0, Landroid/service/notification/Condition;

    iget-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object p2, v2, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const p3, 0x1040b61

    .line 639
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 641
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 643
    const-string v6, "applyGlobalZenModeAsImplicitZenRule"

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 646
    :cond_92
    :goto_92
    monitor-exit v1

    return-void

    :goto_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_b

    throw p0
.end method

.method public applyRestrictions()V
    .registers 19

    move-object/from16 v0, p0

    .line 2282
    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    move v4, v3

    goto :goto_b

    :cond_a
    move v4, v2

    :goto_b
    if-ne v1, v3, :cond_f

    move v5, v3

    goto :goto_10

    :cond_f
    move v5, v2

    :goto_10
    const/4 v6, 0x2

    if-ne v1, v6, :cond_15

    move v6, v3

    goto :goto_16

    :cond_15
    move v6, v2

    :goto_16
    const/4 v7, 0x3

    if-ne v1, v7, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 2286
    :goto_1c
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v8}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v8

    if-eqz v8, :cond_2e

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2287
    invoke-virtual {v8}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v8

    if-nez v8, :cond_2e

    move v8, v3

    goto :goto_2f

    :cond_2e
    move v8, v2

    :goto_2f
    const-wide/16 v9, 0x0

    if-nez v4, :cond_3f

    .line 2290
    iget-wide v11, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v13, 0x1

    and-long/2addr v11, v13

    cmp-long v4, v11, v9

    if-eqz v4, :cond_3d

    goto :goto_3f

    :cond_3d
    move v12, v2

    goto :goto_40

    :cond_3f
    :goto_3f
    move v12, v3

    :goto_40
    if-nez v1, :cond_5a

    if-eqz v5, :cond_4e

    if-eqz v8, :cond_5a

    .line 2293
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2294
    invoke-virtual {v4}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v4

    if-eqz v4, :cond_5a

    :cond_4e
    iget-wide v13, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v15, 0x2

    and-long/2addr v13, v15

    cmp-long v4, v13, v9

    if-eqz v4, :cond_58

    goto :goto_5a

    :cond_58
    move v14, v2

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v14, v3

    :goto_5b
    if-eqz v5, :cond_67

    .line 2297
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v4}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v4

    if-nez v4, :cond_67

    move v15, v3

    goto :goto_68

    :cond_67
    move v15, v2

    :goto_68
    if-eqz v5, :cond_75

    .line 2299
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v4}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v4

    if-nez v4, :cond_75

    move/from16 v16, v3

    goto :goto_77

    :cond_75
    move/from16 v16, v2

    :goto_77
    if-nez v1, :cond_87

    if-eqz v5, :cond_84

    .line 2301
    iget-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2302
    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v1

    if-nez v1, :cond_84

    goto :goto_87

    :cond_84
    move/from16 v17, v2

    goto :goto_89

    :cond_87
    :goto_87
    move/from16 v17, v3

    :goto_89
    if-nez v6, :cond_98

    if-eqz v5, :cond_96

    .line 2304
    iget-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2306
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v1

    if-eqz v1, :cond_96

    goto :goto_98

    :cond_96
    move v13, v2

    goto :goto_99

    :cond_98
    :goto_98
    move v13, v3

    .line 2308
    :goto_99
    new-instance v11, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;

    invoke-direct/range {v11 .. v17}, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;-><init>(ZZZZZZ)V

    .line 2320
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v11}, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/IntPredicate;)V

    const/16 v2, 0x1c

    .line 2323
    invoke-virtual {v0, v5, v11, v2}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZLjava/util/function/IntPredicate;I)V

    .line 2324
    invoke-virtual {v0, v5, v1, v7}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZLjava/util/function/IntPredicate;I)V

    return-void
.end method

.method public applyRestrictions(ZLjava/util/function/IntPredicate;I)V
    .registers 14

    .line 2330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2332
    :try_start_4
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 2333
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 2335
    invoke-static {}, Landroid/media/AudioAttributes;->getSdkUsages()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_15
    if-ge v7, v5, :cond_2b

    aget v8, v4, v7

    .line 2336
    invoke-interface {p2, v8}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 2337
    invoke-virtual {v3, v8}, Landroid/util/IntArray;->add(I)V

    goto :goto_28

    :catchall_23
    move-exception p0

    goto :goto_4d

    .line 2339
    :cond_25
    invoke-virtual {v2, v8}, Landroid/util/IntArray;->add(I)V

    :goto_28
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 2343
    :cond_2b
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p1, :cond_37

    .line 2345
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    goto :goto_38

    :cond_37
    move-object v5, v4

    :goto_38
    const/4 v7, 0x1

    .line 2343
    invoke-virtual {p2, p3, v3, v7, v5}, Landroid/app/AppOpsManager;->setAudioRestriction(I[II[Ljava/lang/String;)V

    .line 2348
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    if-eqz p1, :cond_46

    .line 2350
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    .line 2348
    :cond_46
    invoke-virtual {p2, p3, v2, v6, v4}, Landroid/app/AppOpsManager;->setAudioRestriction(I[II[Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_23

    .line 2353
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2354
    throw p0
.end method

.method public applyZenToRingerMode()V
    .registers 4

    .line 2359
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_5

    goto :goto_33

    .line 2361
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v0

    .line 2363
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v1, :cond_1f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    goto :goto_29

    :cond_14
    if-eqz v0, :cond_29

    .line 2367
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    goto :goto_29

    :cond_1f
    if-nez v0, :cond_29

    .line 2376
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting()I

    move-result v0

    const/4 v1, 0x0

    .line 2377
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    :cond_29
    :goto_29
    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 2382
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v1, "ZenModeHelper"

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z
    .registers 8

    const/4 v0, 0x1

    if-eqz p2, :cond_31

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_8

    goto :goto_31

    .line 1042
    :cond_8
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_13

    return v0

    .line 1046
    :cond_13
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_30

    .line 1048
    array-length v1, p0

    move v2, p2

    :goto_1e
    if-ge v2, v1, :cond_30

    .line 1050
    aget-object v3, p0, v2

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_30
    return p2

    :cond_31
    :goto_31
    return v0
.end method

.method public cleanUpCallersAfter(J)V
    .registers 3

    .line 269
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->cleanUpCallersAfter(J)V

    return-void
.end method

.method public final cleanUpZenRules()V
    .registers 10

    .line 1822
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/ZenModeHelper;->DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    .line 1823
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1824
    :try_start_f
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    .line 1826
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V

    .line 1827
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V

    .line 1829
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_27
    if-ltz v2, :cond_47

    .line 1830
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1831
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    if-eqz v3, :cond_3f

    .line 1832
    invoke-virtual {v3, v0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_3f

    :catchall_3c
    move-exception v0

    move-object p0, v0

    goto :goto_60

    .line 1833
    :cond_3f
    :goto_3f
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 1837
    :cond_47
    iget-object v0, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->deleteUnusedImplicitRules(Landroid/util/ArrayMap;)V

    .line 1839
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v0}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1840
    const-string v7, "cleanUpZenRules"

    const/16 v8, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1843
    :cond_5e
    monitor-exit v1

    return-void

    :goto_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_f .. :try_end_61} :catchall_3c

    throw p0
.end method

.method public final computeZenMode()I
    .registers 6

    .line 2123
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto :goto_4a

    .line 2125
    :cond_c
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    monitor-exit v0

    return p0

    .line 2127
    :cond_1a
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2128
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2129
    iget v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v3

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v4

    if-le v3, v4, :cond_26

    .line 2130
    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    move v2, v1

    goto :goto_26

    .line 2134
    :cond_48
    monitor-exit v0

    return v2

    .line 2135
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_a

    throw p0
.end method

.method public final deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V
    .registers 10

    .line 1847
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    if-eqz p1, :cond_39

    .line 1849
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_39

    .line 1850
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1851
    iget-wide v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xf731400

    cmp-long v4, v6, v4

    if-gez v4, :cond_36

    .line 1853
    :try_start_21
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 1854
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x400000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_32} :catch_33

    goto :goto_36

    .line 1857
    :catch_33
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_39
    return-void
.end method

.method public final deleteUnusedImplicitRules(Landroid/util/ArrayMap;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_45

    .line 1868
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/ZenModeHelper;->IMPLICIT_RULE_KEPT_FOR:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    .line 1870
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_45

    .line 1871
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1872
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result v3

    if-nez v3, :cond_42

    .line 1873
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    if-nez v3, :cond_37

    .line 1877
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 1880
    :cond_37
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    invoke-virtual {v2, v0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1881
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_45
    :goto_45
    return-void
.end method

.method public final dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 2412
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2413
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$Callback;->onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_7

    :cond_15
    return-void
.end method

.method public final dispatchOnConfigChanged()V
    .registers 4

    .line 2387
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2388
    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_7

    :cond_15
    return-void
.end method

.method public final dispatchOnConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .registers 5

    .line 2399
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2400
    invoke-virtual {v2, p1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    goto :goto_7

    :cond_15
    return-void
.end method

.method public final dispatchOnPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .registers 5

    .line 2393
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2394
    invoke-virtual {v2, p1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    goto :goto_7

    :cond_15
    return-void
.end method

.method public final dispatchOnZenModeChanged()V
    .registers 4

    .line 2405
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2406
    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_7

    :cond_15
    return-void
.end method

.method public final drawableResIdToResName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 2687
    const-string v0, "Resource name for ID="

    const-string v1, "ZenModeHelper"

    const/4 v2, 0x0

    if-nez p2, :cond_8

    return-object v2

    .line 2690
    :cond_8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    :try_start_b
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 2693
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4b

    .line 2694
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_4b

    .line 2695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is too long ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2696
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "); ignoring it"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2695
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_4a} :catch_4c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_4a} :catch_4c

    return-object v2

    :cond_4b
    return-object p0

    .line 2701
    :catch_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not found in package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Resource IDs may change when the application is upgraded, and the system may not be able to find the correct resource."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final drawableResNameToResId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 2674
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2678
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, 0x0

    .line 2679
    invoke-virtual {p0, p2, p1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    .line 2681
    const-string p1, "ZenModeHelper"

    const-string p2, "cannot load rule icon for pkg"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    const-wide v0, 0x10e00000001L

    .line 1608
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1609
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1610
    :try_start_d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v1

    const-wide v2, 0x20b00000002L

    if-eqz v1, :cond_24

    .line 1611
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_60

    .line 1613
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1614
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1615
    invoke-virtual {v4, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_30

    .line 1618
    :cond_46
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/app/NotificationManager$Policy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1619
    iget-wide v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1620
    monitor-exit v0

    return-void

    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_d .. :try_end_61} :catchall_22

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 1624
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1625
    const-string v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1626
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConsolidatedPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1630
    :try_start_31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConsolidatedDeviceEffects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_55
    if-ge v2, v1, :cond_83

    .line 1634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mConfigs[u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :catchall_81
    move-exception p0

    goto :goto_b7

    .line 1636
    :cond_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_31 .. :try_end_84} :catchall_81

    .line 1637
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1638
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1639
    :try_start_94
    const-string v0, "mConfig"

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v0, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 1640
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_b4

    .line 1642
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSuppressedEffects="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1643
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1644
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :catchall_b4
    move-exception p0

    .line 1640
    :try_start_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p0

    .line 1636
    :goto_b7
    :try_start_b7
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_81

    throw p0
.end method

.method public evaluateZenModeLocked(ILjava/lang/String;Z)V
    .registers 8

    .line 2093
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ZenModeHelper"

    const-string v1, "evaluateZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_10

    goto :goto_48

    .line 2095
    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    move v0, v1

    goto :goto_1b

    .line 2096
    :cond_17
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v0

    .line 2097
    :goto_1b
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 2098
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode()I

    move-result v3

    .line 2099
    invoke-static {v3, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 2100
    iput v3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 2101
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 2102
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V

    if-eqz p3, :cond_3c

    const/4 p1, 0x1

    if-ne v3, v2, :cond_3b

    if-ne v3, p1, :cond_3c

    .line 2103
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2105
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result p2

    if-eq v0, p2, :cond_3c

    :cond_3b
    move v1, p1

    .line 2106
    :cond_3c
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {p1, v1}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostUpdateRingerAndAudio(Lcom/android/server/notification/ZenModeHelper$H;Z)V

    if-eq v3, v2, :cond_48

    .line 2108
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {p0}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostDispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper$H;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .registers 4

    .line 1120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1121
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1122
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    const/16 p1, 0x81

    .line 1125
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1122
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 1127
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_26

    const/4 p1, 0x0

    .line 1128
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 1129
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;I)Landroid/app/AutomaticZenRule;
    .registers 6

    .line 417
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 419
    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    goto :goto_26

    .line 420
    :cond_e
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 421
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_c

    if-nez p1, :cond_1a

    return-object v1

    .line 423
    :cond_1a
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->zenRuleToAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0

    :cond_25
    return-object v1

    .line 421
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_c

    throw p0
.end method

.method public getAutomaticZenRuleState(Landroid/os/UserHandle;Ljava/lang/String;I)I
    .registers 6

    .line 875
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 876
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    const/4 v1, 0x2

    if-nez p1, :cond_e

    .line 878
    monitor-exit v0

    return v1

    :catchall_c
    move-exception p0

    goto :goto_27

    .line 880
    :cond_e
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p1, :cond_25

    .line 881
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_25

    .line 884
    :cond_1f
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 882
    :cond_25
    :goto_25
    monitor-exit v0

    return v1

    .line 885
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_c

    throw p0
.end method

.method public getAutomaticZenRules(Landroid/os/UserHandle;I)Ljava/util/Map;
    .registers 7

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 402
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_12

    .line 404
    monitor-exit v1

    return-object v0

    :catchall_10
    move-exception p0

    goto :goto_3a

    .line 406
    :cond_12
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 407
    invoke-virtual {p0, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 408
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->zenRuleToAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 411
    :cond_38
    monitor-exit v1

    return-object v0

    .line 412
    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_10

    throw p0
.end method

.method public getCallbacks()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .registers 2

    .line 1891
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1892
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 1893
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;
    .registers 4

    .line 1921
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-ne v0, v1, :cond_10

    goto :goto_1d

    .line 1924
    :cond_10
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/notification/ZenModeConfig;

    return-object p0

    .line 1922
    :cond_1d
    :goto_1d
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object p0
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 1

    .line 1900
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentInstanceCount(Landroid/os/UserHandle;Landroid/content/ComponentName;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 1005
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1006
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    if-nez p0, :cond_11

    .line 1007
    monitor-exit v1

    return v0

    :catchall_f
    move-exception p0

    goto :goto_3c

    .line 1009
    :cond_11
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1010
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1014
    :cond_3a
    monitor-exit v1

    return v0

    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_f

    throw p0
.end method

.method public getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .registers 1

    .line 1908
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;
    .registers 3

    .line 1781
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1785
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1787
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    goto :goto_16

    :catchall_e
    move-exception p0

    goto :goto_18

    .line 1788
    :cond_10
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    :goto_16
    monitor-exit v0

    return-object p0

    .line 1789
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_e

    throw p0
.end method

.method public getNotificationPolicyFromImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .registers 6

    .line 716
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 717
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    .line 719
    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    goto :goto_2c

    .line 721
    :cond_e
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p2, :cond_26

    .line 722
    iget-object p2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz p2, :cond_26

    .line 728
    invoke-virtual {v1, p2}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 730
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 732
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_c

    throw p0
.end method

.method public final getPackageRuleCount(Landroid/os/UserHandle;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 1025
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1026
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    if-nez p0, :cond_11

    .line 1027
    monitor-exit v1

    return v0

    :catchall_f
    move-exception p0

    goto :goto_36

    .line 1029
    :cond_11
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1030
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1034
    :cond_34
    monitor-exit v1

    return v0

    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_f

    throw p0
.end method

.method public final getPackageUid(Ljava/lang/String;I)I
    .registers 6

    .line 2499
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x3e8

    return p0

    .line 2502
    :cond_b
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenModeHelper;->getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2503
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_26

    .line 2505
    :try_start_17
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_26} :catch_26

    .line 2509
    :catch_26
    :cond_26
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getPreviousRingerModeSetting()I
    .registers 3

    .line 2079
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "zen_mode_ringer_level"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 7

    .line 1101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1102
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1103
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x84

    .line 1106
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1103
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 1108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_35

    .line 1109
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1110
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1111
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    return-object v2

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuppressedEffects()J
    .registers 3

    .line 388
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    return-wide v0
.end method

.method public getZenMode()I
    .registers 1

    .line 392
    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return p0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .registers 1

    .line 378
    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {p0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result p0

    return p0
.end method

.method public final getZenModeSetting()I
    .registers 3

    .line 2068
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public hasDeviceEffectsApplier()Z
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

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

    .line 320
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public initZenMode()V
    .registers 9

    .line 292
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ZenModeHelper"

    const-string v1, "initZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_b
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_e
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string v5, "init"

    const/4 v6, 0x1

    const/16 v7, 0x3e8

    const/4 v4, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V

    .line 299
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1c

    throw p0
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 261
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$updateImplicitZenRuleNameAndDescription$0(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .registers 4

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 766
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 770
    const-string p1, "ZenModeHelper"

    const-string v0, "Package not found when updating implicit zen rule name"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadConfigForUser(ILjava/lang/String;)V
    .registers 12

    .line 356
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v0, p1, :cond_81

    if-gez p1, :cond_8

    goto/16 :goto_81

    .line 357
    :cond_8
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 358
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_27

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_27
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 362
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    goto :goto_43

    :catchall_3f
    move-exception v0

    move-object p0, v0

    goto :goto_7f

    :cond_42
    const/4 v2, 0x0

    .line 364
    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_3f

    if-nez v2, :cond_69

    if-eqz v0, :cond_61

    .line 366
    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " generating default config for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_61
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 368
    iput p1, v2, Landroid/service/notification/ZenModeConfig;->user:I

    :cond_69
    move-object v4, v2

    .line 370
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v6, 0x2

    const/16 v8, 0x3e8

    const/4 v5, 0x0

    move-object v3, p0

    move-object v7, p2

    .line 371
    :try_start_73
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 373
    monitor-exit p1
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_7b

    .line 374
    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    return-void

    :catchall_7b
    move-exception v0

    move-object p0, v0

    .line 373
    :try_start_7d
    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7b

    throw p0

    .line 364
    :goto_7f
    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_3f

    throw p0

    :cond_81
    :goto_81
    return-void
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IFI)Z
    .registers 18

    .line 253
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_3
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v2 .. v10}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IFI)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_17
    move-exception v0

    move-object p0, v0

    .line 257
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_17

    throw p0
.end method

.method public final maybePreserveRemovedRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;I)V
    .registers 5

    const/4 v0, 0x4

    if-ne p3, v0, :cond_30

    .line 858
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result p3

    if-eqz p3, :cond_30

    const-string p3, "android"

    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 859
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_30

    .line 860
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_30

    .line 862
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p2

    .line 863
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-static {p0}, Ljava/time/Instant;->now(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object p0

    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    const/4 p0, 0x0

    .line 865
    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 866
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 868
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    return-void
.end method

.method public final maybeRestoreRemovedRule(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;I)Landroid/service/notification/ZenModeConfig$ZenRule;
    .registers 15

    .line 483
    invoke-static {p3}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3e

    .line 489
    :cond_7
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v6, :cond_13

    goto :goto_3e

    .line 496
    :cond_13
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 497
    iput-object v0, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    const/4 v0, 0x4

    if-eq p5, v0, :cond_1f

    goto :goto_3e

    .line 503
    :cond_1f
    iget-object v0, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 504
    invoke-virtual {p4}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_3e

    :cond_34
    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p4

    move v7, p5

    .line 512
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z

    return-object v6

    :cond_3e
    :goto_3e
    return-object p3
.end method

.method public final newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .registers 5

    .line 740
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 741
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 742
    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 743
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 744
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    const/4 p0, 0x0

    .line 745
    iput p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    const/4 p0, 0x0

    .line 746
    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 747
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "condition"

    .line 748
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "android"

    .line 749
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "implicit"

    .line 750
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 751
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 752
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 753
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 754
    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 755
    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onSystemReady()V
    .registers 3

    .line 303
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ZenModeHelper"

    const-string/jumbo v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_c
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_1d

    .line 306
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 308
    :cond_1d
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 309
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostMetricsTimer(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mIsSystemServicesReady:Z

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5

    if-gez p1, :cond_3

    return-void

    .line 345
    :cond_3
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserRemoved u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1e
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_21
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 348
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public onUserSwitched(I)V
    .registers 3

    .line 340
    const-string/jumbo v0, "onUserSwitched"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    return-void
.end method

.method public final populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z
    .registers 18

    move/from16 v6, p5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p6, :cond_1e

    .line 1160
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 1161
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    iput-wide v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1162
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1163
    iput-object p1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    move v1, v7

    goto :goto_1f

    :cond_1e
    move v1, v8

    :goto_1f
    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eq v6, v3, :cond_25

    if-ne v6, v4, :cond_42

    .line 1168
    :cond_25
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const-string v5, "android"

    .line 1169
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1170
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 1171
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    move v1, v7

    .line 1175
    :cond_42
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_51

    if-nez p6, :cond_4e

    iget-boolean v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v3, :cond_51

    .line 1178
    :cond_4e
    iput v6, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    goto :goto_59

    .line 1179
    :cond_51
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1181
    iput v8, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 1184
    :cond_59
    :goto_59
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 1185
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    move v1, v7

    :cond_6c
    if-nez p6, :cond_89

    if-ne v6, v4, :cond_89

    .line 1188
    iget-boolean v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1190
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    if-ne v3, v5, :cond_89

    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v3, :cond_89

    iget-object v5, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v5, :cond_89

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 1193
    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    goto :goto_8c

    :cond_89
    const/4 v3, 0x0

    .line 1196
    iput-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1199
    :goto_8c
    iget-boolean v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    if-eq v3, v5, :cond_9e

    .line 1200
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    iput-boolean v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1201
    invoke-virtual {p4}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    move v1, v7

    .line 1204
    :cond_9e
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 1205
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    move v1, v7

    .line 1208
    :cond_b1
    iget-boolean v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result v5

    if-eq v3, v5, :cond_c0

    .line 1209
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result v1

    iput-boolean v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    move v1, v7

    .line 1212
    :cond_c0
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d3

    .line 1213
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    move v1, v7

    .line 1216
    :cond_d3
    iget v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v5

    if-eq v3, v5, :cond_e2

    .line 1217
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v1

    iput v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    move v1, v7

    .line 1226
    :cond_e2
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-nez p6, :cond_f1

    .line 1227
    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->doesOriginAlwaysUpdateValues(I)Z

    move-result v5

    if-nez v5, :cond_f1

    iget v5, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/2addr v5, v7

    if-nez v5, :cond_fd

    .line 1229
    :cond_f1
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1230
    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v7

    or-int/2addr v1, v5

    :cond_fd
    if-nez p6, :cond_10d

    .line 1237
    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->doesOriginAlwaysUpdateValues(I)Z

    move-result v5

    if-nez v5, :cond_10d

    .line 1238
    invoke-virtual {p4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result v5

    if-nez v5, :cond_10c

    goto :goto_10d

    :cond_10c
    return v1

    :cond_10d
    :goto_10d
    if-ne v6, v4, :cond_111

    move v4, v7

    goto :goto_112

    :cond_111
    move v4, v8

    :goto_112
    if-eqz v4, :cond_123

    .line 1248
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_123

    .line 1249
    iget v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    or-int/2addr v3, v7

    iput v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 1252
    :cond_123
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v3

    .line 1251
    invoke-static {v3, v8}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v3

    .line 1253
    iget v5, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v5, v3, :cond_13a

    .line 1254
    iput v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eqz v4, :cond_139

    .line 1256
    iget v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    :cond_139
    move v1, v7

    .line 1261
    :cond_13a
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getIconResId()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/server/notification/ZenModeHelper;->drawableResIdToResName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1262
    iget-object v5, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x4

    if-nez v5, :cond_158

    .line 1263
    iput-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    if-eqz v4, :cond_156

    .line 1265
    iget v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    or-int/2addr v1, v9

    iput v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    :cond_156
    move v10, v7

    goto :goto_159

    :cond_158
    move v10, v1

    .line 1271
    :goto_159
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z

    move-result v0

    or-int/2addr v0, v10

    .line 1274
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v1

    if-ne v6, v9, :cond_16e

    goto :goto_16f

    :cond_16e
    move v7, v8

    :goto_16f
    invoke-static {p4, v1, v7, v4}, Lcom/android/server/notification/ZenModeHelper;->updateZenDeviceEffects(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenDeviceEffects;ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public pullRules(Ljava/util/List;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2430
    iget-object v2, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2431
    :try_start_7
    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    if-ge v5, v3, :cond_6e

    .line 2433
    iget-object v6, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 2434
    iget-object v6, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig;

    .line 2437
    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v9

    iget-boolean v10, v6, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    const-string v12, ""

    .line 2442
    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v7, 0x2764

    const/4 v11, -0x1

    const/16 v13, 0x3e8

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 2435
    invoke-static/range {v7 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZILjava/lang/String;I[BIIII)Landroid/util/StatsEvent;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2447
    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 2448
    iget-object v7, v6, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v7, v9, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V

    goto :goto_51

    :catchall_4f
    move-exception v0

    goto :goto_70

    .line 2450
    :cond_51
    :goto_51
    iget-object v6, v6, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2451
    invoke-virtual {v0, v8, v7, v4, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V

    goto :goto_5b

    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 2454
    :cond_6e
    monitor-exit v2

    return-void

    :goto_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_7 .. :try_end_71} :catchall_4f

    throw v0
.end method

.method public readXml(Lcom/android/modules/utils/TypedXmlPullParser;ZILandroid/app/backup/BackupRestoreEventLogger;)Z
    .registers 14

    .line 1654
    invoke-static {p1, p4}, Landroid/service/notification/ZenModeConfig;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/app/backup/BackupRestoreEventLogger;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 1655
    const-string/jumbo p1, "readXml"

    if-eqz v1, :cond_108

    const/4 p4, 0x0

    if-eqz p2, :cond_14

    .line 1658
    iput p3, v1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 1659
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p3, :cond_14

    .line 1660
    iput-object p4, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1666
    :cond_14
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 1667
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v0

    .line 1666
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->containsAll(Ljava/util/Collection;)Z

    move-result p3

    .line 1669
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 1670
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v4, 0x1

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_7b

    .line 1671
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v4

    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p2, :cond_4f

    .line 1674
    iput-object p4, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1675
    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 1676
    iput-wide v2, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1679
    :cond_4f
    iget-boolean v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    xor-int/2addr v7, v4

    and-int/2addr v5, v7

    .line 1683
    iget v7, v1, Landroid/service/notification/ZenModeConfig;->version:I

    const/16 v8, 0xb

    if-ge v7, v8, :cond_6a

    .line 1685
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v7

    .line 1686
    iget-object v8, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v8, :cond_64

    .line 1687
    iput-object v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_6a

    .line 1693
    :cond_64
    invoke-virtual {v7, v8}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object v7

    iput-object v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1697
    :cond_6a
    :goto_6a
    iget v7, v1, Landroid/service/notification/ZenModeConfig;->version:I

    const/16 v8, 0xc

    if-ge v7, v8, :cond_3a

    .line 1700
    iget-object v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1701
    iput-object p4, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    goto :goto_3a

    :cond_7b
    move v5, v4

    :cond_7c
    if-nez p3, :cond_c4

    if-eqz v5, :cond_c4

    if-nez p2, :cond_88

    .line 1707
    iget p3, v1, Landroid/service/notification/ZenModeConfig;->version:I

    const/16 p4, 0x8

    if-ge p3, p4, :cond_c4

    .line 1716
    :cond_88
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 1717
    iget-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p3, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1718
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v2, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p4

    invoke-virtual {v0, v2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9b

    .line 1720
    :cond_b3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reset to default rules"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1723
    :cond_c4
    iget-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Landroid/service/notification/SystemZenRules;->maybeUpgradeRules(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    if-eqz p2, :cond_d0

    .line 1727
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    .line 1730
    :cond_d0
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz p3, :cond_e9

    .line 1731
    const-string p4, "EVENTS_DEFAULT_RULE"

    invoke-virtual {p3, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p3, :cond_e9

    .line 1733
    iget-boolean p3, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez p3, :cond_e9

    .line 1734
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const-string p4, "EVENTS_DEFAULT_RULE"

    invoke-virtual {p3, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    :cond_e9
    sget-boolean p3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz p3, :cond_f2

    const-string p3, "ZenModeHelper"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_f2
    iget-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter p3

    if-eqz p2, :cond_f8

    const/4 v4, 0x6

    :cond_f8
    move v3, v4

    const/16 v5, 0x3e8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1740
    :try_start_fe
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    move-result p0

    monitor-exit p3

    return p0

    :catchall_104
    move-exception v0

    move-object p0, v0

    .line 1743
    monitor-exit p3
    :try_end_107
    .catchall {:try_start_fe .. :try_end_107} :catchall_104

    throw p0

    :cond_108
    const/4 p0, 0x0

    return p0
.end method

.method public recordCaller(Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    .line 265
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->recordCall(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public removeAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 15

    .line 789
    const-string/jumbo v0, "removeAutomaticZenRule"

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    .line 791
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 792
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_16

    .line 793
    monitor-exit v1

    return v0

    :catchall_12
    move-exception v0

    move-object p0, v0

    goto/16 :goto_c0

    .line 794
    :cond_16
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 795
    iget-object v2, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v2, :cond_26

    .line 796
    monitor-exit v1

    return v0

    .line 797
    :cond_26
    invoke-virtual {p0, v2, p5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 798
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-virtual {p0, v3, v2, p3}, Lcom/android/server/notification/ZenModeHelper;->maybePreserveRemovedRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;I)V

    .line 800
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    const-string v0, "android"

    .line 801
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 802
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 803
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 804
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 808
    :cond_70
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v4, v5}, Lcom/android/server/notification/ZenModeHelper;->getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    :cond_7f
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_a2

    const-string v0, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeZenRule zenRule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_a2
    iget p1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 816
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    .line 815
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p3

    move-object v5, p4

    move v8, p5

    .line 817
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 812
    :cond_b8
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot delete rules not owned by your condition provider"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 818
    :goto_c0
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_9 .. :try_end_c1} :catchall_12

    throw p0
.end method

.method public removeAutomaticZenRules(Landroid/os/UserHandle;Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 15

    .line 823
    const-string/jumbo v0, "removeAutomaticZenRules"

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    .line 825
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 826
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_16

    const/4 p0, 0x0

    .line 827
    monitor-exit v1

    return p0

    :catchall_12
    move-exception v0

    move-object p0, v0

    goto/16 :goto_82

    .line 828
    :cond_16
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 829
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_22
    if-ltz p1, :cond_4b

    .line 830
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 831
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 832
    invoke-virtual {p0, v0, p5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 833
    iget-object v2, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 834
    invoke-virtual {p0, v3, v0, p3}, Lcom/android/server/notification/ZenModeHelper;->maybePreserveRemovedRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;I)V

    :cond_48
    add-int/lit8 p1, p1, -0x1

    goto :goto_22

    :cond_4b
    const/4 p1, 0x5

    if-ne p3, p1, :cond_76

    .line 840
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_56
    if-ltz p1, :cond_76

    .line 841
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 842
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 843
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_73
    add-int/lit8 p1, p1, -0x1

    goto :goto_56

    :cond_76
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p3

    move-object v5, p4

    move v8, p5

    .line 847
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 848
    :goto_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_9 .. :try_end_83} :catchall_12

    throw p0
.end method

.method public final ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V
    .registers 21

    move-object/from16 v0, p2

    .line 2461
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_9

    move-object v1, v2

    .line 2462
    :cond_9
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object v1, v2

    .line 2467
    :cond_14
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    .line 2468
    :goto_1f
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v3, :cond_24

    move-object v2, v3

    .line 2472
    :cond_24
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    if-eqz p3, :cond_2c

    .line 2475
    const-string v1, "MANUAL_RULE"

    const/16 v3, 0x3e7

    :cond_2c
    move-object v9, v1

    move v15, v3

    const/4 v1, 0x0

    .line 2479
    new-array v1, v1, [B

    .line 2480
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v3, :cond_39

    .line 2481
    invoke-virtual {v3}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object v1

    :cond_39
    move-object v11, v1

    .line 2483
    iget-boolean v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget v8, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    move-object/from16 v1, p0

    move/from16 v5, p1

    .line 2489
    invoke-virtual {v1, v2, v5}, Lcom/android/server/notification/ZenModeHelper;->getPackageUid(Ljava/lang/String;I)I

    move-result v10

    iget v12, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    iget v13, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    iget v14, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    const/16 v4, 0x2764

    const/4 v7, 0x0

    .line 2483
    invoke-static/range {v4 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZILjava/lang/String;I[BIIII)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scheduleActivationBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 8

    const-wide/32 v0, 0x1265fc51

    .line 1532
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1531
    invoke-static {v0, v1, p1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p4, :cond_11

    const/4 p4, 0x4

    goto :goto_12

    :cond_11
    const/4 p4, 0x5

    .line 1533
    :goto_12
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_16
    const/4 p4, -0x1

    .line 1537
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public scheduleEnabledBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    if-eqz p4, :cond_4

    const/4 p4, 0x1

    goto :goto_5

    :cond_4
    const/4 p4, 0x2

    .line 1544
    :goto_5
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAutomaticZenRuleState(Landroid/os/UserHandle;Ljava/lang/String;Landroid/service/notification/Condition;II)V
    .registers 15

    .line 890
    const-string/jumbo v0, "setAutomaticZenRuleState(String id)"

    invoke-static {v0, p4}, Lcom/android/server/notification/ZenModeHelper;->checkSetRuleStateOrigin(Ljava/lang/String;I)V

    .line 892
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 893
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_14

    .line 894
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    move-object p0, v0

    goto :goto_49

    .line 896
    :cond_14
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 897
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p1, :cond_47

    .line 898
    invoke-virtual {p0, p1, p5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 899
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAzrState: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V

    .line 902
    :cond_47
    monitor-exit v1

    return-void

    :goto_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_11

    throw p0
.end method

.method public setAutomaticZenRuleStateFromConditionProvider(Landroid/os/UserHandle;Landroid/net/Uri;Landroid/service/notification/Condition;II)V
    .registers 15

    .line 907
    const-string/jumbo v0, "setAutomaticZenRuleStateFromConditionProvider"

    invoke-static {v0, p4}, Lcom/android/server/notification/ZenModeHelper;->checkSetRuleStateOrigin(Ljava/lang/String;I)V

    .line 909
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 910
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_14

    .line 911
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    move-object p0, v0

    goto :goto_51

    .line 912
    :cond_14
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 914
    invoke-static {v3, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->findMatchingRules(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Ljava/util/List;

    move-result-object v4

    .line 915
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_22
    if-ltz p1, :cond_36

    .line 916
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v0, p5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 917
    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_33
    add-int/lit8 p1, p1, -0x1

    goto :goto_22

    .line 921
    :cond_36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAzrStateFromCps: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V

    .line 923
    monitor-exit v1

    return-void

    :goto_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_11

    throw p0
.end method

.method public final setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V
    .registers 14

    if-eqz p2, :cond_27

    .line 929
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_27

    .line 930
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 931
    invoke-static {v0, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->applyConditionAndReconsiderOverride(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;I)V

    .line 932
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    goto :goto_d

    :cond_27
    :goto_27
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)V
    .registers 8

    .line 1938
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1939
    :try_start_3
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1940
    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_8

    throw p0
.end method

.method public final setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z
    .registers 18

    .line 1947
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const/4 v9, 0x0

    if-eqz p1, :cond_b2

    .line 1949
    :try_start_7
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_b2

    .line 1953
    :cond_f
    iget v2, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    const/4 v10, 0x1

    if-eq v2, v3, :cond_4c

    .line 1955
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_19} :catch_42
    .catchall {:try_start_7 .. :try_end_19} :catchall_3f

    .line 1956
    :try_start_19
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1957
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_49

    .line 1958
    :try_start_21
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_45

    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfigLocked: store config for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_3e} :catch_42
    .catchall {:try_start_21 .. :try_end_3e} :catchall_3f

    goto :goto_45

    :catchall_3f
    move-exception v0

    goto/16 :goto_d7

    :catch_42
    move-exception v0

    goto/16 :goto_cc

    .line 1983
    :cond_45
    :goto_45
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :catchall_49
    move-exception v0

    .line 1957
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v0

    .line 1962
    :cond_4c
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v9}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 1964
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_55
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_55} :catch_42
    .catchall {:try_start_4b .. :try_end_55} :catchall_3f

    .line 1965
    :try_start_55
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1966
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_af

    .line 1967
    :try_start_5d
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_7d

    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setConfigLocked reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1968
    :cond_7d
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    move-object v5, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/ZenLog;->traceConfig(ILjava/lang/String;Landroid/content/ComponentName;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;I)V

    .line 1971
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 1972
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 1974
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    :cond_9b
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    .line 1976
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V

    .line 1977
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v0, p1, p4, v10}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V
    :try_end_ab
    .catch Ljava/lang/SecurityException; {:try_start_5d .. :try_end_ab} :catch_42
    .catchall {:try_start_5d .. :try_end_ab} :catchall_3f

    .line 1983
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :catchall_af
    move-exception v0

    .line 1966
    :try_start_b0
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v0

    .line 1950
    :cond_b2
    :goto_b2
    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid config in setConfigLocked; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Ljava/lang/SecurityException; {:try_start_b1 .. :try_end_c8} :catch_42
    .catchall {:try_start_b1 .. :try_end_c8} :catchall_3f

    .line 1983
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    .line 1980
    :goto_cc
    :try_start_cc
    const-string v1, "ZenModeHelper"

    const-string v2, "Invalid rule in config"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_3f

    .line 1983
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :goto_d7
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1984
    throw v0
.end method

.method public final setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z
    .registers 13

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v2, p3

    move-object v3, p4

    move v6, p5

    .line 1932
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result p0

    return p0
.end method

.method public setDeviceEffectsApplier(Landroid/service/notification/DeviceEffectsApplier;)V
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    if-nez v1, :cond_11

    .line 334
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    .line 335
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    const/4 p1, 0x1

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->applyConsolidatedDeviceEffects(I)V

    return-void

    :catchall_f
    move-exception p0

    goto :goto_19

    .line 332
    :cond_11
    :try_start_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already set up a DeviceEffectsApplier!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 335
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_f

    throw p0
.end method

.method public setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 17

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    .line 1551
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V
    .registers 16

    .line 1559
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1560
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_f

    .line 1561
    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ad

    .line 1563
    :cond_f
    invoke-static {p2}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-nez v0, :cond_17

    monitor-exit v1

    return-void

    .line 1564
    :cond_17
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_4e

    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setManualZenMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " conditionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setRingerMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_4e
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    .line 1569
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object p6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz p3, :cond_59

    goto :goto_5b

    .line 1570
    :cond_59
    sget-object p3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_5b
    iput-object p3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1571
    const-string p3, "android"

    iput-object p3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1572
    iput p2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1573
    new-instance p3, Landroid/service/notification/Condition;

    iget-object p6, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object p6, p6, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_71

    move v5, v4

    goto :goto_72

    :cond_71
    move v5, v3

    :goto_72
    const/4 v6, 0x3

    if-ne p4, v6, :cond_76

    goto :goto_77

    :cond_76
    move v3, v4

    .line 1575
    :goto_77
    invoke-direct {p3, p6, v2, v5, v3}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;II)V

    iput-object p3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez p2, :cond_a1

    if-eq p4, v6, :cond_a1

    .line 1579
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8a
    :goto_8a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1580
    invoke-virtual {p3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result p6

    if-eqz p6, :cond_8a

    const/4 p6, 0x2

    .line 1581
    invoke-virtual {p3, p6}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    goto :goto_8a

    :cond_a1
    move p3, p4

    move-object p4, p5

    const/4 p5, 0x0

    move-object p2, p1

    move p6, p7

    move p7, p8

    move-object p1, p0

    .line 1586
    invoke-virtual/range {p1 .. p7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 1587
    monitor-exit v1

    return-void

    :goto_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_b

    throw p0
.end method

.method public setManualZenRuleDeviceEffects(Landroid/os/UserHandle;Landroid/service/notification/ZenDeviceEffects;ILjava/lang/String;I)V
    .registers 15

    .line 1592
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1593
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_e

    .line 1594
    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    move-object p0, v0

    goto :goto_50

    .line 1596
    :cond_e
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_39

    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateManualRule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_39
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 1601
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v0, "android"

    iput-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1602
    iput-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p3

    move-object v5, p4

    move v8, p5

    .line 1603
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 1604
    monitor-exit v1

    return-void

    :goto_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_b

    throw p0
.end method

.method public setNotificationPolicy(Landroid/os/UserHandle;Landroid/app/NotificationManager$Policy;II)V
    .registers 13

    .line 1802
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p2, :cond_a

    .line 1803
    :try_start_5
    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    move-object p0, v0

    goto :goto_25

    .line 1804
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_12

    .line 1805
    monitor-exit v1

    return-void

    .line 1807
    :cond_12
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 1808
    invoke-virtual {v3, p2}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 1809
    const-string/jumbo v6, "setNotificationPolicy"

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1810
    monitor-exit v1

    return-void

    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_7

    throw p0
.end method

.method public final setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .registers 3

    .line 2084
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 2085
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_12

    .line 2086
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 2084
    :goto_12
    const-string/jumbo v0, "zen_mode_ringer_level"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    return-void
.end method

.method public setSuppressedEffects(J)V
    .registers 5

    .line 382
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 383
    :cond_7
    iput-wide p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    .line 384
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    return-void
.end method

.method public setZenModeSetting(I)V
    .registers 4

    .line 2073
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2074
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo p1, "updated setting"

    invoke-static {p0, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 275
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 247
    const-string p0, "ZenModeHelper"

    return-object p0
.end method

.method public final updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V
    .registers 11

    .line 2165
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2166
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_c

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto/16 :goto_c5

    .line 2167
    :cond_c
    new-instance v1, Landroid/service/notification/ZenPolicy;

    invoke-direct {v1}, Landroid/service/notification/ZenPolicy;-><init>()V

    .line 2168
    new-instance v2, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 2169
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2f

    .line 2170
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v3, v1, v5, v4}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 2171
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v2, v3}, Landroid/service/notification/ZenDeviceEffects$Builder;->add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 2174
    :cond_2f
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2175
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 2179
    iget v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eqz v7, :cond_57

    .line 2180
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v7, v1, v5, v6}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 2182
    :cond_57
    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v2, v5}, Landroid/service/notification/ZenDeviceEffects$Builder;->add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;

    goto :goto_3b

    .line 2194
    :cond_5d
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 2195
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 2196
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2197
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    .line 2198
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v1, p2}, Lcom/android/server/notification/ZenLog;->traceSetConsolidatedZenPolicy(Landroid/app/NotificationManager$Policy;Ljava/lang/String;)V

    .line 2206
    :cond_75
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p2, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v6

    :cond_82
    :goto_82
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2207
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v5

    if-eqz v5, :cond_82

    iget v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_82

    .line 2209
    iget-object v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v1, :cond_a5

    .line 2210
    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v1

    if-eqz v1, :cond_a5

    move p2, v4

    goto :goto_a9

    :cond_a5
    move v1, v4

    goto :goto_82

    :cond_a7
    move v4, v1

    move p2, v6

    :goto_a9
    if-eqz v4, :cond_b0

    if-nez p2, :cond_b0

    .line 2217
    invoke-virtual {v2, v6}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 2221
    :cond_b0
    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object p2

    .line 2222
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p2, v1}, Landroid/service/notification/ZenDeviceEffects;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    .line 2223
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 2224
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {p0, p1}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostApplyDeviceEffects(Lcom/android/server/notification/ZenModeHelper$H;I)V

    .line 2226
    :cond_c3
    monitor-exit v0

    return-void

    :goto_c5
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_3 .. :try_end_c6} :catchall_9

    throw p0
.end method

.method public updateAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;Landroid/app/AutomaticZenRule;ILjava/lang/String;I)Z
    .registers 18

    .line 546
    const-string/jumbo v3, "updateAutomaticZenRule"

    invoke-static {v3, p4}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    if-eqz p2, :cond_8f

    .line 550
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v7

    .line 551
    :try_start_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    if-nez v3, :cond_17

    const/4 v0, 0x0

    .line 552
    monitor-exit v7

    return v0

    :catchall_14
    move-exception v0

    goto/16 :goto_8d

    .line 553
    :cond_17
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_3d

    .line 554
    const-string v4, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAutomaticZenRule zenRule="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " reason="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :cond_3d
    move-object/from16 v8, p5

    .line 557
    :goto_3f
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v9, :cond_85

    move/from16 v10, p6

    .line 558
    invoke-virtual {p0, v9, v10}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 562
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 563
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 565
    iget-object v1, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z

    move-result v1

    if-nez v1, :cond_74

    const/4 v0, 0x1

    .line 570
    monitor-exit v7

    return v0

    .line 573
    :cond_74
    invoke-static {v3, v9, p3}, Lcom/android/server/notification/ZenModeHelper;->maybeReplaceDefaultRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;)V

    .line 575
    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p4

    move-object v1, v3

    move-object v3, v8

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result v0

    monitor-exit v7

    return v0

    .line 559
    :cond_85
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot update rules not owned by your condition provider"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :goto_8d
    monitor-exit v7
    :try_end_8e
    .catchall {:try_start_b .. :try_end_8e} :catchall_14

    throw v0

    .line 548
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ruleId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V
    .registers 16

    .line 1994
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->LOG_DND_STATE_EVENTS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-interface {v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    move-result v0

    .line 1997
    new-instance v1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;-><init>(ILandroid/service/notification/ZenModeConfig;Landroid/app/NotificationManager$Policy;)V

    .line 1999
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v2}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    const/4 v2, 0x1

    if-eq p2, v2, :cond_6f

    .line 2002
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2003
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v5, :cond_28

    .line 2005
    iget-boolean v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-boolean v7, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eq v6, v7, :cond_55

    .line 2007
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v6

    iget v7, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget-object v8, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-boolean v9, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 2006
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/server/notification/ZenModeHelper;->scheduleEnabledBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2009
    :cond_55
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v5

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v6

    if-eq v5, v6, :cond_28

    .line 2011
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget-object v7, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v4

    .line 2010
    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/android/server/notification/ZenModeHelper;->scheduleActivationBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_28

    .line 2018
    :cond_6f
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v3

    const/4 v4, 0x3

    if-ne p2, v4, :cond_79

    goto :goto_7a

    :cond_79
    const/4 v2, 0x0

    .line 2021
    :goto_7a
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v4

    if-nez v4, :cond_91

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 2022
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v3, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    if-eqz v2, :cond_a7

    .line 2024
    iput-object v3, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualActivation:Ljava/time/Instant;

    goto :goto_a7

    .line 2026
    :cond_91
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v4

    if-nez v4, :cond_a7

    .line 2028
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v3, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->lastDeactivation:Ljava/time/Instant;

    if-eqz v2, :cond_a7

    .line 2030
    iput-object v3, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualDeactivation:Ljava/time/Instant;

    .line 2034
    :cond_a7
    :goto_a7
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b1
    :goto_b1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2035
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2036
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v7

    if-eqz v7, :cond_de

    if-eqz v6, :cond_d7

    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v7

    if-nez v7, :cond_de

    .line 2037
    :cond_d7
    iput-object v3, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    if-eqz v2, :cond_b1

    .line 2039
    iput-object v3, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualActivation:Ljava/time/Instant;

    goto :goto_b1

    .line 2041
    :cond_de
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v7

    if-nez v7, :cond_b1

    if-eqz v6, :cond_b1

    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 2043
    iput-object v3, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->lastDeactivation:Ljava/time/Instant;

    if-eqz v2, :cond_b1

    .line 2045
    iput-object v3, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualDeactivation:Ljava/time/Instant;

    goto :goto_b1

    .line 2051
    :cond_f3
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 2052
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 2053
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V

    .line 2055
    :cond_fb
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 2056
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode_config_etag"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2057
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenModeLocked(ILjava/lang/String;Z)V

    if-eqz v0, :cond_124

    .line 2060
    new-instance p1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;

    iget p3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object p4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p1, p3, p4, v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;-><init>(ILandroid/service/notification/ZenModeConfig;Landroid/app/NotificationManager$Policy;)V

    .line 2062
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;

    invoke-virtual {p0, v1, p1, p5, p2}, Lcom/android/server/notification/ZenModeEventLogger;->maybeLogZenChange(Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V

    :cond_124
    return-void
.end method

.method public updateHasPriorityChannels(Landroid/os/UserHandle;Z)V
    .registers 11

    .line 1510
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1511
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_e

    .line 1512
    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    move-object p0, v0

    goto :goto_27

    .line 1515
    :cond_e
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-ne v0, p2, :cond_14

    .line 1516
    monitor-exit v1

    return-void

    .line 1519
    :cond_14
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 1520
    iput-boolean p2, v3, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 1523
    const-string/jumbo v6, "updateHasPriorityChannels"

    const/16 v7, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1525
    monitor-exit v1

    return-void

    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_b

    throw p0
.end method

.method public final updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 6

    .line 760
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 761
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const-string v1, "Implicit rule is not associated to package yet!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 763
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 776
    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_32

    .line 777
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const v2, 0x1040b63

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 779
    :cond_32
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const v1, 0x1040b64

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    return-void

    .line 781
    :cond_42
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-nez p0, :cond_4a

    .line 783
    const-string p0, "Unknown"

    iput-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    :cond_4a
    return-void
.end method

.method public final updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z
    .registers 7

    const/4 p1, 0x1

    if-nez p3, :cond_14

    if-eqz p5, :cond_12

    .line 1305
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    return p1

    :cond_12
    const/4 p0, 0x0

    return p0

    .line 1314
    :cond_14
    iget-object p5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz p5, :cond_19

    goto :goto_1f

    .line 1316
    :cond_19
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p5

    .line 1327
    :goto_1f
    invoke-virtual {p5, p3}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object p0

    .line 1328
    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz p4, :cond_fa

    .line 1331
    iget p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 1332
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v0

    if-eq p4, v0, :cond_35

    or-int/lit8 p3, p3, 0x1

    .line 1335
    :cond_35
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    if-eq p4, v0, :cond_41

    or-int/lit8 p3, p3, 0x2

    .line 1338
    :cond_41
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result p4

    .line 1339
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v0

    if-eq p4, v0, :cond_4d

    or-int/lit8 p3, p3, 0x4

    .line 1342
    :cond_4d
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v0

    if-eq p4, v0, :cond_59

    or-int/lit8 p3, p3, 0x8

    .line 1345
    :cond_59
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result p4

    .line 1346
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v0

    if-eq p4, v0, :cond_65

    or-int/lit8 p3, p3, 0x10

    .line 1349
    :cond_65
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v0

    if-eq p4, v0, :cond_71

    or-int/lit8 p3, p3, 0x20

    .line 1352
    :cond_71
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result p4

    .line 1353
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v0

    if-eq p4, v0, :cond_7d

    or-int/lit8 p3, p3, 0x40

    .line 1356
    :cond_7d
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v0

    if-eq p4, v0, :cond_89

    or-int/lit16 p3, p3, 0x80

    .line 1359
    :cond_89
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v0

    if-eq p4, v0, :cond_95

    or-int/lit16 p3, p3, 0x100

    .line 1362
    :cond_95
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v0

    if-eq p4, v0, :cond_a1

    or-int/lit16 p3, p3, 0x200

    .line 1366
    :cond_a1
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result p4

    .line 1367
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v0

    if-eq p4, v0, :cond_ad

    or-int/lit16 p3, p3, 0x400

    .line 1370
    :cond_ad
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v0

    if-eq p4, v0, :cond_b9

    or-int/lit16 p3, p3, 0x800

    .line 1373
    :cond_b9
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v0

    if-eq p4, v0, :cond_c5

    or-int/lit16 p3, p3, 0x1000

    .line 1376
    :cond_c5
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v0

    if-eq p4, v0, :cond_d1

    or-int/lit16 p3, p3, 0x2000

    .line 1379
    :cond_d1
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v0

    if-eq p4, v0, :cond_dd

    or-int/lit16 p3, p3, 0x4000

    .line 1382
    :cond_dd
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v0

    if-eq p4, v0, :cond_eb

    const p4, 0x8000

    or-int/2addr p3, p4

    .line 1385
    :cond_eb
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result p4

    .line 1386
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v0

    if-eq p4, v0, :cond_f8

    const/high16 p4, 0x10000

    or-int/2addr p3, p4

    .line 1389
    :cond_f8
    iput p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 1392
    :cond_fa
    invoke-virtual {p0, p5}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method

.method public final updateRingerAndAudio(Z)V
    .registers 3

    .line 2113
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_7

    .line 2114
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    :cond_7
    if-eqz p1, :cond_c

    .line 2117
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 2119
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    return-void
.end method

.method public updateZenRulesOnLocaleChange()V
    .registers 10

    .line 1060
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    .line 1061
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1062
    :try_start_a
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    if-nez v0, :cond_18

    .line 1064
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    move-object p0, v0

    goto/16 :goto_bc

    .line 1067
    :cond_18
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 1069
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1070
    iget-object v5, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v5, :cond_29

    .line 1073
    iget v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_29

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1075
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 1076
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_77

    .line 1077
    const-string v2, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Locale change - updating default zen rule name from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_77
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-object v2, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    move v2, v7

    goto :goto_29

    .line 1085
    :cond_7d
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_87
    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1086
    invoke-static {v4}, Landroid/service/notification/SystemZenRules;->isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 1087
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_87

    .line 1088
    :cond_a1
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 1089
    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    goto :goto_87

    :cond_ad
    if-eqz v2, :cond_ba

    .line 1094
    const-string/jumbo v6, "updateZenRulesOnLocaleChange"

    const/16 v7, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1097
    :cond_ba
    monitor-exit v1

    return-void

    :goto_bc
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_a .. :try_end_bd} :catchall_14

    throw p0
.end method

.method public writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLjava/lang/Integer;ILandroid/app/backup/BackupRestoreEventLogger;)V
    .registers 14

    .line 1750
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1753
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v2, v1, :cond_36

    if-eqz p2, :cond_1b

    .line 1755
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_19

    if-eq v5, p4, :cond_1b

    goto :goto_33

    :catchall_19
    move-exception p0

    goto :goto_4b

    .line 1759
    :cond_1b
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v5, p1, p3, p2, p5}, Landroid/service/notification/ZenModeConfig;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Integer;ZLandroid/app/backup/BackupRestoreEventLogger;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_29
    .catchall {:try_start_1b .. :try_end_26} :catchall_19

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :catch_29
    move-exception v5

    .line 1762
    :try_start_2a
    const-string v6, "ZenModeHelper"

    const-string v7, "failed to write config"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v4, v4, 0x1

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_36
    if-eqz p5, :cond_49

    .line 1767
    const-string/jumbo p0, "notifications:zen_config"

    invoke-virtual {p5, p0, v3}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackedUp(Ljava/lang/String;I)V

    if-lez v4, :cond_49

    .line 1769
    const-string/jumbo p0, "notifications:zen_config"

    const-string/jumbo p1, "notifications:invalid_xml_parsing"

    invoke-virtual {p5, p0, v4, p1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 1773
    :cond_49
    monitor-exit v0

    return-void

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_2a .. :try_end_4c} :catchall_19

    throw p0
.end method

.method public final zenRuleToAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .registers 5

    .line 1489
    new-instance v0, Landroid/app/AutomaticZenRule$Builder;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/app/AutomaticZenRule$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 1490
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setManualInvocationAllowed(Z)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1491
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setPackage(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1492
    invoke-virtual {v0, v1, v2}, Landroid/app/AutomaticZenRule$Builder;->setCreationTime(J)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 1493
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->drawableResNameToResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/AutomaticZenRule$Builder;->setIconResId(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 1494
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setType(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1495
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 1496
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1497
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setEnabled(Z)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1499
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    .line 1498
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setInterruptionFilter(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1500
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setOwner(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 1501
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setConfigurationActivity(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 1502
    invoke-virtual {p0, p1}, Landroid/app/AutomaticZenRule$Builder;->setTriggerDescription(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    .line 1503
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule$Builder;->build()Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method
