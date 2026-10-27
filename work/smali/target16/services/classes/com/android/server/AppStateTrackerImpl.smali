.class public Lcom/android/server/AppStateTrackerImpl;
.super Ljava/lang/Object;
.source "AppStateTrackerImpl.java"

# interfaces
.implements Lcom/android/server/AppStateTracker;


# static fields
.field static final TARGET_OP:I = 0x46


# instance fields
.field public final mActiveUids:Landroid/util/SparseBooleanArray;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public volatile mBackgroundRestrictedUidPackages:Ljava/util/Set;

.field public mBatterySaverEnabled:Z

.field public final mContext:Landroid/content/Context;

.field final mExemptedBucketPackages:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

.field public mForceAllAppStandbyForSmallBattery:Z

.field public mForceAllAppsStandby:Z

.field public final mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

.field public mIActivityManager:Landroid/app/IActivityManager;

.field public mIsPluggedIn:Z

.field public final mListeners:Landroid/util/ArraySet;

.field public final mLock:Ljava/lang/Object;

.field public mPowerExemptAllAppIds:[I

.field public mPowerExemptSystemAppIds:[I

.field public mPowerExemptUserAppIds:[I

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mRunAnyRestrictedPackages:Landroid/util/ArraySet;

.field public mStandbyTracker:Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

.field public mStarted:Z

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mTempExemptAppIds:[I


# direct methods
.method public static synthetic $r8$lambda$qVyUgEB05pGgqtZDT4yMA5Prsac(Lcom/android/server/AppStateTrackerImpl;Landroid/os/PowerSaveState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->lambda$onSystemServicesReady$0(Landroid/os/PowerSaveState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/AppStateTrackerImpl;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->cloneListeners()[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateBackgroundRestrictedUidPackagesLocked(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateForceAllAppStandbyState(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smaddUidToArray(Landroid/util/SparseBooleanArray;I)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->addUidToArray(Landroid/util/SparseBooleanArray;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smremoveUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 14

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 111
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 117
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptSystemAppIds:[I

    .line 123
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 129
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 132
    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 138
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 142
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    .line 177
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 211
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string v9, "IS_UID_ACTIVE_CACHED"

    const-string v10, "IS_UID_ACTIVE_RAW"

    const-string v1, "UID_FG_STATE_CHANGED"

    const-string v2, "UID_ACTIVE_STATE_CHANGED"

    const-string v3, "RUN_ANY_CHANGED"

    const-string v4, "ALL_UNEXEMPTED"

    const-string v5, "ALL_EXEMPTION_LIST_CHANGED"

    const-string v6, "TEMP_EXEMPTION_LIST_CHANGED"

    const-string v7, "EXEMPTED_BUCKET_CHANGED"

    const-string v8, "FORCE_ALL_CHANGED"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 263
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppStateTrackerImpl$2;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 450
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/AppStateTrackerImpl$3;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 446
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    .line 447
    new-instance p1, Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;-><init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    return-void
.end method

.method public static addUidToArray(Landroid/util/SparseBooleanArray;I)Z
    .registers 4

    .line 708
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 711
    :cond_8
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x1

    .line 714
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v0
.end method

.method public static isAnyAppIdUnexempt([I[I)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1093
    :goto_3
    array-length v3, p0

    const/4 v4, 0x1

    if-lt v1, v3, :cond_9

    move v3, v4

    goto :goto_a

    :cond_9
    move v3, v0

    .line 1094
    :goto_a
    array-length v5, p1

    if-lt v2, v5, :cond_f

    move v5, v4

    goto :goto_10

    :cond_f
    move v5, v0

    :goto_10
    if-nez v3, :cond_23

    if-eqz v5, :cond_15

    goto :goto_23

    .line 1098
    :cond_15
    aget v3, p0, v1

    .line 1099
    aget v5, p1, v2

    if-ne v3, v5, :cond_20

    add-int/lit8 v1, v1, 0x1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_20
    if-ge v3, v5, :cond_1d

    return v4

    :cond_23
    :goto_23
    if-eqz v3, :cond_26

    return v0

    :cond_26
    return v5
.end method

.method public static removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    .registers 5

    .line 719
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 722
    :cond_8
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    if-eqz p2, :cond_15

    .line 726
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_18

    .line 728
    :cond_15
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_18
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
    .registers 3

    .line 182
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppStateTrackerImpl$1;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    return-void
.end method

.method public addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V
    .registers 3

    .line 1124
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1126
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public areAlarmsRestricted(ILjava/lang/String;)Z
    .registers 7

    .line 1135
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1138
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1139
    :try_start_b
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1140
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1141
    monitor-exit v0

    return v1

    :catchall_19
    move-exception p0

    goto :goto_2c

    .line 1146
    :cond_1b
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1147
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    monitor-exit v0

    return v1

    .line 1148
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_19

    throw p0
.end method

.method public areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z
    .registers 7

    .line 1155
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1158
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1159
    :try_start_b
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1160
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1161
    monitor-exit v0

    return v1

    :catchall_19
    move-exception p0

    goto :goto_3d

    .line 1163
    :cond_1b
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1164
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1165
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1166
    monitor-exit v0

    return v1

    .line 1168
    :cond_39
    iget-boolean p0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return p0

    .line 1169
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_b .. :try_end_3e} :catchall_19

    throw p0
.end method

.method public areJobsRestricted(ILjava/lang/String;Z)Z
    .registers 8

    .line 1179
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1182
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1183
    :try_start_b
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1184
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_59

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1185
    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_59

    .line 1191
    :cond_20
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v2

    if-nez v2, :cond_33

    .line 1192
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 p0, 0x1

    .line 1193
    monitor-exit v0

    return p0

    :catchall_31
    move-exception p0

    goto :goto_5b

    :cond_33
    if-eqz p3, :cond_37

    .line 1196
    monitor-exit v0

    return v1

    .line 1198
    :cond_37
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1199
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p3}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result p3

    if-eqz p3, :cond_55

    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p3}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result p3

    if-nez p3, :cond_55

    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1200
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 1201
    monitor-exit v0

    return v1

    .line 1203
    :cond_55
    iget-boolean p0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return p0

    .line 1186
    :cond_59
    :goto_59
    monitor-exit v0

    return v1

    .line 1204
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_b .. :try_end_5c} :catchall_31

    throw p0
.end method

.method public final cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V
    .registers 4

    .line 1041
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_18

    .line 1042
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1043
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_15

    .line 1046
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_15
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method public final cloneListeners()[Lcom/android/server/AppStateTrackerImpl$Listener;
    .registers 3

    .line 800
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/AppStateTrackerImpl$Listener;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/AppStateTrackerImpl$Listener;

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 802
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    .line 1309
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_3
    const-string v1, "Current AppStateTracker State:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1313
    const-string v1, "Force all apps standby: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isForceAllAppsStandbyEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1316
    const-string v1, "Small Battery Device: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1319
    const-string v1, "Force all apps standby for small battery device: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1320
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1322
    const-string v1, "Plugged In: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1325
    const-string v1, "Active uids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1326
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppStateTrackerImpl;->dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    .line 1328
    const-string v1, "System exemption list appids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptSystemAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    const-string v1, "Except-idle + user exemption list appids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1332
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    const-string v1, "User exemption list appids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1337
    const-string v1, "Temp exemption list appids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    const-string v1, "Exempted bucket packages:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 1342
    :goto_83
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_c1

    .line 1343
    const-string v3, "User "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1345
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1347
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v1

    .line 1348
    :goto_a0
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v4

    if-ge v3, v4, :cond_bb

    .line 1349
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    :catchall_b9
    move-exception p0

    goto :goto_10d

    .line 1352
    :cond_bb
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    .line 1354
    :cond_c1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1355
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1357
    const-string v1, "Restricted packages:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1359
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_100

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1360
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1361
    const-string v3, " "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1362
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_d5

    .line 1365
    :cond_100
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1367
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1368
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1369
    monitor-exit v0

    return-void

    :goto_10d
    monitor-exit v0
    :try_end_10e
    .catchall {:try_start_3 .. :try_end_10e} :catchall_b9

    throw p0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15

    .line 1390
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1391
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isForceAllAppsStandbyEnabled()Z

    move-result v1

    const-wide v2, 0x10800000001L

    .line 1393
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v1

    const-wide v2, 0x10800000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1396
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    const-wide v2, 0x10800000007L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1398
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    const-wide v2, 0x10800000008L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v1, 0x0

    move v2, v1

    .line 1400
    :goto_35
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 1401
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1402
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    const-wide v4, 0x20500000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_57

    :catchall_54
    move-exception p0

    goto/16 :goto_128

    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 1406
    :cond_5a
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptSystemAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_5e
    if-ge v4, v3, :cond_6d

    aget v5, v2, v4

    const-wide v6, 0x2050000000eL

    .line 1407
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 1410
    :cond_6d
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_71
    if-ge v4, v3, :cond_80

    aget v5, v2, v4

    const-wide v6, 0x20500000003L

    .line 1411
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 1414
    :cond_80
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_84
    if-ge v4, v3, :cond_93

    aget v5, v2, v4

    const-wide v6, 0x2050000000cL

    .line 1415
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    .line 1418
    :cond_93
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_97
    if-ge v4, v3, :cond_a6

    aget v5, v2, v4

    const-wide v6, 0x20500000004L

    .line 1419
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    :cond_a6
    move v2, v1

    .line 1422
    :goto_a7
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    const-wide v4, 0x10900000002L

    const-wide v6, 0x10500000001L

    if-ge v2, v3, :cond_e8

    move v3, v1

    .line 1423
    :goto_ba
    iget-object v8, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v8

    if-ge v3, v8, :cond_e5

    const-wide v8, 0x20b0000000aL

    .line 1424
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1426
    iget-object v10, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v10

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1427
    iget-object v10, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1428
    invoke-virtual {v10, v2, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1427
    invoke-virtual {p1, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1430
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    :cond_e5
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 1434
    :cond_e8
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ee
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_119

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    const-wide v8, 0x20b00000005L

    .line 1435
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1437
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1438
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1440
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_ee

    .line 1443
    :cond_119
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const-wide v1, 0x10b00000009L

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1445
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1446
    monitor-exit v0

    return-void

    :goto_128
    monitor-exit v0
    :try_end_129
    .catchall {:try_start_3 .. :try_end_129} :catchall_54

    throw p0
.end method

.method public final dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V
    .registers 5

    .line 1373
    const-string p0, "["

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1376
    const-string p0, ""

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1377
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1378
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1380
    const-string p0, " "

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1383
    :cond_27
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I
    .registers 7

    .line 665
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_19

    .line 667
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_3a

    .line 670
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 672
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_37

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    return v1

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3a
    const/4 p0, -0x1

    return p0
.end method

.method public handleUserRemoved(I)V
    .registers 5

    .line 1024
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1025
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_2e

    .line 1026
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1027
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1028
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_2b

    .line 1031
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_3d

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1034
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    .line 1035
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/AppStateTrackerImpl;->cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V

    .line 1036
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1037
    monitor-exit v0

    return-void

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_29

    throw p0
.end method

.method public injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 573
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public injectAppOpsManager()Landroid/app/AppOpsManager;
    .registers 2

    .line 557
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;
    .registers 1

    .line 583
    const-class p0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppStandbyInternal;

    return-object p0
.end method

.method public injectGetGlobalSettingInt(Ljava/lang/String;I)I
    .registers 3

    .line 593
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public injectIActivityManager()Landroid/app/IActivityManager;
    .registers 1

    .line 568
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .registers 1

    .line 562
    const-string p0, "appops"

    .line 563
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 562
    invoke-static {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p0

    return-object p0
.end method

.method public injectPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .registers 1

    .line 578
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public isAppBackgroundRestricted(ILjava/lang/String;)Z
    .registers 3

    .line 193
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isForceAllAppsStandbyEnabled()Z
    .registers 2

    .line 1244
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1245
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1246
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z
    .registers 4

    .line 1255
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1257
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isRunAnyRestrictedLocked(ILjava/lang/String;)Z
    .registers 3

    .line 684
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isSmallBatteryDevice()Z
    .registers 1

    .line 588
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result p0

    return p0
.end method

.method public isUidActive(I)Z
    .registers 3

    .line 1215
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1218
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_b
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 1220
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method public isUidActiveSynced(I)Z
    .registers 5

    .line 1229
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1232
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1234
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result p1

    .line 1235
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return p1
.end method

.method public isUidPowerSaveExempt(I)Z
    .registers 3

    .line 1266
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1267
    :try_start_3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1268
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isUidPowerSaveIdleExempt(I)Z
    .registers 4

    .line 1286
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 1287
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1288
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptSystemAppIds:[I

    .line 1289
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_1c

    :cond_18
    const/4 p0, 0x0

    goto :goto_1d

    :catchall_1a
    move-exception p0

    goto :goto_1f

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    monitor-exit v0

    return p0

    .line 1290
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1a

    throw p0
.end method

.method public isUidTempPowerSaveExempt(I)Z
    .registers 3

    .line 1299
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1301
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final synthetic lambda$onSystemServicesReady$0(Landroid/os/PowerSaveState;)V
    .registers 3

    .line 542
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_3
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    .line 544
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 545
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onSystemServicesReady()V
    .registers 7

    .line 493
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    if-eqz v1, :cond_c

    .line 495
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto/16 :goto_db

    :cond_c
    const/4 v1, 0x1

    .line 497
    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    .line 499
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectIActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIActivityManager:Landroid/app/IActivityManager;

    .line 500
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 501
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 502
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IAppOpsService;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 503
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 504
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 506
    new-instance v1, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    .line 507
    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->register()V

    .line 508
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    .line 509
    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    .line 510
    new-instance v1, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStandbyTracker:Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

    .line 511
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 512
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_9

    .line 516
    :try_start_79
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Lcom/android/server/AppStateTrackerImpl$UidObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AppStateTrackerImpl$UidObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl-IA;)V

    const/16 v4, 0x1e

    const/4 v5, -0x1

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    new-instance v2, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;

    invoke-direct {v2, p0, v3}, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl-IA;)V

    const/16 v4, 0x46

    invoke-interface {v1, v4, v3, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_93} :catch_93
    .catchall {:try_start_79 .. :try_end_93} :catchall_9

    .line 528
    :catch_93
    :try_start_93
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 529
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 533
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 534
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->refreshForcedAppStandbyUidPackagesLocked()V

    .line 539
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 548
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    .line 551
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 552
    monitor-exit v0

    return-void

    :goto_db
    monitor-exit v0
    :try_end_dc
    .catchall {:try_start_93 .. :try_end_dc} :catchall_9

    throw p0
.end method

.method public final refreshForcedAppStandbyUidPackagesLocked()V
    .registers 12

    .line 601
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 602
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    .line 608
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_61

    .line 610
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 611
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    move v7, v3

    .line 613
    :goto_2d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5e

    .line 614
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 615
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    if-eq v9, v1, :cond_40

    goto :goto_5b

    .line 618
    :cond_40
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-eqz v8, :cond_5b

    .line 619
    iget-object v8, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 620
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 619
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5b
    :goto_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 624
    :cond_61
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    return-void
.end method

.method public setPowerSaveExemptionListAppIds([I[I[I[I)V
    .registers 8

    .line 1059
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 1061
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1063
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptSystemAppIds:[I

    .line 1064
    iput-object p2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 1065
    iput-object p4, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1066
    iput-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 1068
    invoke-static {v1, p2}, Lcom/android/server/AppStateTrackerImpl;->isAnyAppIdUnexempt([I[I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1069
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyAllUnexempted()V

    goto :goto_2a

    :catchall_1b
    move-exception p0

    goto :goto_39

    .line 1070
    :cond_1d
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 1071
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyAllExemptionListChanged()V

    .line 1074
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_37

    .line 1075
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyTempExemptionListChanged()V

    .line 1078
    :cond_37
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_1b

    throw p0
.end method

.method public final toggleForceAllAppsStandbyLocked(Z)V
    .registers 3

    .line 655
    iget-boolean v0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 658
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 660
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyForceAllAppsStandbyChanged()V

    return-void
.end method

.method public final updateBackgroundRestrictedUidPackagesLocked()V
    .registers 5

    .line 633
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 634
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1c

    .line 635
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 637
    :cond_1c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    return-void
.end method

.method public final updateForceAllAppStandbyState()V
    .registers 3

    .line 641
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 643
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/AppStateTrackerImpl;->toggleForceAllAppsStandbyLocked(Z)V

    goto :goto_1c

    :catchall_15
    move-exception p0

    goto :goto_1e

    .line 645
    :cond_17
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    invoke-virtual {p0, v1}, Lcom/android/server/AppStateTrackerImpl;->toggleForceAllAppsStandbyLocked(Z)V

    .line 647
    :goto_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_15

    throw p0
.end method

.method public updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z
    .registers 8

    .line 693
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    :goto_b
    if-ne v3, p3, :cond_e

    return v1

    :cond_e
    if-eqz p3, :cond_1e

    .line 699
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 701
    :cond_1e
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 703
    :goto_23
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    return v2
.end method
