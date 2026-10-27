.class public Lcom/android/server/notification/PreferencesHelper;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# static fields
.field static final DEFAULT_BUBBLE_PREFERENCE:I = 0x0

.field static final DEFAULT_HIDE_SILENT_STATUS_BAR_ICONS:Z = true

.field static final NOTIFICATION_CHANNEL_COUNT_LIMIT:I = 0x1388

.field static final NOTIFICATION_CHANNEL_GROUP_COUNT_LIMIT:I = 0x1770

.field public static final PREF_GRACE_PERIOD_MS:J

.field static final TAG_RANKING:Ljava/lang/String; = "ranking"


# instance fields
.field public final XML_VERSION:I

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field public mBubblesEnabled:Landroid/util/SparseBooleanArray;

.field public mClock:Ljava/time/Clock;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserHasPriorityChannels:Z

.field public mHideSilentStatusBarIcons:Z

.field public mIsMediaNotificationFilteringEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

.field public mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

.field public final mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

.field public final mPackagePreferences:Landroid/util/ArrayMap;

.field public final mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

.field public final mPermissionManager:Landroid/permission/PermissionManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field public final mRestoredWithoutUids:Landroid/util/ArrayMap;

.field public final mShowReviewPermissionsNotification:Z

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field public final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2

    .line 138
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/notification/PreferencesHelper;->PREF_GRACE_PERIOD_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/PermissionHelper;Landroid/permission/PermissionManager;Lcom/android/server/notification/NotificationChannelLogger;Landroid/app/AppOpsManager;Lcom/android/server/notification/ManagedServices$UserProfiles;Lcom/android/server/uri/UriGrantsManagerInternal;ZLjava/time/Clock;)V
    .registers 14

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 218
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 221
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 254
    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 255
    iput-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 256
    iput-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 257
    iput-object p5, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 258
    iput-object p6, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 259
    iput-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 260
    iput-object p7, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 261
    iput-object p8, p0, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 262
    iput-object p9, p0, Lcom/android/server/notification/PreferencesHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 263
    iput-object p10, p0, Lcom/android/server/notification/PreferencesHelper;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 264
    iput-boolean p11, p0, Lcom/android/server/notification/PreferencesHelper;->mShowReviewPermissionsNotification:Z

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111023a

    .line 266
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    .line 267
    iput-object p12, p0, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    const/4 p1, 0x4

    .line 268
    iput p1, p0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    .line 270
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    .line 271
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 272
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateMediaNotificationFilteringEnabled()V

    return-void
.end method

.method public static packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 3360
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

.method public static unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 3364
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


# virtual methods
.method public final addReservedChannelLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 6

    .line 694
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_74

    goto :goto_38

    :sswitch_d
    const-string v0, "android.app.promotions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_38

    :cond_16
    const/4 v2, 0x3

    goto :goto_38

    :sswitch_18
    const-string v0, "android.app.recs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_38

    :cond_21
    move v2, v1

    goto :goto_38

    :sswitch_23
    const-string v0, "android.app.news"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_38

    :cond_2c
    const/4 v2, 0x1

    goto :goto_38

    :sswitch_2e
    const-string v0, "android.app.social"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    packed-switch v2, :pswitch_data_86

    const-string v0, ""

    goto :goto_65

    .line 696
    :pswitch_3e
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    const v2, 0x1040940

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    .line 699
    :pswitch_48
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    const v2, 0x1040951

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    .line 702
    :pswitch_52
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    const v2, 0x10406e1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    .line 705
    :pswitch_5c
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    const v2, 0x1040a3b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    :goto_65
    new-instance v2, Landroid/app/NotificationChannel;

    invoke-direct {v2, p2, v0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 709
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    return-object v2

    nop

    :sswitch_data_74
    .sparse-switch
        -0x9785747 -> :sswitch_2e
        0x413eff1f -> :sswitch_23
        0x4140ce2f -> :sswitch_18
        0x4f40a37c -> :sswitch_d
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_52
        :pswitch_48
        :pswitch_3e
    .end packed-switch
.end method

.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .registers 7

    .line 3201
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    return v1

    .line 3205
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x1

    if-gez v0, :cond_27

    .line 3206
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 3207
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_badging"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_24

    move v1, v2

    .line 3206
    :cond_24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3211
    :cond_27
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public bubblesEnabled(Landroid/os/UserHandle;)Z
    .registers 7

    .line 3237
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    return v1

    .line 3241
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x1

    if-gez v0, :cond_27

    .line 3242
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 3243
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_bubbles"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_24

    move v1, v2

    .line 3242
    :cond_24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3247
    :cond_27
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 4

    .line 886
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 887
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 888
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    goto :goto_f

    :catchall_c
    move-exception p0

    goto :goto_11

    :cond_e
    const/4 p0, 0x1

    :goto_f
    monitor-exit v0

    return p0

    .line 889
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    throw p0
.end method

.method public canShowNotificationsOnLockscreen(I)Z
    .registers 3

    .line 3290
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3291
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    .line 3293
    :cond_b
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public canShowPrivateNotificationsOnLockScreen(I)Z
    .registers 3

    .line 3298
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3299
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 3301
    :cond_b
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public final channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z
    .registers 5

    .line 2235
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_10

    return p1

    .line 2240
    :cond_10
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    if-nez p0, :cond_1f

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    return p1
.end method

.method public clearData(Ljava/lang/String;I)V
    .registers 5

    .line 3114
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3115
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 3117
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 3118
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    const/4 p2, 0x0

    .line 3119
    iput-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 p2, 0x0

    .line 3120
    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 3121
    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    const/16 v1, -0x3e8

    .line 3122
    iput v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 3123
    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 3124
    iput v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/4 p2, 0x1

    .line 3125
    iput-boolean p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 3127
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    .line 3128
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelGroupCache()V

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_35

    .line 3131
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_31

    throw p0
.end method

.method public clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V
    .registers 2

    .line 1293
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    return-void
.end method

.method public final createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 6

    .line 654
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    return v2

    .line 658
    :cond_7
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x104037c

    if-eqz v0, :cond_27

    .line 659
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    return v2

    .line 664
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-nez v0, :cond_2e

    return v2

    .line 671
    :cond_2e
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 673
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-direct {v0, v1, p0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 675
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne p0, v1, :cond_42

    move v2, v3

    :cond_42
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 676
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 677
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v2, -0x3e8

    if-eq p0, v2, :cond_54

    const/4 p0, 0x4

    .line 678
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 680
    :cond_54
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz p0, :cond_5b

    .line 681
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 683
    :cond_5b
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq p0, v2, :cond_62

    .line 684
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 686
    :cond_62
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZIZ)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v3, p2

    move-object/from16 v1, p3

    .line 1127
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1131
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const/4 v6, 0x0

    if-ltz v2, :cond_32

    .line 1132
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const/4 v7, 0x5

    if-gt v2, v7, :cond_32

    move v2, v5

    goto :goto_33

    :cond_32
    move v2, v6

    :goto_33
    const-string v7, "Invalid importance level"

    .line 1131
    invoke-static {v2, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1135
    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1136
    :try_start_3b
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1137
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5d

    iget-object v8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    goto :goto_5d

    .line 1138
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NotificationChannelGroup doesn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5a
    move-exception v0

    goto/16 :goto_23a

    .line 1140
    :cond_5d
    :goto_5d
    const-string/jumbo v8, "miscellaneous"

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_232

    if-nez p7, :cond_7a

    .line 1144
    sget-object v8, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    .line 1145
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 1146
    monitor-exit v7

    return v6

    .line 1148
    :cond_7a
    iget-object v8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    const/16 v9, -0x3e8

    if-eqz v8, :cond_17b

    if-eqz p4, :cond_17b

    .line 1151
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 1153
    invoke-virtual {v8, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    const-wide/16 v10, -0x1

    .line 1154
    invoke-virtual {v8, v10, v11}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 1159
    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1161
    iget-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v2, v1, v3, v4}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    move v2, v5

    :goto_ab
    move v10, v2

    goto :goto_af

    :cond_ad
    move v2, v6

    goto :goto_ab

    .line 1164
    :goto_af
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d1

    .line 1165
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    move v10, v5

    .line 1168
    :cond_d1
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e7

    .line 1169
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    move v10, v5

    .line 1172
    :cond_e7
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v11

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v12

    if-eq v11, v12, :cond_f9

    .line 1173
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v10

    invoke-virtual {v8, v10}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    move v10, v5

    .line 1176
    :cond_f9
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10d

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_10d

    .line 1177
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    move v10, v5

    .line 1183
    :cond_10d
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v11

    move v12, v5

    .line 1185
    invoke-static {v8}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v5

    .line 1186
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v13

    if-nez v13, :cond_12e

    .line 1187
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v13

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v14

    if-ge v13, v14, :cond_12e

    .line 1188
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/app/NotificationChannel;->setImportance(I)V

    move v10, v12

    .line 1194
    :cond_12e
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v13

    if-nez v13, :cond_156

    if-eqz p5, :cond_156

    .line 1195
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v13

    .line 1196
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v14

    if-ne v13, v14, :cond_142

    if-eqz v2, :cond_156

    .line 1197
    :cond_142
    invoke-virtual {v8, v13}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 1200
    iget-boolean v10, v0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-ne v13, v10, :cond_153

    .line 1201
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v10

    if-eq v11, v10, :cond_150

    goto :goto_153

    :cond_150
    move v10, v6

    move v6, v12

    goto :goto_159

    :cond_153
    :goto_153
    move v6, v12

    move v10, v6

    goto :goto_159

    :cond_156
    move v15, v10

    move v10, v6

    move v6, v15

    .line 1207
    :goto_159
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v11

    if-ne v11, v9, :cond_167

    .line 1208
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    goto :goto_168

    :cond_167
    move v12, v6

    :goto_168
    if-eqz v12, :cond_16d

    .line 1213
    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_16d
    if-eqz v12, :cond_178

    if-nez v2, :cond_178

    .line 1216
    iget-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    const/4 v6, 0x0

    move-object v2, v8

    invoke-interface/range {v1 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    :cond_178
    :goto_178
    move v5, v12

    goto/16 :goto_21e

    :cond_17b
    move v12, v5

    .line 1220
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/16 v10, 0x1388

    if-ge v5, v10, :cond_22a

    if-eqz p4, :cond_195

    if-nez p5, :cond_195

    .line 1228
    iget v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v10, 0x2

    if-ne v5, v10, :cond_191

    move v5, v12

    goto :goto_192

    :cond_191
    move v5, v6

    :goto_192
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    :cond_195
    if-eqz p4, :cond_1aa

    .line 1231
    iget v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    if-eqz v8, :cond_1a3

    .line 1233
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v5

    goto :goto_1a4

    :cond_1a3
    const/4 v5, -0x1

    .line 1232
    :goto_1a4
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 1235
    invoke-virtual {v1, v6}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 1237
    :cond_1aa
    invoke-virtual {v0, v1}, Lcom/android/server/notification/PreferencesHelper;->clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V
    :try_end_1ad
    .catchall {:try_start_3b .. :try_end_1ad} :catchall_5a

    .line 1243
    :try_start_1ad
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v5, v8, v3}, Lcom/android/server/notification/PermissionHelper;->grantUriPermission(Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/net/Uri;I)V
    :try_end_1b6
    .catch Ljava/lang/SecurityException; {:try_start_1ad .. :try_end_1b6} :catch_1b7
    .catchall {:try_start_1ad .. :try_end_1b6} :catchall_5a

    goto :goto_1be

    .line 1246
    :catch_1b7
    :try_start_1b7
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sget-object v8, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v5, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1250
    :goto_1be
    iget-boolean v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-nez v5, :cond_1c9

    iget-boolean v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz v5, :cond_1c7

    goto :goto_1c9

    :cond_1c7
    move v5, v6

    goto :goto_1ca

    :cond_1c9
    :goto_1c9
    move v5, v12

    :goto_1ca
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 1253
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v5

    if-ne v5, v12, :cond_1d6

    .line 1254
    invoke-virtual {v1, v9}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 1257
    :cond_1d6
    iget-boolean v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-nez v5, :cond_1dd

    .line 1258
    invoke-virtual {v1, v6}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 1260
    :cond_1dd
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 1263
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f9

    .line 1264
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1265
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "Tried to create a conversation channel without a preexisting parent"

    .line 1264
    invoke-static {v5, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1269
    :cond_1f9
    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    iget-boolean v5, v0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-eq v2, v5, :cond_20b

    move v6, v12

    .line 1273
    :cond_20b
    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1275
    iget-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v2, v1, v3, v4}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    move v10, v6

    goto/16 :goto_178

    .line 1277
    :goto_21e
    monitor-exit v7
    :try_end_21f
    .catchall {:try_start_1b7 .. :try_end_21f} :catchall_5a

    if-eqz v10, :cond_224

    .line 1280
    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasPriorityChannels()V

    :cond_224
    if-eqz v5, :cond_229

    .line 1284
    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    :cond_229
    return v5

    .line 1221
    :cond_22a
    :try_start_22a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Limit exceed; cannot create more channels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reserved id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1277
    :goto_23a
    monitor-exit v7
    :try_end_23b
    .catchall {:try_start_22a .. :try_end_23b} :catchall_5a

    throw v0
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZIZ)V
    .registers 18

    .line 1072
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bf

    .line 1080
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1081
    :try_start_1a
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v8

    .line 1082
    iget-object v1, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v3, 0x1770

    if-ge v1, v3, :cond_b5

    const/4 v1, 0x0

    if-eqz p4, :cond_32

    .line 1086
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    goto :goto_32

    :catchall_2f
    move-exception v0

    goto/16 :goto_bd

    .line 1088
    :cond_32
    :goto_32
    iget-object v3, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    const/4 v9, 0x1

    if-eqz v3, :cond_6f

    .line 1090
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    if-eqz p4, :cond_60

    .line 1094
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 1095
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->unlockFields(I)V

    .line 1096
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    goto :goto_6f

    .line 1099
    :cond_60
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    if-eq v4, v5, :cond_6f

    .line 1100
    invoke-virtual {p3, v9}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    move v10, v9

    goto :goto_70

    :cond_6f
    :goto_6f
    move v10, v1

    .line 1105
    :goto_70
    invoke-virtual {p3, v3}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9f

    .line 1108
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    move v4, v1

    .line 1109
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    if-nez v3, :cond_88

    move v5, v9

    goto :goto_89

    :cond_88
    move v5, v4

    :goto_89
    if-eqz v3, :cond_96

    .line 1111
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_96

    move v6, v9

    move-object v4, p1

    move v3, p2

    move-object v2, p3

    goto :goto_9a

    :cond_96
    move v6, v4

    move v3, p2

    move-object v2, p3

    move-object v4, p1

    .line 1109
    :goto_9a
    invoke-interface/range {v1 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroup(Landroid/app/NotificationChannelGroup;ILjava/lang/String;ZZ)V

    move v1, v9

    goto :goto_a0

    :cond_9f
    move v4, v1

    .line 1113
    :goto_a0
    iget-object v3, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    monitor-exit v7
    :try_end_aa
    .catchall {:try_start_1a .. :try_end_aa} :catchall_2f

    if-eqz v10, :cond_af

    .line 1116
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasPriorityChannels()V

    :cond_af
    if-eqz v1, :cond_b4

    .line 1119
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelGroupCache()V

    :cond_b4
    return-void

    .line 1083
    :cond_b5
    :try_start_b5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Limit exceed; cannot create more groups"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :goto_bd
    monitor-exit v7
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_2f

    throw v0

    .line 1076
    :cond_bf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "group.getName() can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createReservedChannel(Ljava/lang/String;II)Landroid/app/NotificationChannel;
    .registers 5

    .line 1507
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1509
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1510
    invoke-static {p3}, Landroid/app/NotificationChannel;->getChannelIdForBundleType(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_15

    const/4 p0, 0x0

    .line 1512
    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    goto :goto_1b

    .line 1514
    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->addReservedChannelLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1515
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_13

    throw p0
.end method

.method public deleteConversations(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;
    .registers 12

    .line 1955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1956
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1957
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-nez v2, :cond_12

    .line 1959
    monitor-exit v1

    return-object v0

    :catchall_10
    move-exception p0

    goto :goto_6a

    .line 1961
    :cond_12
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_58

    .line 1963
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1964
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_55

    .line 1965
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    const/4 v6, 0x1

    .line 1966
    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 1968
    invoke-virtual {p0, v5, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    const/4 v7, 0x2

    .line 1969
    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1971
    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1972
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v6, v5, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    .line 1974
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1977
    :cond_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_10

    .line 1978
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_69

    .line 1979
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-eqz p1, :cond_66

    .line 1980
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasPriorityChannels()V

    .line 1983
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    :cond_69
    return-object v0

    .line 1977
    :goto_6a
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_10

    throw p0
.end method

.method public final deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 5

    .line 635
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    return v2

    .line 640
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result p0

    if-eqz p0, :cond_14

    return v2

    .line 646
    :cond_14
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;IZ)Z
    .registers 7

    .line 1574
    iget-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1575
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p5

    const/4 v0, 0x0

    if-nez p5, :cond_e

    .line 1577
    monitor-exit p4

    return v0

    :catchall_c
    move-exception p0

    goto :goto_2e

    .line 1579
    :cond_e
    iget-object p5, p5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p5, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationChannel;

    if-eqz p3, :cond_21

    .line 1581
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    .line 1582
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z

    move-result p1

    goto :goto_22

    :cond_21
    move p1, v0

    .line 1584
    :goto_22
    monitor-exit p4
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_c

    if-eqz v0, :cond_28

    .line 1586
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasPriorityChannels()V

    :cond_28
    if-eqz p1, :cond_2d

    .line 1590
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    :cond_2d
    return p1

    .line 1584
    :goto_2e
    :try_start_2e
    monitor-exit p4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_c

    throw p0
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 13

    .line 1789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1792
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1793
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 1794
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_68

    .line 1798
    :cond_15
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    .line 1801
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v5, v3, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroupDeleted(Landroid/app/NotificationChannelGroup;ILjava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_2a

    :catchall_27
    move-exception p0

    goto :goto_6a

    :cond_29
    move v3, v4

    .line 1805
    :goto_2a
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v4

    :goto_31
    if-ge v4, v5, :cond_53

    .line 1807
    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    .line 1808
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 1809
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v8

    or-int/2addr v6, v8

    .line 1810
    invoke-virtual {p0, v7, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z

    .line 1811
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 1814
    :cond_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_8 .. :try_end_54} :catchall_27

    if-eqz v6, :cond_59

    .line 1816
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasPriorityChannels()V

    .line 1819
    :cond_59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_62

    .line 1820
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    :cond_62
    if-eqz v3, :cond_67

    .line 1823
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelGroupCache()V

    :cond_67
    return-object v0

    .line 1795
    :cond_68
    :goto_68
    :try_start_68
    monitor-exit v1

    return-object v0

    .line 1814
    :goto_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_27

    throw p0
.end method

.method public final deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z
    .registers 7

    .line 1598
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    .line 1599
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 1601
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x2

    .line 1602
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1603
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1604
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {p0, p1, p3, p2}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    return v0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public didUserEverDemoteInvalidMsgApp(Ljava/lang/String;I)Z
    .registers 4

    .line 1005
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1007
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 1008
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 12

    .line 2386
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2387
    :try_start_3
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    const-wide v2, 0x20b00000002L

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 2389
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    const/4 v6, 0x0

    const-wide v2, 0x20b00000003L

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 2391
    monitor-exit v7

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v7
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 12

    .line 2372
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "per-package config version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2375
    const-string v2, "PackagePreferences:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2377
    :try_start_22
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 2378
    const-string v2, "Restored without uid:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2379
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 2380
    monitor-exit v6

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONArray;
    .registers 7

    .line 2885
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2886
    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->getPermissionBasedPackageBans(Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object p0

    .line 2887
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 2888
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2889
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_39

    .line 2890
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2891
    :cond_39
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2893
    :try_start_3e
    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2894
    const-string/jumbo v1, "packageName"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception p2

    .line 2896
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2898
    :goto_4f
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11

    :cond_53
    return-object v0
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 7

    .line 2944
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2945
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object p0

    .line 2946
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2947
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p1, :cond_2b

    .line 2948
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2949
    :cond_2b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2951
    :try_start_30
    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2952
    const-string v2, "channelCount"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v1

    .line 2954
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2956
    :goto_44
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11

    :cond_48
    return-object v0
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONObject;
    .registers 16

    .line 2783
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2784
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2785
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2787
    :try_start_d
    const-string/jumbo v3, "noUid"

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_19} :catch_1d
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    goto :goto_1d

    :catchall_1a
    move-exception p0

    goto/16 :goto_180

    .line 2791
    :catch_1d
    :goto_1d
    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    if-eqz p2, :cond_25

    .line 2796
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    .line 2799
    :goto_26
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2800
    :try_start_29
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_31
    const/4 v7, 0x3

    if-ge v6, v4, :cond_11a

    .line 2802
    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz p1, :cond_4a

    .line 2803
    iget-object v9, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_116

    goto :goto_4a

    :catchall_47
    move-exception p0

    goto/16 :goto_17e

    .line 2804
    :cond_4a
    :goto_4a
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_4f
    .catchall {:try_start_29 .. :try_end_4f} :catchall_47

    .line 2806
    :try_start_4f
    const-string/jumbo v10, "userId"

    iget v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2807
    const-string/jumbo v10, "packageName"

    iget-object v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2808
    new-instance v10, Landroid/util/Pair;

    iget v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_96

    .line 2810
    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_96

    .line 2811
    const-string v11, "importance"

    .line 2813
    invoke-virtual {p2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_8b

    goto :goto_8c

    :cond_8b
    move v7, v5

    .line 2812
    :goto_8c
    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v7

    .line 2811
    invoke-virtual {v9, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2815
    invoke-interface {v2, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2817
    :cond_96
    iget v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v7, :cond_a4

    .line 2818
    const-string/jumbo v10, "priority"

    .line 2819
    invoke-static {v7}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v7

    .line 2818
    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2821
    :cond_a4
    iget v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/16 v10, -0x3e8

    if-eq v7, v10, :cond_b4

    .line 2822
    const-string/jumbo v10, "visibility"

    .line 2823
    invoke-static {v7}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    .line 2822
    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2825
    :cond_b4
    iget-boolean v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v10, 0x1

    if-eq v7, v10, :cond_c3

    .line 2826
    const-string/jumbo v10, "showBadge"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2828
    :cond_c3
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 2829
    iget-object v10, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannel;

    .line 2830
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d2

    .line 2832
    :cond_e6
    const-string v10, "channels"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2833
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 2834
    iget-object v8, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_fa
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    .line 2835
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_fa

    .line 2837
    :cond_10e
    const-string v8, "groups"

    invoke-virtual {v9, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_113
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_113} :catch_113
    .catchall {:try_start_4f .. :try_end_113} :catchall_47

    .line 2841
    :catch_113
    :try_start_113
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_116
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_31

    .line 2844
    :cond_11a
    monitor-exit v3
    :try_end_11b
    .catchall {:try_start_113 .. :try_end_11b} :catchall_47

    if-eqz v2, :cond_178

    .line 2848
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_121
    :goto_121
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_178

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz p1, :cond_139

    .line 2849
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 2850
    :cond_139
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2852
    :try_start_13e
    const-string/jumbo v4, "userId"

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2853
    const-string/jumbo v4, "packageName"

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2854
    const-string v4, "importance"

    .line 2856
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16c

    move v2, v7

    goto :goto_16d

    :cond_16c
    move v2, v5

    .line 2855
    :goto_16d
    invoke-static {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2854
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_174
    .catch Lorg/json/JSONException; {:try_start_13e .. :try_end_174} :catch_174

    .line 2861
    :catch_174
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_121

    .line 2867
    :cond_178
    :try_start_178
    const-string p0, "PackagePreferencess"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17d
    .catch Lorg/json/JSONException; {:try_start_178 .. :try_end_17d} :catch_17d

    :catch_17d
    return-object v0

    .line 2844
    :goto_17e
    :try_start_17e
    monitor-exit v3
    :try_end_17f
    .catchall {:try_start_17e .. :try_end_17f} :catchall_47

    throw p0

    .line 2791
    :goto_180
    :try_start_180
    monitor-exit v2
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_1a

    throw p0
.end method

.method public final dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    if-eqz v2, :cond_d

    .line 2500
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 2503
    :goto_e
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_13
    const-wide v10, 0x10500000002L

    const-wide v12, 0x10900000001L

    if-ge v6, v4, :cond_d4

    move-object/from16 v14, p5

    .line 2506
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2507
    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 2508
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2510
    iget-object v9, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2511
    iget v9, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v0, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2512
    new-instance v9, Landroid/util/Pair;

    iget v10, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_71

    .line 2513
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    .line 2515
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_69

    const/4 v5, 0x3

    :goto_63
    const-wide v10, 0x11100000003L

    goto :goto_6b

    :cond_69
    const/4 v5, 0x0

    goto :goto_63

    .line 2514
    :goto_6b
    invoke-virtual {v0, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2517
    invoke-interface {v3, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_71
    const-wide v9, 0x10500000004L

    .line 2519
    iget v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x11100000005L

    .line 2520
    iget v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10800000006L

    .line 2521
    iget-boolean v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2523
    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_99
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    const-wide v10, 0x20b00000007L

    .line 2524
    invoke-virtual {v9, v0, v10, v11}, Landroid/app/NotificationChannel;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_99

    .line 2526
    :cond_ae
    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    const-wide v10, 0x20b00000008L

    .line 2527
    invoke-virtual {v9, v0, v10, v11}, Landroid/app/NotificationChannelGroup;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_b8

    .line 2530
    :cond_cd
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_d0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    :cond_d4
    if-eqz v3, :cond_12c

    .line 2535
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_da
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2536
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_126

    .line 2537
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2538
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2539
    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2541
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11d

    const/4 v4, 0x3

    :goto_117
    const-wide v8, 0x11100000003L

    goto :goto_11f

    :cond_11d
    const/4 v4, 0x0

    goto :goto_117

    .line 2540
    :goto_11f
    invoke-virtual {v0, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2543
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_da

    :cond_126
    const-wide v8, 0x11100000003L

    goto :goto_da

    :cond_12c
    return-void
.end method

.method public final dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-eqz v2, :cond_d

    .line 2404
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 2406
    :goto_e
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    .line 2407
    :goto_13
    const-string v7, " userSet="

    const-string v9, " importance="

    const/16 v10, 0x29

    const-string v11, "INVALID_UID"

    const/4 v12, -0x1

    const-string v13, " ("

    const-string v14, "  AppSettings: "

    if-ge v6, v4, :cond_167

    move-object/from16 v15, p4

    .line 2408
    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2409
    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_163

    .line 2410
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2411
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2413
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne v8, v12, :cond_47

    goto :goto_4b

    :cond_47
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    :goto_4b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 2416
    new-instance v8, Landroid/util/Pair;

    iget v10, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v8, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_96

    .line 2417
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    .line 2418
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2420
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7c

    const/16 v16, 0x3

    goto :goto_7e

    :cond_7c
    const/16 v16, 0x0

    .line 2419
    :goto_7e
    invoke-static/range {v16 .. v16}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2424
    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2426
    :cond_96
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v7, :cond_a8

    .line 2427
    const-string v7, " priority="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2428
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v7}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2430
    :cond_a8
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/16 v8, -0x3e8

    if-eq v7, v8, :cond_bc

    .line 2431
    const-string v7, " visibility="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2432
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v7}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2434
    :cond_bc
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_cb

    .line 2435
    const-string v7, " showBadge="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2436
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 2438
    :cond_cb
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz v7, :cond_d9

    .line 2439
    const-string v7, " defaultAppLocked="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2440
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 2442
    :cond_d9
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz v7, :cond_e7

    .line 2443
    const-string v7, " fixedImportance="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2444
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 2446
    :cond_e7
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->canHavePromotedNotifs:Z

    if-eq v7, v8, :cond_f5

    .line 2448
    const-string v7, " promoted="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2449
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->canHavePromotedNotifs:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 2451
    :cond_f5
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2452
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v7, :cond_11d

    .line 2453
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2454
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v8, v7, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    iget v7, v7, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v9, v9, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 2455
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v8, v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 2454
    const-string v8, "    Delegate: %s (%s) enabled=%s"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2456
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2458
    :cond_11d
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_127
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    .line 2459
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2460
    const-string v9, "    "

    iget-boolean v10, v1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v8, v0, v9, v10}, Landroid/app/NotificationChannel;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_127

    .line 2462
    :cond_13e
    iget-object v5, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_148
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_163

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    .line 2463
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2464
    const-string v8, "  "

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2465
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2466
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_148

    :cond_163
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    :cond_167
    if-eqz v3, :cond_1e0

    .line 2472
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16d
    :goto_16d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2474
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16d

    .line 2475
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2476
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2478
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v12, :cond_19f

    move-object v5, v11

    goto :goto_1ab

    :cond_19f
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1ab
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2480
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 2481
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2483
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1c6

    const/4 v5, 0x3

    goto :goto_1c7

    :cond_1c6
    const/4 v5, 0x0

    .line 2482
    :goto_1c7
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2485
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2487
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_16d

    :cond_1e0
    return-void
.end method

.method public final findConversationChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 6

    .line 1559
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    .line 1560
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1561
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p4, :cond_32

    .line 1562
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_32
    return-object p1

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 7

    .line 2157
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2160
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_11

    .line 2162
    monitor-exit v0

    return p1

    :catchall_f
    move-exception p0

    goto :goto_35

    .line 2164
    :cond_11
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move v1, p1

    :goto_18
    if-ge p1, p2, :cond_33

    .line 2166
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 2167
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-nez v2, :cond_30

    add-int/lit8 v1, v1, 0x1

    :cond_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 2171
    :cond_33
    monitor-exit v0

    return v1

    .line 2172
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_f

    throw p0
.end method

.method public getBubblePreference(Ljava/lang/String;I)I
    .registers 4

    .line 871
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 873
    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    goto :goto_f

    :catchall_c
    move-exception p0

    goto :goto_11

    :cond_e
    const/4 p0, 0x0

    :goto_f
    monitor-exit v0

    return p0

    .line 874
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    throw p0
.end method

.method public final getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4

    .line 3151
    new-instance p0, Landroid/metrics/LogMaker;

    const/16 v0, 0x35b

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x6

    .line 3154
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 v0, 0x35c

    .line 3155
    invoke-virtual {p0, v0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 3159
    invoke-virtual {p0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4

    .line 3135
    new-instance p0, Landroid/metrics/LogMaker;

    const/16 v0, 0x358

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x6

    .line 3138
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 3139
    invoke-virtual {p0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 p2, 0x359

    .line 3143
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 3140
    invoke-virtual {p0, p2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 3147
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x35a

    .line 3144
    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;
    .registers 9

    .line 1532
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_8

    return-object v1

    .line 1536
    :cond_8
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1537
    :try_start_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    if-nez p3, :cond_17

    .line 1539
    const-string/jumbo p3, "miscellaneous"

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_37

    :cond_17
    :goto_17
    if-eqz p4, :cond_1d

    .line 1544
    invoke-virtual {p0, p1, p3, p4, p6}, Lcom/android/server/notification/PreferencesHelper;->findConversationChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v1

    :cond_1d
    if-nez v1, :cond_35

    if-eqz p5, :cond_35

    .line 1548
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannel;

    if-eqz p0, :cond_35

    if-nez p6, :cond_33

    .line 1549
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p1

    if-nez p1, :cond_35

    .line 1550
    :cond_33
    monitor-exit v0

    return-object p0

    .line 1553
    :cond_35
    monitor-exit v0

    return-object v1

    .line 1554
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_15

    throw p0
.end method

.method public getConversations(Landroid/util/IntArray;Z)Ljava/util/ArrayList;
    .registers 12

    .line 1868
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1869
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1870
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1871
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v3

    if-ltz v3, :cond_12

    .line 1872
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v3, :cond_12

    .line 1874
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1875
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_aa

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_aa

    .line 1876
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v6

    if-nez v6, :cond_aa

    .line 1877
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v6

    if-nez v6, :cond_59

    if-nez p2, :cond_aa

    .line 1878
    :cond_59
    new-instance v6, Landroid/service/notification/ConversationChannelWrapper;

    invoke-direct {v6}, Landroid/service/notification/ConversationChannelWrapper;-><init>()V

    .line 1880
    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setPkg(Ljava/lang/String;)V

    .line 1881
    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setUid(I)V

    .line 1882
    invoke-virtual {v6, v5}, Landroid/service/notification/ConversationChannelWrapper;->setNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1883
    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    if-nez v7, :cond_7b

    const/4 v7, 0x0

    goto :goto_7f

    .line 1886
    :cond_7b
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 1884
    :goto_7f
    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setParentChannelLabel(Ljava/lang/CharSequence;)V

    .line 1888
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a7

    .line 1889
    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    if-eqz v5, :cond_a7

    .line 1891
    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v7

    if-eqz v7, :cond_9d

    goto :goto_aa

    .line 1894
    :cond_9d
    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/service/notification/ConversationChannelWrapper;->setGroupLabel(Ljava/lang/CharSequence;)V

    goto :goto_a7

    :catchall_a5
    move-exception p0

    goto :goto_af

    .line 1899
    :cond_a7
    :goto_a7
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    :goto_aa
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 1906
    :cond_ad
    monitor-exit v0

    return-object v1

    .line 1907
    :goto_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_3 .. :try_end_b0} :catchall_a5

    throw p0
.end method

.method public getConversations(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 9

    .line 1911
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1913
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_16

    .line 1915
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    goto/16 :goto_95

    .line 1917
    :cond_16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1918
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_22
    if-ge v1, p2, :cond_93

    .line 1920
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 1921
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_90

    .line 1922
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_90

    .line 1923
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    if-nez v3, :cond_90

    .line 1924
    new-instance v3, Landroid/service/notification/ConversationChannelWrapper;

    invoke-direct {v3}, Landroid/service/notification/ConversationChannelWrapper;-><init>()V

    .line 1925
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/service/notification/ConversationChannelWrapper;->setPkg(Ljava/lang/String;)V

    .line 1926
    iget v4, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v3, v4}, Landroid/service/notification/ConversationChannelWrapper;->setUid(I)V

    .line 1927
    invoke-virtual {v3, v2}, Landroid/service/notification/ConversationChannelWrapper;->setNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1928
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    if-nez v4, :cond_64

    const/4 v4, 0x0

    goto :goto_68

    .line 1931
    :cond_64
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1929
    :goto_68
    invoke-virtual {v3, v4}, Landroid/service/notification/ConversationChannelWrapper;->setParentChannelLabel(Ljava/lang/CharSequence;)V

    .line 1933
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8d

    .line 1934
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    if-eqz v2, :cond_8d

    .line 1936
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    if-eqz v4, :cond_86

    goto :goto_90

    .line 1939
    :cond_86
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/service/notification/ConversationChannelWrapper;->setGroupLabel(Ljava/lang/CharSequence;)V

    .line 1944
    :cond_8d
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_90
    :goto_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1949
    :cond_93
    monitor-exit v0

    return-object p1

    .line 1950
    :goto_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_6 .. :try_end_96} :catchall_13

    throw p0
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 6

    .line 2138
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2141
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_11

    .line 2143
    monitor-exit v0

    return p1

    :catchall_f
    move-exception p0

    goto :goto_2f

    .line 2145
    :cond_11
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move v1, p1

    :goto_18
    if-ge p1, p2, :cond_2d

    .line 2147
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 2148
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_2a

    add-int/lit8 v1, v1, 0x1

    :cond_2a
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 2152
    :cond_2d
    monitor-exit v0

    return v1

    .line 2153
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_f

    throw p0
.end method

.method public final getDeniedAdjustmentsForPackage(Ljava/util/Map;ILjava/lang/String;)[I
    .registers 5

    .line 2702
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_39

    .line 2703
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 2705
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 2706
    :goto_23
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_38

    .line 2707
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->adjustmentKeyEnum(Ljava/lang/String;)I

    move-result p2

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_38
    return-object p1

    .line 2712
    :cond_39
    new-array p0, v0, [I

    return-object p0
.end method

.method public getFsiState(Ljava/lang/String;IZ)I
    .registers 4

    if-nez p3, :cond_4

    const/4 p0, 0x0

    return p0

    .line 2557
    :cond_4
    new-instance p3, Landroid/content/AttributionSource$Builder;

    invoke-direct {p3, p2}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 2558
    invoke-virtual {p3, p1}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p1

    .line 2560
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionManager:Landroid/permission/PermissionManager;

    const-string p2, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {p0, p2, p1}, Landroid/permission/PermissionManager;->checkPermissionForPreflight(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x2

    return p0
.end method

.method public getGroupForChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 5

    .line 1849
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1850
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 1852
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    if-eqz p1, :cond_31

    .line 1853
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p2

    if-nez p2, :cond_31

    .line 1854
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_31

    .line 1855
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannelGroup;

    if-eqz p0, :cond_31

    .line 1857
    monitor-exit v0

    return-object p0

    :catchall_2f
    move-exception p0

    goto :goto_34

    .line 1862
    :cond_31
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_2f

    throw p0
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 12

    .line 1521
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    .line 1525
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 5

    .line 1763
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1765
    :try_start_6
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    .line 1767
    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_1b

    .line 1769
    :cond_11
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannelGroup;

    monitor-exit v0

    return-object p0

    .line 1770
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_f

    throw p0
.end method

.method public getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 6

    .line 1750
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1752
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_27

    if-eqz p3, :cond_27

    .line 1753
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_27

    .line 1756
    :cond_17
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1757
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 1756
    invoke-static {p3, p1, p0, p4}, Lcom/android/internal/notification/NotificationChannelGroupsHelper;->getGroupWithChannels(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Z)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_25
    move-exception p0

    goto :goto_2a

    :cond_27
    :goto_27
    const/4 p0, 0x0

    .line 1754
    monitor-exit v0

    return-object p0

    .line 1758
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_25

    throw p0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;ILcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Landroid/content/pm/ParceledListSlice;
    .registers 5

    .line 1775
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1777
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_14

    .line 1779
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_27

    .line 1781
    :cond_14
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1782
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-static {p2, p0, p3}, Lcom/android/internal/notification/NotificationChannelGroupsHelper;->getGroupsWithChannels(Ljava/util/Collection;Ljava/util/Map;Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p1

    .line 1784
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_12

    throw p0
.end method

.method public getNotificationChannelGroupsWithoutChannels(Ljava/lang/String;I)Ljava/util/Collection;
    .registers 5

    .line 1837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1838
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1839
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_12

    .line 1841
    monitor-exit v1

    return-object v0

    :catchall_10
    move-exception p0

    goto :goto_1d

    .line 1843
    :cond_12
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1844
    monitor-exit v1

    return-object v0

    :goto_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_10

    throw p0
.end method

.method public getNotificationChannels(Ljava/lang/String;IZZ)Landroid/content/pm/ParceledListSlice;
    .registers 10

    .line 1992
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    .line 1994
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 1996
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1997
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2000
    :try_start_13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_21

    .line 2005
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_1f
    move-exception p0

    goto :goto_55

    .line 2007
    :cond_21
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_28
    if-ge p2, p1, :cond_4e

    .line 2009
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    if-nez p3, :cond_3a

    .line 2010
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_4b

    :cond_3a
    if-nez p4, :cond_48

    .line 2011
    sget-object v3, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 2012
    :cond_48
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    .line 2016
    :cond_4e
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object p0

    .line 2017
    :goto_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_13 .. :try_end_56} :catchall_1f

    throw p0
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 7

    .line 2039
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2040
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2041
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 2042
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2041
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz p1, :cond_3e

    .line 2044
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_20
    :goto_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 2045
    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2046
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :catchall_3c
    move-exception p0

    goto :goto_45

    .line 2050
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_3c

    .line 2051
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 2050
    :goto_45
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_3c

    throw p0
.end method

.method public getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 2279
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2280
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1b

    .line 2282
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez p0, :cond_f

    goto :goto_1b

    .line 2285
    :cond_f
    iget-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-nez p2, :cond_17

    .line 2286
    monitor-exit v0

    return-object p1

    :catchall_15
    move-exception p0

    goto :goto_1d

    .line 2288
    :cond_17
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 2283
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-object p1

    .line 2289
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_15

    throw p0
.end method

.method public final getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 15

    .line 549
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 550
    :goto_9
    const-string v1, "Valid uid required to get settings of %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 555
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    .line 556
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    const/16 v5, -0x3e8

    const/4 v6, 0x0

    const/16 v7, -0x3e8

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    .line 554
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesSupportingInvalidUidLocked(Ljava/lang/String;IIIIIZIJ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    return-object v0
.end method

.method public final getOrCreatePackagePreferencesSupportingInvalidUidLocked(Ljava/lang/String;IIIIIZIJ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 15

    .line 575
    invoke-static {p1, p3}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_14

    .line 578
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    goto :goto_1c

    .line 579
    :cond_14
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    :goto_1c
    if-nez v2, :cond_68

    .line 582
    new-instance v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>(Lcom/android/server/notification/PreferencesHelper-IA;)V

    .line 583
    iput-object p1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 584
    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 585
    iput p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 586
    iput p5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 587
    iput p6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 588
    iput-boolean p7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 589
    iput p8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-ne p3, v1, :cond_36

    .line 591
    iput-wide p9, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->creationTime:J

    .line 595
    :cond_36
    :try_start_36
    invoke-virtual {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_51

    :catch_3a
    move-exception p3

    .line 597
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "createDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "NotificationPrefHelper"

    invoke-static {p4, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_51
    iget p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne p3, v1, :cond_61

    .line 601
    iput p2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userIdWhenUidUnknown:I

    .line 602
    iget-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    .line 604
    :cond_61
    iget-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_66
    const/4 p3, 0x1

    goto :goto_69

    :cond_68
    const/4 p3, 0x0

    .line 607
    :goto_69
    iget p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne p4, v1, :cond_85

    .line 608
    sget-wide p4, Lcom/android/server/notification/PreferencesHelper;->PREF_GRACE_PERIOD_MS:J

    iget-object p6, p0, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {p6}, Ljava/time/Clock;->millis()J

    move-result-wide p6

    iget-wide p8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->creationTime:J

    sub-long/2addr p6, p8

    cmp-long p4, p4, p6

    if-gez p4, :cond_85

    .line 609
    iget-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_85
    if-eqz p3, :cond_8a

    .line 613
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    :cond_8a
    return-object v2
.end method

.method public final getPackageChannels()Ljava/util/Map;
    .registers 9

    .line 2963
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2964
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 2965
    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_45

    .line 2966
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move v5, v2

    move v6, v5

    .line 2968
    :goto_1c
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_39

    .line 2969
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_34

    add-int/lit8 v6, v6, 0x1

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :catchall_37
    move-exception p0

    goto :goto_47

    .line 2973
    :cond_39
    iget-object v4, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2975
    :cond_45
    monitor-exit v1

    return-object v0

    :goto_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_37

    throw p0
.end method

.method public final getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 3

    .line 535
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 536
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    return-object p0
.end method

.method public getPackagesBypassingDnd(I)Ljava/util/ArrayList;
    .registers 12

    .line 2059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2061
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2062
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq v4, p1, :cond_27

    goto :goto_12

    .line 2065
    :cond_27
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-nez v4, :cond_30

    goto :goto_12

    .line 2070
    :cond_30
    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :cond_3c
    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    .line 2071
    invoke-virtual {p0, v3, v8}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v9

    if-eqz v9, :cond_3c

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v8

    if-eqz v8, :cond_3c

    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :catchall_57
    move-exception p0

    goto :goto_6b

    :cond_59
    if-lez v7, :cond_12

    .line 2076
    new-instance v5, Landroid/app/ZenBypassingApp;

    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    if-ne v4, v7, :cond_62

    const/4 v6, 0x1

    :cond_62
    invoke-direct {v5, v3, v6}, Landroid/app/ZenBypassingApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2079
    :cond_69
    monitor-exit v1

    return-object v0

    :goto_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_8 .. :try_end_6c} :catchall_57

    throw p0
.end method

.method public getPackagesWithAnyChannels(I)Ljava/util/List;
    .registers 7

    .line 2089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2090
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2091
    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2092
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, p1, :cond_27

    goto :goto_12

    .line 2095
    :cond_27
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 2096
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_31

    .line 2097
    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_49
    move-exception p0

    goto :goto_4d

    .line 2102
    :cond_4b
    monitor-exit v1

    return-object v0

    :goto_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_49

    throw p0
.end method

.method public getPermissionBasedPackageBans(Landroid/util/ArrayMap;)Ljava/util/Map;
    .registers 5

    .line 2923
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    if-eqz p1, :cond_37

    .line 2925
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2926
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2927
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_37
    return-object p0
.end method

.method public getRemovedPkgNotificationChannels(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 2025
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2026
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 2027
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    if-nez p1, :cond_e

    goto :goto_1d

    .line 2030
    :cond_e
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    :catchall_1b
    move-exception p0

    goto :goto_24

    .line 2028
    :cond_1d
    :goto_1d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p0

    .line 2031
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_1b

    throw p0
.end method

.method public getReservedChannel(Ljava/lang/String;II)Landroid/app/NotificationChannel;
    .registers 13

    .line 1488
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_8

    return-object v1

    .line 1492
    :cond_8
    invoke-static {p3}, Landroid/app/NotificationChannel;->getChannelIdForBundleType(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f

    return-object v1

    :cond_f
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 1497
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public hasPriorityChannels()Z
    .registers 1

    .line 2253
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    return p0
.end method

.method public hasSentInvalidMsg(Ljava/lang/String;I)Z
    .registers 4

    .line 989
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 991
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 992
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public hasSentValidBubble(Ljava/lang/String;I)Z
    .registers 4

    .line 1022
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1024
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 1025
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public hasSentValidMsg(Ljava/lang/String;I)Z
    .registers 4

    .line 997
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 999
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 1000
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public final hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 3

    .line 499
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .line 500
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_21

    .line 505
    :cond_1d
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez p0, :cond_23

    :goto_21
    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .registers 5

    .line 954
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 955
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 956
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_17

    iget-boolean p0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    :goto_18
    monitor-exit v0

    return p0

    .line 957
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public invalidateNotificationChannelCache()V
    .registers 1

    .line 3351
    invoke-static {}, Landroid/app/NotificationManager;->invalidateNotificationChannelCache()V

    return-void
.end method

.method public invalidateNotificationChannelGroupCache()V
    .registers 1

    .line 3356
    invoke-static {}, Landroid/app/NotificationManager;->invalidateNotificationChannelGroupCache()V

    return-void
.end method

.method public isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 6

    .line 2329
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2330
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 2332
    invoke-virtual {p0, p3, p4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isValidDelegate(Ljava/lang/String;I)Z

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

    .line 2334
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public final isDeletionOk(Landroid/app/NotificationChannel;)Z
    .registers 7

    .line 517
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    .line 520
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x9a7ec800L

    sub-long/2addr v1, v3

    .line 522
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide p0

    cmp-long p0, p0, v1

    if-gtz p0, :cond_1c

    const/4 p0, 0x0

    return p0

    :cond_1c
    return v0
.end method

.method public isFsiPermissionUserSet(Ljava/lang/String;III)Z
    .registers 5

    .line 0
    const/4 p0, 0x0

    if-nez p3, :cond_4

    return p0

    :cond_4
    const/4 p1, 0x1

    and-int/lit8 p2, p4, 0x1

    if-eqz p2, :cond_a

    return p1

    :cond_a
    return p0
.end method

.method public isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    .line 1042
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1043
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_11

    .line 1045
    monitor-exit v1

    return v0

    :catchall_f
    move-exception p0

    goto :goto_23

    .line 1047
    :cond_11
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannelGroup;

    if-nez p0, :cond_1d

    .line 1049
    monitor-exit v1

    return v0

    .line 1051
    :cond_1d
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    monitor-exit v1

    return p0

    .line 1052
    :goto_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_f

    throw p0
.end method

.method public isImportanceLocked(Ljava/lang/String;I)Z
    .registers 4

    .line 1029
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1030
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_16

    .line 1032
    iget-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-nez p2, :cond_15

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz p0, :cond_16

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_18

    :cond_15
    :goto_15
    const/4 p1, 0x1

    .line 1033
    :cond_16
    monitor-exit v0

    return p1

    .line 1034
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_13

    throw p0
.end method

.method public isInInvalidMsgState(Ljava/lang/String;I)Z
    .registers 4

    .line 947
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 949
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    if-eqz p1, :cond_15

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    if-nez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :catchall_13
    move-exception p0

    goto :goto_18

    :cond_15
    const/4 p0, 0x0

    :goto_16
    monitor-exit v0

    return p0

    .line 950
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_13

    throw p0
.end method

.method public isMediaNotificationFilteringEnabled()Z
    .registers 1

    .line 3177
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    return p0
.end method

.method public final isShortcutOk(Landroid/app/NotificationChannel;)Z
    .registers 3

    .line 510
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_15

    .line 511
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p0

    const-string p1, ":placeholder_id"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    move p0, v0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    xor-int/2addr p0, v0

    return p0
.end method

.method public final lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 4

    .line 2340
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    .line 2341
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2343
    :cond_e
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    if-eq p0, v0, :cond_1c

    const/4 p0, 0x2

    .line 2344
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2346
    :cond_1c
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eq p0, v0, :cond_2a

    const/4 p0, 0x4

    .line 2347
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2349
    :cond_2a
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    if-ne p0, v0, :cond_3e

    .line 2350
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    if-eq p0, v0, :cond_43

    :cond_3e
    const/16 p0, 0x8

    .line 2351
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2353
    :cond_43
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    const/16 p0, 0x20

    .line 2354
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2356
    :cond_56
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    if-eqz p0, :cond_7c

    .line 2357
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7c

    .line 2358
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    if-eq p0, v0, :cond_81

    :cond_7c
    const/16 p0, 0x10

    .line 2359
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2361
    :cond_81
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    if-eq p0, v0, :cond_90

    const/16 p0, 0x80

    .line 2362
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2364
    :cond_90
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p1

    if-eq p0, p1, :cond_9f

    const/16 p0, 0x100

    .line 2365
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_9f
    return-void
.end method

.method public final maybeUpdateChildConversationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 12

    move-object v0, p4

    .line 1422
    invoke-static {p3}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result p4

    .line 1424
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_20

    .line 1425
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    invoke-virtual {p5}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    if-eq v1, v3, :cond_20

    .line 1426
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    move v1, v2

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 1429
    :goto_21
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3b

    .line 1430
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    .line 1431
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    if-eq v3, v4, :cond_3b

    .line 1432
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    move v1, v2

    .line 1435
    :cond_3b
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_55

    .line 1436
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eq v3, v4, :cond_55

    .line 1437
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    move v1, v2

    .line 1440
    :cond_55
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_80

    .line 1441
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v3

    invoke-virtual {p5}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v4

    if-ne v3, v4, :cond_71

    .line 1442
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    if-eq v3, v4, :cond_80

    .line 1443
    :cond_71
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 1444
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    move v1, v2

    .line 1447
    :cond_80
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_a2

    .line 1448
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a2

    .line 1449
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {p3, v1, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    move v1, v2

    .line 1452
    :cond_a2
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_df

    .line 1453
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v3

    .line 1454
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    .line 1453
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 1456
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v4

    .line 1455
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 1457
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v3

    invoke-virtual {p5}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v4

    if-eq v3, v4, :cond_df

    .line 1459
    :cond_d0
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 1460
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    move v1, v2

    .line 1463
    :cond_df
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_f9

    .line 1464
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v3

    invoke-virtual {p5}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v4

    if-eq v3, v4, :cond_f9

    .line 1465
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    move v1, v2

    .line 1468
    :cond_f9
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_113

    .line 1469
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v0

    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v3

    if-eq v0, v3, :cond_113

    .line 1470
    invoke-virtual {p5}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    move v1, v2

    :cond_113
    if-eqz v1, :cond_129

    .line 1475
    invoke-virtual {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p5

    invoke-virtual {p5, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p5

    invoke-static {p5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1477
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    const/4 p5, 0x1

    move-object v5, p3

    move-object p3, p1

    move-object p1, v5

    invoke-interface/range {p0 .. p5}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    :cond_129
    return-void
.end method

.method public migrateNotificationPermissions(Ljava/util/List;)V
    .registers 10

    .line 3320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 3321
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    const-wide/32 v2, 0x20000

    .line 3322
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 3323
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3321
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v0

    .line 3324
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 3325
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3326
    :try_start_38
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, v1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 3328
    iget-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    if-eqz v3, :cond_82

    iget v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_67

    const/4 v4, -0x1

    if-eq v3, v4, :cond_82

    .line 3330
    :try_start_4b
    new-instance v4, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 3331
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget v6, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v6, :cond_59

    const/4 v6, 0x1

    goto :goto_5a

    :cond_59
    const/4 v6, 0x0

    .line 3333
    :goto_5a
    invoke-virtual {p0, v1}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v7

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/android/server/notification/PermissionHelper$PackagePermission;-><init>(Ljava/lang/String;IZZ)V

    .line 3334
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v3, v4}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_66} :catch_69
    .catchall {:try_start_4b .. :try_end_66} :catchall_67

    goto :goto_82

    :catchall_67
    move-exception p0

    goto :goto_84

    :catch_69
    move-exception v3

    .line 3336
    :try_start_6a
    const-string v4, "NotificationPrefHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not migrate setting for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3339
    :cond_82
    :goto_82
    monitor-exit v2

    goto :goto_29

    :goto_84
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_6a .. :try_end_85} :catchall_67

    throw p0

    :cond_86
    return-void
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 1

    .line 280
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    .line 281
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelGroupCache()V

    return-void
.end method

.method public onLocaleChanged(Landroid/content/Context;I)V
    .registers 10

    .line 2998
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3000
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_48

    .line 3002
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 3003
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p2, :cond_45

    .line 3004
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v6, "miscellaneous"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 3006
    iget-object v3, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v4, "miscellaneous"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 3008
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104037c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3007
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_4f

    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_48
    if-eqz v3, :cond_4d

    .line 3016
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    .line 3018
    :cond_4d
    monitor-exit v0

    return-void

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_43

    throw p0
.end method

.method public onPackagesChanged(ZI[Ljava/lang/String;[I)Z
    .registers 23

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v0, p4

    if-eqz v3, :cond_d

    .line 3023
    array-length v5, v3

    if-nez v5, :cond_11

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_15b

    :cond_11
    const/4 v5, 0x1

    if-eqz p1, :cond_3f

    .line 3029
    array-length v6, v3

    array-length v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1c
    if-ge v4, v6, :cond_14f

    .line 3031
    aget-object v7, v3, v4

    .line 3032
    aget v8, v0, v4

    .line 3033
    iget-object v9, v1, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3034
    :try_start_25
    iget-object v10, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {v7, v8}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3035
    iget-object v8, v1, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v7, v2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3036
    monitor-exit v9

    add-int/lit8 v4, v4, 0x1

    move v7, v5

    goto :goto_1c

    :catchall_3c
    move-exception v0

    monitor-exit v9
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_3c

    throw v0

    .line 3040
    :cond_3f
    array-length v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_42
    if-ge v8, v6, :cond_14f

    aget-object v9, v3, v8

    .line 3043
    :try_start_46
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 3045
    iget-object v10, v1, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_111

    .line 3046
    :try_start_4f
    iget-object v11, v1, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 3047
    invoke-static {v9, v2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz v11, :cond_101

    .line 3049
    iput v0, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 3050
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v9, v2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3051
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    iget-object v13, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v14, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v13, v14}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3054
    iget-object v0, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_de

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationChannel;

    .line 3055
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->isSoundRestored()Z

    move-result v14

    if-nez v14, :cond_da

    .line 3056
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v14

    .line 3057
    iget-object v15, v1, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 3062
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v16
    :try_end_9b
    .catchall {:try_start_4f .. :try_end_9b} :catchall_d6

    const/16 v17, 0x0

    :try_start_9d
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    .line 3058
    invoke-virtual {v13, v15, v14, v5, v4}, Landroid/app/NotificationChannel;->restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;ZI)Landroid/net/Uri;

    move-result-object v4

    .line 3063
    sget-object v15, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v15, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ce

    .line 3065
    const-string v15, "NotificationPrefHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not restore sound: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " for channel: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    :catchall_cc
    move-exception v0

    goto :goto_10f

    .line 3069
    :cond_ce
    :goto_ce
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_dc

    :catchall_d6
    move-exception v0

    const/16 v17, 0x0

    goto :goto_10f

    :cond_da
    const/16 v17, 0x0

    :goto_dc
    const/4 v5, 0x1

    goto :goto_7f

    :cond_de
    const/16 v17, 0x0

    .line 3073
    iget-boolean v0, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    if-eqz v0, :cond_fe

    .line 3074
    new-instance v12, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    iget-object v0, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v4, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 3075
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget v5, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v5, :cond_f4

    const/4 v5, 0x1

    goto :goto_f6

    :cond_f4
    move/from16 v5, v17

    .line 3077
    :goto_f6
    invoke-virtual {v1, v11}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v11

    invoke-direct {v12, v0, v4, v5, v11}, Lcom/android/server/notification/PermissionHelper$PackagePermission;-><init>(Ljava/lang/String;IZZ)V

    goto :goto_ff

    :cond_fe
    const/4 v12, 0x0

    :goto_ff
    const/4 v7, 0x1

    goto :goto_104

    :cond_101
    const/16 v17, 0x0

    const/4 v12, 0x0

    .line 3081
    :goto_104
    monitor-exit v10
    :try_end_105
    .catchall {:try_start_9d .. :try_end_105} :catchall_cc

    if-eqz v12, :cond_12a

    .line 3083
    :try_start_107
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v12}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10c} :catch_10d

    goto :goto_12a

    :catch_10d
    move-exception v0

    goto :goto_114

    .line 3081
    :goto_10f
    :try_start_10f
    monitor-exit v10
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_cc

    :try_start_110
    throw v0
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_111} :catch_10d

    :catch_111
    move-exception v0

    const/16 v17, 0x0

    .line 3086
    :goto_114
    const-string v4, "NotificationPrefHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not restore "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3090
    :cond_12a
    :goto_12a
    :try_start_12a
    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_12d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12a .. :try_end_12d} :catch_14a

    .line 3091
    :try_start_12d
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 3092
    invoke-virtual {v0, v9, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 3091
    invoke-virtual {v1, v9, v0}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    if-eqz v0, :cond_146

    .line 3094
    invoke-virtual {v1, v0}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v5

    or-int/2addr v7, v5

    .line 3095
    invoke-virtual {v1, v0}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    or-int/2addr v7, v0

    goto :goto_146

    :catchall_144
    move-exception v0

    goto :goto_148

    .line 3097
    :cond_146
    :goto_146
    monitor-exit v4

    goto :goto_14a

    :goto_148
    monitor-exit v4
    :try_end_149
    .catchall {:try_start_12d .. :try_end_149} :catchall_144

    :try_start_149
    throw v0
    :try_end_14a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_149 .. :try_end_14a} :catch_14a

    :catch_14a
    :goto_14a
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto/16 :goto_42

    :cond_14f
    if-eqz v7, :cond_15a

    .line 3104
    invoke-virtual {v1}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 3106
    invoke-virtual {v1}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    .line 3107
    invoke-virtual {v1}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelGroupCache()V

    :cond_15a
    return v7

    :goto_15b
    return v17
.end method

.method public onUserRemoved(I)V
    .registers 7

    .line 2980
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2982
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_c
    if-ltz v1, :cond_2a

    .line 2984
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2985
    iget v4, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_27

    .line 2986
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move v3, v2

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_34

    :cond_27
    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_2a
    if-eqz v3, :cond_32

    .line 2991
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    .line 2992
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelGroupCache()V

    .line 2994
    :cond_32
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_25

    throw p0
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 6

    .line 2113
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2114
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 2115
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo p2, "miscellaneous"

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5e

    .line 2116
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_20

    .line 2117
    monitor-exit v0

    return v1

    :catchall_1e
    move-exception p0

    goto :goto_60

    .line 2120
    :cond_20
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v2, 0x5

    if-gt p1, v2, :cond_5c

    .line 2121
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannel;

    .line 2122
    sget-object p1, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    const-string/jumbo p1, "miscellaneous"

    .line 2123
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    .line 2124
    monitor-exit v0

    return p2

    .line 2126
    :cond_5a
    monitor-exit v0

    return v1

    .line 2129
    :cond_5c
    monitor-exit v0

    return p2

    .line 2133
    :cond_5e
    monitor-exit v0

    return p2

    .line 2134
    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_1e

    throw p0
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 1613
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1616
    :try_start_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    if-nez p1, :cond_13

    .line 1618
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_1d

    .line 1620
    :cond_13
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_11

    .line 1623
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    return-void

    .line 1621
    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_11

    throw p0
.end method

.method public pullPackageChannelGroupPreferencesStats(Ljava/util/List;)V
    .registers 16

    .line 2756
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    .line 2758
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_5f

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_12

    goto :goto_5f

    .line 2762
    :cond_12
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2763
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    add-int/lit8 v2, v2, 0x1

    if-le v2, v3, :cond_35

    goto :goto_5c

    .line 2767
    :cond_35
    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2770
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v9

    .line 2771
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2772
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v11

    .line 2773
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v12

    .line 2775
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v13

    const/16 v7, 0x2759

    .line 2767
    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :catchall_59
    move-exception v0

    move-object p0, v0

    goto :goto_61

    :cond_5c
    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2778
    :cond_5f
    :goto_5f
    monitor-exit v1

    return-void

    :goto_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_59

    throw p0
.end method

.method public pullPackageChannelPreferencesStats(Ljava/util/List;)V
    .registers 22

    move-object/from16 v0, p0

    .line 2720
    iget-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 2722
    :goto_8
    :try_start_8
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_7d

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_15

    goto :goto_7d

    .line 2726
    :cond_15
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2727
    iget-object v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    add-int/lit8 v4, v4, 0x1

    if-le v4, v5, :cond_3a

    :cond_37
    move-object/from16 v9, p1

    goto :goto_7a

    .line 2731
    :cond_3a
    iget v10, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2734
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v11

    .line 2735
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2736
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v13

    .line 2737
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v14

    .line 2739
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v15

    .line 2740
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v16

    .line 2742
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_62

    const/4 v9, 0x1

    move/from16 v17, v9

    goto :goto_64

    :cond_62
    move/from16 v17, v2

    .line 2743
    :goto_64
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v18

    .line 2745
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v19

    const/16 v9, 0x2758

    .line 2731
    invoke-static/range {v9 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)Landroid/util/StatsEvent;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :catchall_78
    move-exception v0

    goto :goto_7f

    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2748
    :cond_7d
    :goto_7d
    monitor-exit v1

    return-void

    :goto_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_8 .. :try_end_80} :catchall_78

    throw v0
.end method

.method public pullPackagePreferencesStats(Ljava/util/List;Landroid/util/ArrayMap;Ljava/util/Map;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_d

    .line 2605
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 2608
    :goto_e
    iget-object v4, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 2609
    :goto_14
    :try_start_14
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x3

    const/16 v10, 0x3e8

    if-ge v6, v8, :cond_bc

    if-le v7, v10, :cond_23

    goto/16 :goto_bc

    :cond_23
    add-int/lit8 v7, v7, 0x1

    .line 2614
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2624
    new-instance v10, Landroid/util/Pair;

    iget v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_65

    .line 2625
    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_65

    .line 2626
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 2627
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_53

    goto :goto_54

    :cond_53
    move v9, v5

    .line 2630
    :goto_54
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 2632
    invoke-interface {v3, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v15, v11

    :goto_60
    move v12, v9

    goto :goto_69

    :catchall_62
    move-exception v0

    goto/16 :goto_117

    :cond_65
    const/16 v9, -0x3e8

    move v15, v5

    goto :goto_60

    .line 2635
    :goto_69
    iget-object v9, v0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    const-string v10, "android.permission.USE_FULL_SCREEN_INTENT"

    iget-object v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v13, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v9, v10, v11, v13}, Lcom/android/server/notification/PermissionHelper;->hasRequestedPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 2638
    iget-object v10, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v0, v10, v11, v9}, Lcom/android/server/notification/PreferencesHelper;->getFsiState(Ljava/lang/String;IZ)I

    move-result v9

    .line 2640
    iget-object v10, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    const-string v11, "android.permission.USE_FULL_SCREEN_INTENT"

    iget-object v13, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v14, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2642
    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v14

    .line 2640
    invoke-virtual {v10, v11, v13, v14}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v10

    .line 2644
    iget-object v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v13, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2645
    invoke-virtual {v0, v11, v13, v9, v10}, Lcom/android/server/notification/PreferencesHelper;->isFsiPermissionUserSet(Ljava/lang/String;III)Z

    move-result v17

    .line 2653
    iget v10, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2655
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget-object v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    move-object/from16 v13, p3

    .line 2654
    invoke-virtual {v0, v13, v10, v11}, Lcom/android/server/notification/PreferencesHelper;->getDeniedAdjustmentsForPackage(Ljava/util/Map;ILjava/lang/String;)[I

    move-result-object v19

    .line 2657
    iget v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    iget v13, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    iget v14, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    new-array v8, v5, [I

    const/16 v10, 0x2757

    move-object/from16 v18, v8

    move/from16 v16, v9

    invoke-static/range {v10 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIZIZ[I[I)Landroid/util/StatsEvent;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_14

    .line 2670
    :cond_bc
    :goto_bc
    monitor-exit v4
    :try_end_bd
    .catchall {:try_start_14 .. :try_end_bd} :catchall_62

    if-eqz v2, :cond_116

    .line 2674
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_116

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-le v7, v10, :cond_d2

    goto :goto_116

    :cond_d2
    add-int/lit8 v7, v7, 0x1

    .line 2682
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 2684
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2685
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_ee

    move v13, v9

    goto :goto_ef

    :cond_ee
    move v13, v5

    .line 2689
    :goto_ef
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    new-array v3, v5, [I

    new-array v4, v5, [I

    const/16 v11, 0x2757

    const/16 v14, -0x3e8

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .line 2682
    invoke-static/range {v11 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIZIZ[I[I)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    :cond_116
    :goto_116
    return-void

    .line 2670
    :goto_117
    :try_start_117
    monitor-exit v4
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_62

    throw v0
.end method

.method public readXml(Lcom/android/modules/utils/TypedXmlPullParser;ZI)V
    .registers 16

    .line 287
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_8

    goto :goto_15

    .line 289
    :cond_8
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 290
    const-string/jumbo v3, "ranking"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :goto_15
    return-void

    .line 292
    :cond_16
    const-string/jumbo v2, "version"

    const/4 v8, 0x0

    const/4 v3, -0x1

    invoke-interface {p1, v8, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 293
    const-string v4, "last_bubbles_version_upgrade"

    invoke-interface {p1, v8, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/4 v9, 0x1

    if-ge v3, v4, :cond_2d

    move v3, v9

    goto :goto_2e

    :cond_2d
    move v3, v5

    :goto_2e
    const/4 v10, 0x3

    if-ge v2, v10, :cond_33

    move v6, v9

    goto :goto_34

    :cond_33
    move v6, v5

    .line 296
    :goto_34
    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mShowReviewPermissionsNotification:Z

    if-eqz v4, :cond_47

    const/4 v4, 0x4

    if-ge v2, v4, :cond_47

    .line 301
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "review_permissions_notification_state"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    :cond_47
    iget-object v11, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 306
    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    if-eq v2, v9, :cond_9d

    .line 307
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-ne v2, v10, :cond_62

    .line 308
    const-string/jumbo v5, "ranking"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    goto :goto_9d

    :catchall_60
    move-exception v0

    goto :goto_9f

    :cond_62
    if-ne v2, v7, :cond_4a

    .line 312
    const-string/jumbo v2, "silent_status_icons"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    if-eqz p2, :cond_72

    if-eqz p3, :cond_72

    goto :goto_4a

    .line 316
    :cond_72
    const-string v2, "hide_silent"

    invoke-interface {p1, v8, v2, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    goto :goto_4a

    .line 318
    :cond_7b
    const-string/jumbo v2, "package"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 319
    const-string/jumbo v2, "name"

    invoke-interface {p1, v8, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9a

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v3

    move v3, p3

    .line 321
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->restorePackageLocked(Lcom/android/modules/utils/TypedXmlPullParser;ZILjava/lang/String;ZZ)V

    goto :goto_9b

    :cond_9a
    move v5, v3

    :goto_9b
    move v3, v5

    goto :goto_4a

    .line 327
    :cond_9d
    :goto_9d
    monitor-exit v11

    return-void

    :goto_9f
    monitor-exit v11
    :try_end_a0
    .catchall {:try_start_4a .. :try_end_a0} :catchall_60

    throw v0
.end method

.method public final restoreChannel(Lcom/android/modules/utils/TypedXmlPullParser;ZLcom/android/server/notification/PreferencesHelper$PackagePreferences;)V
    .registers 9

    .line 463
    :try_start_0
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    const-string/jumbo v2, "name"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    const-string v3, "importance"

    const/16 v4, -0x3e8

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 471
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_64

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 473
    sget-object v3, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v1, 0x2

    .line 476
    :cond_2b
    new-instance v3, Landroid/app/NotificationChannel;

    invoke-direct {v3, v0, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_44

    .line 479
    iget p2, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/4 v4, -0x1

    if-eq p2, v4, :cond_3b

    move p2, v2

    goto :goto_3c

    :cond_3b
    move p2, v1

    .line 480
    :goto_3c
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1, p2, v4}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;ZLandroid/content/Context;)V

    goto :goto_47

    :catch_42
    move-exception p0

    goto :goto_65

    .line 482
    :cond_44
    invoke-virtual {v3, p1}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 484
    :goto_47
    iget-boolean p1, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-nez p1, :cond_4f

    iget-boolean p1, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz p1, :cond_50

    :cond_4f
    move v1, v2

    :cond_50
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 487
    invoke-virtual {p0, v3}, Lcom/android/server/notification/PreferencesHelper;->isShortcutOk(Landroid/app/NotificationChannel;)Z

    move-result p1

    if-eqz p1, :cond_64

    invoke-virtual {p0, v3}, Lcom/android/server/notification/PreferencesHelper;->isDeletionOk(Landroid/app/NotificationChannel;)Z

    move-result p0

    if-eqz p0, :cond_64

    .line 488
    iget-object p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_42

    :cond_64
    return-void

    .line 492
    :goto_65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "could not restore channel for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationPrefHelper"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final restorePackageLocked(Lcom/android/modules/utils/TypedXmlPullParser;ZILjava/lang/String;ZZ)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 335
    const-string/jumbo v13, "show_badge"

    const-string/jumbo v14, "visibility"

    const-string/jumbo v15, "priority"

    const-string v1, "app_user_locked_fields"

    const-string/jumbo v2, "uid"

    const-string v3, "NotificationPrefHelper"

    const/4 v4, -0x1

    const/4 v5, 0x0

    :try_start_16
    invoke-interface {v11, v5, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_27

    if-eqz p2, :cond_2b

    .line 338
    :try_start_1c
    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_1e} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1e} :catch_27

    move/from16 v8, p3

    move-object/from16 v9, p4

    :try_start_22
    invoke-virtual {v7, v9, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_26} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    move-exception v0

    move-object v9, v3

    goto/16 :goto_210

    :catch_2b
    :cond_2b
    move/from16 v8, p3

    move-object/from16 v9, p4

    .line 345
    :catch_2f
    :goto_2f
    :try_start_2f
    const-string v7, "allow_bubble"

    const/4 v10, 0x0

    invoke-interface {v11, v5, v7, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 347
    invoke-interface {v11, v5, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_41

    :cond_3e
    move-object v9, v3

    move v3, v6

    goto :goto_5d

    :cond_41
    if-eqz p5, :cond_3e

    if-eq v6, v4, :cond_3e

    .line 350
    iget-object v10, v0, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    const-string v21, "check-notif-bubble"

    const/16 v17, 0x18

    const/16 v20, 0x0

    move/from16 v18, v6

    move-object/from16 v19, v9

    move-object/from16 v16, v10

    .line 353
    invoke-virtual/range {v16 .. v21}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_57} :catch_27

    move-object v9, v3

    move/from16 v3, v18

    if-nez v6, :cond_5d

    const/4 v7, 0x1

    .line 358
    :cond_5d
    :goto_5d
    :try_start_5d
    const-string v6, "importance"

    const/16 v10, -0x3e8

    invoke-interface {v11, v5, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-nez p2, :cond_75

    if-ne v3, v4, :cond_75

    .line 364
    const-string/jumbo v8, "userid"

    const/4 v4, 0x0

    invoke-interface {v11, v5, v8, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    goto :goto_76

    :catch_72
    move-exception v0

    goto/16 :goto_210

    :cond_75
    const/4 v4, 0x0

    .line 369
    :goto_76
    invoke-interface {v11, v5, v15, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    move/from16 v22, v4

    move v4, v6

    .line 370
    invoke-interface {v11, v5, v14, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v18, v2

    move v2, v8

    const/4 v10, 0x1

    move v8, v7

    .line 371
    invoke-interface {v11, v5, v13, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string v10, "creation_time"

    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    move-object/from16 v20, v1

    .line 372
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const/4 v5, 0x0

    invoke-interface {v11, v5, v10, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_99} :catch_72

    move-object v12, v5

    move-object/from16 v25, v9

    move-object/from16 v16, v13

    move/from16 v5, v17

    move-object/from16 v24, v18

    move-object/from16 v23, v20

    move/from16 v13, v22

    move-wide v9, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 366
    :try_start_ab
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesSupportingInvalidUidLocked(Ljava/lang/String;IIIIIZIJ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 373
    iput v8, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 374
    invoke-interface {v11, v12, v15, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/16 v2, -0x3e8

    .line 375
    invoke-interface {v11, v12, v14, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    move-object/from16 v2, v16

    const/4 v10, 0x1

    .line 376
    invoke-interface {v11, v12, v2, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    move-object/from16 v2, v23

    .line 377
    invoke-interface {v11, v12, v2, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 379
    const-string/jumbo v2, "sent_invalid_msg"

    invoke-interface {v11, v12, v2, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 381
    const-string/jumbo v2, "sent_valid_msg"

    invoke-interface {v11, v12, v2, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 382
    const-string/jumbo v2, "user_demote_msg_app"

    invoke-interface {v11, v12, v2, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 384
    const-string/jumbo v2, "sent_valid_bubble"

    invoke-interface {v11, v12, v2, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    .line 386
    const-string/jumbo v2, "promote"

    invoke-interface {v11, v12, v2, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->canHavePromotedNotifs:Z

    .line 390
    invoke-interface {v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    move v3, v13

    .line 392
    :goto_102
    invoke-interface {v11}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    if-eq v5, v10, :cond_112

    const/4 v6, 0x3

    if-ne v5, v6, :cond_11b

    .line 394
    invoke-interface {v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_112

    goto :goto_11b

    :cond_112
    move-object/from16 v9, v25

    goto/16 :goto_1f0

    :catch_116
    move-exception v0

    move-object/from16 v9, v25

    goto/16 :goto_210

    :cond_11b
    :goto_11b
    if-eq v5, v6, :cond_120

    const/4 v6, 0x4

    if-ne v5, v6, :cond_128

    :cond_120
    move/from16 v6, p2

    move-object/from16 v5, v24

    move-object/from16 v9, v25

    goto/16 :goto_1ea

    .line 399
    :cond_128
    invoke-interface {v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 401
    const-string v6, "channelGroup"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_132} :catch_116

    const-string/jumbo v7, "name"

    if-eqz v6, :cond_187

    .line 402
    :try_start_137
    iget-object v6, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    const/16 v8, 0x1770

    if-lt v6, v8, :cond_167

    if-nez v13, :cond_15f

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping further groups for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_156} :catch_116

    move-object/from16 v9, v25

    :try_start_158
    invoke-static {v9, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v25, v9

    move v13, v10

    goto :goto_102

    :cond_15f
    move-object/from16 v9, v25

    :cond_161
    move/from16 v6, p2

    :cond_163
    move-object/from16 v5, v24

    goto/16 :goto_1ea

    :cond_167
    move-object/from16 v9, v25

    .line 409
    const-string v6, "id"

    invoke-interface {v11, v12, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 410
    invoke-interface {v11, v12, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 411
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_189

    .line 412
    new-instance v14, Landroid/app/NotificationChannelGroup;

    invoke-direct {v14, v6, v8}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {v14, v11}, Landroid/app/NotificationChannelGroup;->populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 415
    iget-object v8, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v8, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_189

    :cond_187
    move-object/from16 v9, v25

    .line 419
    :cond_189
    :goto_189
    const-string v6, "channel"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1be

    .line 420
    iget-object v6, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/16 v8, 0x1388

    if-lt v6, v8, :cond_1b8

    if-nez v3, :cond_161

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping further channels for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v25, v9

    move v3, v10

    goto/16 :goto_102

    :cond_1b8
    move/from16 v6, p2

    .line 427
    invoke-virtual {v0, v11, v6, v1}, Lcom/android/server/notification/PreferencesHelper;->restoreChannel(Lcom/android/modules/utils/TypedXmlPullParser;ZLcom/android/server/notification/PreferencesHelper$PackagePreferences;)V

    goto :goto_1c0

    :cond_1be
    move/from16 v6, p2

    .line 431
    :goto_1c0
    const-string v8, "delegate"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_163

    move-object/from16 v5, v24

    const/4 v8, -0x1

    .line 432
    invoke-interface {v11, v12, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 433
    invoke-static {v11, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 434
    const-string v15, "enabled"

    invoke-interface {v11, v12, v15, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eq v14, v8, :cond_1e7

    .line 437
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1e7

    .line 438
    new-instance v8, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v8, v7, v14, v15}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZ)V

    goto :goto_1e8

    :cond_1e7
    move-object v8, v12

    .line 440
    :goto_1e8
    iput-object v8, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_1ea} :catch_72

    :goto_1ea
    move-object/from16 v24, v5

    move-object/from16 v25, v9

    goto/16 :goto_102

    .line 445
    :goto_1f0
    :try_start_1f0
    invoke-virtual {v0, v1}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_1f3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f0 .. :try_end_1f3} :catch_1f4
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_1f3} :catch_72

    goto :goto_209

    :catch_1f4
    move-exception v0

    .line 447
    :try_start_1f5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_209
    if-eqz p6, :cond_215

    .line 451
    iput v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 452
    iput-boolean v10, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_20f} :catch_72

    goto :goto_215

    .line 455
    :goto_210
    const-string v1, "Failed to restore pkg"

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_215
    :goto_215
    return-void
.end method

.method public revokeNotificationDelegate(Ljava/lang/String;I)V
    .registers 4

    .line 2312
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2313
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2314
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz p1, :cond_13

    const/4 p2, 0x0

    .line 2315
    iput-boolean p2, p1, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_18

    .line 2317
    :cond_13
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_11

    .line 2319
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    return-void

    .line 2317
    :goto_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_11

    throw p0
.end method

.method public setAppImportanceLocked(Ljava/lang/String;I)V
    .registers 5

    .line 2263
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2264
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 2265
    iget p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_11

    .line 2266
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1a

    :cond_11
    or-int/lit8 p2, p2, 0x1

    .line 2269
    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 2271
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    .line 2272
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    .line 2271
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_f

    throw p0
.end method

.method public setBubblesAllowed(Ljava/lang/String;II)V
    .registers 5

    .line 851
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 853
    iget p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eq p2, p3, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    .line 854
    :goto_e
    iput p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 855
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 856
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1d

    if-eqz p2, :cond_1c

    .line 858
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_1c
    return-void

    :catchall_1d
    move-exception p0

    .line 856
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setHideSilentStatusIcons(Z)V
    .registers 2

    .line 1689
    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    return-void
.end method

.method public setInvalidMessageSent(Ljava/lang/String;I)Z
    .registers 4

    .line 968
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 969
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 970
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    .line 971
    iput-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 973
    monitor-exit v0

    return p1

    :catchall_f
    move-exception p0

    .line 974
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .registers 5

    .line 961
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 962
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 963
    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 964
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7

    .line 2297
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2298
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 2299
    new-instance p2, Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v1, 0x1

    invoke-direct {p2, p3, p4, v1}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZ)V

    iput-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 2300
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    .line 2304
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    return-void

    :catchall_14
    move-exception p0

    .line 2300
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 5

    .line 895
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 897
    iget-boolean p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-eq p2, p3, :cond_11

    .line 898
    iput-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 p1, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_19

    :cond_11
    const/4 p1, 0x0

    .line 901
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    if-eqz p1, :cond_18

    .line 903
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_18
    return-void

    .line 901
    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_f

    throw p0
.end method

.method public setValidBubbleSent(Ljava/lang/String;I)Z
    .registers 4

    .line 1013
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1014
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1015
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    .line 1016
    iput-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    .line 1017
    monitor-exit v0

    return p1

    :catchall_f
    move-exception p0

    .line 1018
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setValidMessageSent(Ljava/lang/String;I)Z
    .registers 4

    .line 978
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 979
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 980
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    .line 981
    iput-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 983
    monitor-exit v0

    return p1

    :catchall_f
    move-exception p0

    .line 984
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 4

    .line 620
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 621
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 622
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 623
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p1, 0x1a

    if-lt p0, p1, :cond_16

    return v1

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public shouldHideSilentStatusIcons()Z
    .registers 1

    .line 1685
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    return p0
.end method

.method public syncHasPriorityChannels()V
    .registers 3

    .line 2185
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2186
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    .line 2189
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasPriorityChannels()V

    return-void
.end method

.method public unlockAllNotificationChannels()V
    .registers 7

    .line 3305
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3306
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_34

    .line 3308
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 3309
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x4

    .line 3310
    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->unlockFields(I)V

    goto :goto_1e

    :catchall_2f
    move-exception p0

    goto :goto_39

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3313
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_2f

    .line 3315
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    return-void

    .line 3313
    :goto_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_2f

    throw p0
.end method

.method public unlockNotificationChannelImportance(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 1297
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1299
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 1300
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    if-eqz p1, :cond_25

    .line 1301
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p2

    if-nez p2, :cond_25

    const/4 p2, 0x4

    .line 1304
    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 1305
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_23

    .line 1307
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    return-void

    :catchall_23
    move-exception p0

    goto :goto_2d

    .line 1302
    :cond_25
    :try_start_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Channel does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1305
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_23

    throw p0
.end method

.method public updateBadgingEnabled()V
    .registers 9

    .line 3181
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3182
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3186
    :goto_e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 3187
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3188
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 3189
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_badging"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_34

    move v5, v7

    goto :goto_35

    :cond_34
    move v5, v0

    .line 3192
    :goto_35
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v4, v5, :cond_3d

    goto :goto_3e

    :cond_3d
    move v7, v0

    :goto_3e
    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_42
    if-eqz v2, :cond_47

    .line 3196
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_47
    return-void
.end method

.method public updateBubblesEnabled()V
    .registers 9

    .line 3216
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3217
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3221
    :goto_e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 3222
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3223
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 3224
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_bubbles"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_34

    move v5, v7

    goto :goto_35

    :cond_34
    move v5, v0

    .line 3227
    :goto_35
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v4, v5, :cond_3d

    goto :goto_3e

    :cond_3d
    move v7, v0

    :goto_3e
    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_42
    if-eqz v2, :cond_47

    .line 3231
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_47
    return-void
.end method

.method public final updateChildrenConversationChannels(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 12

    .line 1392
    invoke-virtual {p2, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4b

    .line 1395
    :cond_7
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isConversation()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4b

    .line 1398
    :cond_e
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1401
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isConversation()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1402
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1403
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    move-object v2, p0

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/PreferencesHelper;->maybeUpdateChildConversationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    goto :goto_47

    :cond_44
    move-object v2, p0

    move-object v6, p2

    move-object v7, p3

    :goto_47
    move-object p0, v2

    move-object p2, v6

    move-object p3, v7

    goto :goto_18

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final updateConfig()V
    .registers 1

    .line 3345
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void
.end method

.method public final updateCurrentUserHasPriorityChannels()V
    .registers 11

    .line 2199
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2201
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v1

    .line 2202
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2203
    :try_start_e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    if-ge v5, v3, :cond_65

    .line 2205
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2206
    iget v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/util/IntArray;->contains(I)Z

    move-result v7

    if-nez v7, :cond_2d

    goto :goto_62

    .line 2210
    :cond_2d
    iget-object v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    .line 2211
    invoke-virtual {p0, v6, v8}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 2212
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v6, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :catchall_60
    move-exception p0

    goto :goto_9f

    :cond_62
    :goto_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 2217
    :cond_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_e .. :try_end_66} :catchall_60

    .line 2218
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_6c
    if-ltz v1, :cond_8a

    .line 2219
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2220
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v3

    if-nez v3, :cond_87

    .line 2221
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_87
    add-int/lit8 v1, v1, -0x1

    goto :goto_6c

    .line 2224
    :cond_8a
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_91

    move v4, v2

    .line 2225
    :cond_91
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-eq v0, v4, :cond_9e

    .line 2226
    iput-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    .line 2227
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v4}, Lcom/android/server/notification/ZenModeHelper;->updateHasPriorityChannels(Landroid/os/UserHandle;Z)V

    :cond_9e
    return-void

    .line 2217
    :goto_9f
    :try_start_9f
    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_60

    throw p0
.end method

.method public updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 9

    .line 1718
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1719
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1720
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_d

    if-eqz p2, :cond_d

    .line 1721
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    .line 1722
    iput-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 1723
    iget-boolean v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-nez v4, :cond_d

    .line 1724
    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1725
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    goto :goto_3c

    :catchall_4c
    move-exception p0

    goto :goto_92

    :cond_4e
    if-eqz p3, :cond_8d

    .line 1732
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 1733
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 1735
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1733
    invoke-virtual {p0, p3, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p2

    const/4 p3, 0x1

    .line 1736
    iput-boolean p3, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 1737
    iget-object p2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 1738
    invoke-virtual {v1, p3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    goto :goto_7d

    .line 1742
    :cond_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_4c

    .line 1744
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    return-void

    .line 1742
    :goto_92
    :try_start_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_4c

    throw p0
.end method

.method public updateFixedImportance(Ljava/util/List;)V
    .registers 8

    .line 1693
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1694
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 1695
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    .line 1694
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v1

    .line 1696
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1697
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1698
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1697
    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1700
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1701
    :try_start_44
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v4, v2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    const/4 v4, 0x1

    .line 1703
    iput-boolean v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    .line 1704
    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1705
    invoke-virtual {v5, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    goto :goto_5b

    :catchall_6b
    move-exception p0

    goto :goto_6f

    .line 1707
    :cond_6d
    monitor-exit v3

    goto :goto_23

    :goto_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_44 .. :try_end_70} :catchall_6b

    throw p0

    .line 1712
    :cond_71
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    return-void
.end method

.method public updateLockScreenPrivateNotifications()V
    .registers 9

    .line 3251
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3252
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3256
    :goto_e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_41

    .line 3257
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3258
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 3259
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_allow_private_notifications"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_33

    move v5, v7

    goto :goto_34

    :cond_33
    move v5, v0

    .line 3261
    :goto_34
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v4, v5, :cond_3c

    goto :goto_3d

    :cond_3c
    move v7, v0

    :goto_3d
    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_41
    if-eqz v2, :cond_46

    .line 3265
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_46
    return-void
.end method

.method public updateLockScreenShowNotifications()V
    .registers 9

    .line 3270
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3271
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3275
    :goto_e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_41

    .line 3276
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3277
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 3278
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_33

    move v5, v7

    goto :goto_34

    :cond_33
    move v5, v0

    .line 3280
    :goto_34
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v4, v5, :cond_3c

    goto :goto_3d

    :cond_3c
    move v7, v0

    :goto_3d
    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_41
    if-eqz v2, :cond_46

    .line 3284
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_46
    return-void
.end method

.method public updateMediaNotificationFilteringEnabled()V
    .registers 4

    .line 3165
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "qs_media_controls"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 3167
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111023a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 3169
    :goto_21
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    if-eq v2, v0, :cond_2a

    .line 3170
    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    .line 3171
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_2a
    return-void
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZIZ)V
    .registers 18

    .line 1315
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1320
    :try_start_d
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v7

    .line 1321
    iget-object v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/NotificationChannel;

    if-eqz v8, :cond_e3

    .line 1322
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_e3

    .line 1325
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_37

    const/16 v0, -0x3e8

    .line 1326
    invoke-virtual {p3, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    goto :goto_37

    :catchall_33
    move-exception v0

    move-object p0, v0

    goto/16 :goto_eb

    :cond_37
    :goto_37
    if-eqz p4, :cond_44

    .line 1330
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1331
    invoke-virtual {p0, v8, p3}, Lcom/android/server/notification/PreferencesHelper;->lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    goto :goto_4b

    .line 1333
    :cond_44
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 1336
    :goto_4b
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1337
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_64

    .line 1338
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 1341
    :cond_64
    iget-object v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_8d

    .line 1344
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    if-eqz v0, :cond_7c

    const/4 v0, 0x2

    goto :goto_7d

    :cond_7c
    move v0, v10

    .line 1345
    :goto_7d
    iput v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 1346
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    iput v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 1347
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    move v0, v9

    goto :goto_8e

    :cond_8d
    move v0, v10

    .line 1351
    :goto_8e
    invoke-virtual {v8, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 1353
    invoke-virtual {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1354
    invoke-virtual {v0, p4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1353
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1356
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 1357
    invoke-static {v8}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v4

    move-object v3, p1

    move v2, p2

    move-object v1, p3

    move v5, p4

    .line 1356
    invoke-interface/range {v0 .. v5}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    move v0, v9

    :cond_ad
    if-eqz p4, :cond_be

    .line 1361
    invoke-static {}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->getResolver()Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    move-result-object p1

    sget-object p2, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->PROPAGATE_CHANNEL_UPDATES_TO_CONVERSATIONS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-interface {p1, p2}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    move-result p1

    if-eqz p1, :cond_be

    .line 1363
    invoke-virtual {p0, v7, v8, p3}, Lcom/android/server/notification/PreferencesHelper;->updateChildrenConversationChannels(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 1368
    :cond_be
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-ne p1, p2, :cond_d3

    .line 1369
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    if-eq p1, p2, :cond_d1

    goto :goto_d3

    :cond_d1
    move v9, v10

    goto :goto_d4

    :cond_d3
    :goto_d3
    move v0, v9

    .line 1373
    :goto_d4
    monitor-exit v6
    :try_end_d5
    .catchall {:try_start_d .. :try_end_d5} :catchall_33

    if-eqz v9, :cond_da

    .line 1375
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasPriorityChannels()V

    :cond_da
    if-eqz v0, :cond_e2

    .line 1379
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    .line 1381
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_e2
    return-void

    .line 1323
    :cond_e3
    :try_start_e3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Channel does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1373
    :goto_eb
    monitor-exit v6
    :try_end_ec
    .catchall {:try_start_e3 .. :try_end_ec} :catchall_33

    throw p0
.end method

.method public updateReservedChannels(Ljava/util/List;Ljava/util/List;Z)V
    .registers 13

    xor-int/lit8 v0, p3, 0x1

    .line 1660
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1661
    :try_start_5
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1662
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1663
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_30
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1664
    invoke-static {v6}, Landroid/app/NotificationChannel;->getChannelIdForBundleType(I)Ljava/lang/String;

    move-result-object v6

    .line 1665
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    if-eqz v6, :cond_30

    .line 1666
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-eq v7, v0, :cond_30

    .line 1667
    invoke-virtual {v6, v0}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    if-nez p3, :cond_60

    .line 1668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    goto :goto_62

    :catchall_5e
    move-exception p0

    goto :goto_6e

    :cond_60
    const-wide/16 v7, -0x1

    :goto_62
    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    const/4 v3, 0x1

    goto :goto_30

    .line 1674
    :cond_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_5 .. :try_end_68} :catchall_5e

    if-eqz v3, :cond_6d

    .line 1679
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->invalidateNotificationChannelCache()V

    :cond_6d
    return-void

    .line 1674
    :goto_6e
    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_5e

    throw p0
.end method

.method public final writePackageXml(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Lcom/android/modules/utils/TypedXmlSerializer;Landroid/util/ArrayMap;Z)V
    .registers 13

    const/4 v0, 0x0

    .line 766
    const-string/jumbo v1, "package"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 768
    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    const/16 v4, -0x3e8

    const-string v5, "importance"

    if-nez v2, :cond_42

    .line 769
    new-instance v2, Landroid/util/Pair;

    iget v6, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 770
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-eqz v6, :cond_3a

    .line 772
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v6, 0x3

    goto :goto_3b

    :cond_3a
    const/4 v6, 0x0

    .line 771
    :goto_3b
    invoke-interface {p2, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 774
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 776
    :cond_42
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eq p3, v4, :cond_49

    .line 777
    invoke-interface {p2, v0, v5, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 780
    :cond_49
    :goto_49
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz p3, :cond_53

    .line 781
    const-string/jumbo v2, "priority"

    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 783
    :cond_53
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq p3, v4, :cond_5d

    .line 784
    const-string/jumbo v2, "visibility"

    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 786
    :cond_5d
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eqz p3, :cond_66

    .line 787
    const-string v2, "allow_bubble"

    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    :cond_66
    const-string/jumbo p3, "show_badge"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 790
    const-string p3, "app_user_locked_fields"

    iget v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 792
    const-string/jumbo p3, "sent_invalid_msg"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 794
    const-string/jumbo p3, "sent_valid_msg"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 796
    const-string/jumbo p3, "user_demote_msg_app"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 798
    const-string/jumbo p3, "sent_valid_bubble"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 800
    iget-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->canHavePromotedNotifs:Z

    const/4 v2, 0x1

    if-eq p3, v2, :cond_a0

    .line 801
    const-string/jumbo v4, "promote"

    invoke-interface {p2, v0, v4, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 805
    :cond_a0
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/4 v4, -0x1

    if-ne p3, v4, :cond_b4

    .line 806
    const-string p3, "creation_time"

    iget-wide v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->creationTime:J

    invoke-interface {p2, v0, p3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 807
    const-string/jumbo p3, "userid"

    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userIdWhenUidUnknown:I

    invoke-interface {p2, v0, p3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 810
    :cond_b4
    const-string/jumbo p3, "uid"

    if-nez p4, :cond_be

    .line 811
    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-interface {p2, v0, p3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 814
    :cond_be
    iget-object v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v4, :cond_e3

    .line 815
    const-string v4, "delegate"

    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 817
    iget-object v5, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v5, v5, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-interface {p2, v0, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 818
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    invoke-interface {p2, v0, p3, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 819
    iget-object p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean p3, p3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eq p3, v2, :cond_e0

    .line 820
    const-string v2, "enabled"

    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 822
    :cond_e0
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    :cond_e3
    iget-object p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_ed
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fd

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 826
    invoke-virtual {v2, p2}, Landroid/app/NotificationChannelGroup;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_ed

    .line 829
    :cond_fd
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_107
    :goto_107
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_125

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationChannel;

    if-eqz p4, :cond_121

    .line 831
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_107

    .line 832
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2, v2}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_107

    .line 835
    :cond_121
    invoke-virtual {p3, p2}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_107

    .line 839
    :cond_125
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZI)V
    .registers 12

    .line 717
    const-string/jumbo v0, "ranking"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 718
    const-string/jumbo v0, "version"

    iget v2, p0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 719
    const-string v0, "last_bubbles_version_upgrade"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2e

    .line 721
    const-string/jumbo v0, "silent_status_icons"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 722
    const-string v0, "hide_silent"

    iget-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 723
    const-string/jumbo v0, "silent_status_icons"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 725
    :cond_2e
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    if-eqz p2, :cond_3b

    .line 727
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/notification/PermissionHelper;->getNotificationPermissionValues(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 730
    :cond_3b
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 731
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_46
    if-ge v5, v3, :cond_64

    .line 733
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz p2, :cond_5e

    .line 734
    iget v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq v7, p3, :cond_5e

    goto :goto_61

    :catchall_5b
    move-exception p0

    goto/16 :goto_ce

    .line 737
    :cond_5e
    invoke-virtual {p0, v6, p1, v0, p2}, Lcom/android/server/notification/PreferencesHelper;->writePackageXml(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Lcom/android/modules/utils/TypedXmlSerializer;Landroid/util/ArrayMap;Z)V

    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_64
    if-nez p2, :cond_7d

    .line 741
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move p3, v4

    :goto_6d
    if-ge p3, p2, :cond_7d

    .line 743
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 744
    invoke-virtual {p0, v3, p1, v0, v4}, Lcom/android/server/notification/PreferencesHelper;->writePackageXml(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Lcom/android/modules/utils/TypedXmlSerializer;Landroid/util/ArrayMap;Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_6d

    .line 747
    :cond_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_3e .. :try_end_7e} :catchall_5b

    .line 749
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c7

    .line 750
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 751
    const-string/jumbo p3, "package"

    invoke-interface {p1, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 752
    const-string/jumbo p3, "name"

    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 753
    const-string p3, "importance"

    .line 754
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_bc

    const/4 p2, 0x3

    goto :goto_bd

    :cond_bc
    move p2, v4

    .line 753
    :goto_bd
    invoke-interface {p1, v1, p3, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 755
    const-string/jumbo p2, "package"

    invoke-interface {p1, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8c

    .line 758
    :cond_c7
    const-string/jumbo p0, "ranking"

    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 747
    :goto_ce
    :try_start_ce
    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_5b

    throw p0
.end method
