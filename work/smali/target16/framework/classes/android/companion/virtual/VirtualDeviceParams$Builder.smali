.class public final Landroid/companion/virtual/VirtualDeviceParams$Builder;
.super Ljava/lang/Object;
.source "VirtualDeviceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;
    }
.end annotation


# static fields
.field private static final blacklist INFINITE_TIMEOUT:Ljava/time/Duration;


# instance fields
.field private blacklist mActivityPolicyExemptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAudioPlaybackSessionId:I

.field private blacklist mAudioRecordingSessionId:I

.field private blacklist mCrossTaskNavigationExemptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDefaultActivityPolicy:I

.field private blacklist mDefaultActivityPolicyConfigured:Z

.field private blacklist mDefaultNavigationPolicy:I

.field private blacklist mDefaultNavigationPolicyConfigured:Z

.field private final blacklist mDevicePolicies:Landroid/util/SparseIntArray;

.field private blacklist mDimDuration:Ljava/time/Duration;

.field private blacklist mHomeComponent:Landroid/content/ComponentName;

.field private blacklist mInputMethodComponent:Landroid/content/ComponentName;

.field private blacklist mLockState:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mScreenOffTimeout:Ljava/time/Duration;

.field private blacklist mUsersWithMatchingAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

.field private blacklist mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

.field private blacklist mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mVirtualSensorConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

.field private blacklist mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 793
    const-wide/32 v0, 0x591c8

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->INFINITE_TIMEOUT:Ljava/time/Duration;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    .line 796
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    .line 797
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    .line 798
    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    .line 800
    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    .line 801
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 802
    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    .line 804
    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    .line 806
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 807
    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    .line 808
    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    .line 817
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    .line 818
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public whitelist addVirtualSensorConfig(Landroid/companion/virtual/sensor/VirtualSensorConfig;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 3

    .line 1191
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    return-object p0
.end method

.method public whitelist build()Landroid/companion/virtual/VirtualDeviceParams;
    .registers 26

    .line 1300
    move-object/from16 v0, p0

    .line 1301
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5f

    .line 1302
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v3, :cond_57

    .line 1308
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    if-eqz v1, :cond_4f

    .line 1313
    move v1, v2

    :goto_19
    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3f

    .line 1314
    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    invoke-virtual {v4}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getDirectChannelTypesSupported()I

    move-result v4

    if-lez v4, :cond_3c

    .line 1315
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    if-eqz v1, :cond_34

    goto :goto_3f

    .line 1316
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VirtualSensorDirectChannelCallback is required for creating virtual sensors that support direct channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1313
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1323
    :cond_3f
    :goto_3f
    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;

    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    iget-object v6, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorCallback;Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;)V

    move-object/from16 v16, v1

    goto :goto_62

    .line 1309
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VirtualSensorCallback is required for creating virtual sensors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1304
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DEVICE_POLICY_CUSTOM for POLICY_TYPE_SENSORS is required for creating virtual sensors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_5f
    const/4 v1, 0x0

    move-object/from16 v16, v1

    .line 1330
    :goto_62
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    packed-switch v1, :pswitch_data_164

    .line 1350
    iget-boolean v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v1, :cond_9d

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-ne v1, v3, :cond_9d

    .line 1352
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_9d

    .line 1341
    :pswitch_7b
    iget-boolean v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v1, :cond_9d

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-eqz v1, :cond_84

    goto :goto_9d

    .line 1343
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DEVICE_POLICY_CUSTOM is explicitly configured for POLICY_TYPE_ACTIVITY, which is exclusive with setBlockedActivities."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1332
    :pswitch_8c
    iget-boolean v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v1, :cond_9d

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-eq v1, v3, :cond_95

    goto :goto_9d

    .line 1334
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DEVICE_POLICY_DEFAULT is explicitly configured for POLICY_TYPE_ACTIVITY, which is exclusive with setAllowedActivities."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_9d
    :goto_9d
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    invoke-virtual {v1, v4}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-gtz v1, :cond_15c

    .line 1361
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    sget-object v4, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v1, v4}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-nez v1, :cond_b5

    .line 1362
    sget-object v1, Landroid/companion/virtual/VirtualDeviceParams$Builder;->INFINITE_TIMEOUT:Ljava/time/Duration;

    iput-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    .line 1365
    :cond_b5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->defaultDeviceCameraAccessPolicy()Z

    move-result v1

    if-nez v1, :cond_c1

    .line 1366
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1369
    :cond_c1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->activityControlApi()Z

    move-result v1

    if-nez v1, :cond_cd

    .line 1370
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1373
    :cond_cd
    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    if-nez v1, :cond_d5

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    if-eqz v1, :cond_dd

    :cond_d5
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 1375
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v3, :cond_154

    .line 1381
    :cond_dd
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1382
    nop

    :goto_e3
    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11e

    .line 1383
    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    .line 1384
    invoke-virtual {v3}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v4

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 1385
    invoke-virtual {v3}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 1389
    invoke-virtual {v3}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1382
    add-int/lit8 v2, v2, 0x1

    goto :goto_e3

    .line 1386
    :cond_116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sensor names must be unique for a particular sensor type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1392
    :cond_11e
    new-instance v4, Landroid/companion/virtual/VirtualDeviceParams;

    iget v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    iget-object v6, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    iget v7, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iget-object v8, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    iget v9, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    iget-object v10, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    iget-object v11, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mName:Ljava/lang/String;

    iget-object v12, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    iget-object v13, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mHomeComponent:Landroid/content/ComponentName;

    iget-object v14, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mInputMethodComponent:Landroid/content/ComponentName;

    iget-object v15, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    iget v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    .line 1407
    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v19

    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    .line 1408
    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v21

    iget-object v0, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

    const/16 v24, 0x0

    move-object/from16 v23, v0

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-direct/range {v4 .. v24}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;IIJJLandroid/companion/virtual/ViewConfigurationParams;Landroid/companion/virtual/VirtualDeviceParams-IA;)V

    .line 1392
    return-object v4

    .line 1377
    :cond_154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DEVICE_POLICY_CUSTOM for POLICY_TYPE_AUDIO is required for configuration of device-specific audio session ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_15c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dim duration cannot be greater than the screen off timeout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_7b
    .end packed-switch
.end method

.method public whitelist setAllowedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1107
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-ne v0, v1, :cond_a

    goto :goto_12

    .line 1109
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1112
    :cond_12
    :goto_12
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    .line 1113
    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    .line 1114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 1115
    return-object p0
.end method

.method public whitelist setAllowedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1041
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-ne v0, v1, :cond_a

    goto :goto_12

    .line 1043
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Allowed cross task navigations and blocked cross task navigations cannot  both be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1047
    :cond_12
    :goto_12
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    .line 1048
    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    .line 1049
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    .line 1050
    return-object p0
.end method

.method public whitelist setAudioPlaybackSessionId(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 3

    .line 1247
    if-ltz p1, :cond_5

    .line 1250
    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    .line 1251
    return-object p0

    .line 1248
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid playback audio session id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setAudioRecordingSessionId(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 3

    .line 1271
    if-ltz p1, :cond_5

    .line 1274
    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    .line 1275
    return-object p0

    .line 1272
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid recording audio session id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setBlockedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1137
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v0, :cond_11

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-nez v0, :cond_9

    goto :goto_11

    .line 1139
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1142
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    .line 1143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    .line 1144
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 1145
    return-object p0
.end method

.method public whitelist setBlockedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1076
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    if-eqz v0, :cond_11

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-nez v0, :cond_9

    goto :goto_11

    .line 1078
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Allowed cross task navigation and blocked task navigation cannot  be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1082
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    .line 1084
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    .line 1085
    return-object p0
.end method

.method public whitelist setDevicePolicy(II)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4

    .line 1174
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1175
    return-object p0
.end method

.method public whitelist setDimDuration(Ljava/time/Duration;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4

    .line 920
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-ltz v0, :cond_11

    .line 923
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    .line 924
    return-object p0

    .line 921
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The dim duration cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setHomeComponent(Landroid/content/ComponentName;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2

    .line 965
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mHomeComponent:Landroid/content/ComponentName;

    .line 966
    return-object p0
.end method

.method public whitelist setInputMethodComponent(Landroid/content/ComponentName;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2

    .line 987
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mInputMethodComponent:Landroid/content/ComponentName;

    .line 988
    return-object p0
.end method

.method public whitelist setLockState(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2

    .line 897
    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    .line 898
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2

    .line 1159
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mName:Ljava/lang/String;

    .line 1160
    return-object p0
.end method

.method public whitelist setScreenOffTimeout(Ljava/time/Duration;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4

    .line 945
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-ltz v0, :cond_11

    .line 948
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    .line 949
    return-object p0

    .line 946
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The screen off timeout cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setUsersWithMatchingAccounts(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .line 1014
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    .line 1015
    return-object p0
.end method

.method public whitelist setViewConfigurationParams(Landroid/companion/virtual/ViewConfigurationParams;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2

    .line 1287
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

    .line 1288
    return-object p0
.end method

.method public whitelist setVirtualSensorCallback(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorCallback;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 3

    .line 1207
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1208
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/sensor/VirtualSensorCallback;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    .line 1209
    return-object p0
.end method

.method public whitelist setVirtualSensorDirectChannelCallback(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 3

    .line 1225
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1226
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    .line 1227
    return-object p0
.end method
