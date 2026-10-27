.class public Lcom/android/server/notification/PreferencesHelper;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/PreferencesHelper$Delegate;,
        Lcom/android/server/notification/PreferencesHelper$PackagePreferences;,
        Lcom/android/server/notification/PreferencesHelper$LockableAppFields;
    }
.end annotation


# static fields
.field private static final ATT_ALLOW_BUBBLE:Ljava/lang/String; = "allow_bubble"

.field private static final ATT_APP_USER_LOCKED_FIELDS:Ljava/lang/String; = "app_user_locked_fields"

.field private static final ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATT_HIDE_SILENT:Ljava/lang/String; = "hide_gentle"

.field private static final ATT_ID:Ljava/lang/String; = "id"

.field private static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_SENT_INVALID_MESSAGE:Ljava/lang/String; = "sent_invalid_msg"

.field private static final ATT_SENT_VALID_MESSAGE:Ljava/lang/String; = "sent_valid_msg"

.field private static final ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_USER_ALLOWED:Ljava/lang/String; = "allowed"

.field private static final ATT_USER_DEMOTED_INVALID_MSG_APP:Ljava/lang/String; = "user_demote_msg_app"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_APP_LOCKED_IMPORTANCE:Z = false

.field static final DEFAULT_BUBBLES_ENABLED:Z = true

.field static final DEFAULT_BUBBLE_PREFERENCE:I = 0x0

.field static final DEFAULT_HIDE_SILENT_STATUS_BAR_ICONS:Z = false

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final DEFAULT_LOCKED_APP_FIELDS:I = 0x0

.field static final DEFAULT_MEDIA_NOTIFICATION_FILTERING:Z = true

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final NON_BLOCKABLE_CHANNEL_DELIM:Ljava/lang/String; = ":"

.field static final NOTIFICATION_CHANNEL_COUNT_LIMIT:I = 0x1388

.field private static final NOTIFICATION_CHANNEL_DELETION_RETENTION_DAYS:I = 0x1e

.field static final NOTIFICATION_CHANNEL_GROUP_COUNT_LIMIT:I = 0x1770

.field private static final NOTIFICATION_CHANNEL_GROUP_PULL_LIMIT:I = 0x3e8

.field private static final NOTIFICATION_CHANNEL_PULL_LIMIT:I = 0x7d0

.field private static final NOTIFICATION_PREFERENCES_PULL_LIMIT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "NotificationPrefHelper"

.field private static final TAG_CHANNEL:Ljava/lang/String; = "channel"

.field private static final TAG_DELEGATE:Ljava/lang/String; = "delegate"

.field private static final TAG_GROUP:Ljava/lang/String; = "channelGroup"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final TAG_STATUS_ICONS:Ljava/lang/String; = "silent_status_icons"

.field static final UNKNOWN_UID:I = -0x2710

.field private static final XML_VERSION_BUBBLES_UPGRADE:I = 0x1

.field private static final XML_VERSION_NOTIF_PERMISSION:I = 0x3

.field private static final XML_VERSION_REVIEW_PERMISSIONS_NOTIFICATION:I = 0x4


# instance fields
.field private final XML_VERSION:I

.field private mAllowInvalidShortcuts:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAreChannelsBypassingDnd:Z

.field private mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field private mBubblesEnabled:Landroid/util/SparseBooleanArray;

.field private final mContext:Landroid/content/Context;

.field private mHideSilentStatusBarIcons:Z

.field private mIsMediaNotificationFilteringEnabled:Z

.field private mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

.field private mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

.field private final mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

.field private final mPackagePreferences:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private mShowReviewPermissionsNotification:Z

.field private final mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/PermissionHelper;Lcom/android/server/notification/NotificationChannelLogger;Landroid/app/AppOpsManager;Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;Z)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .param p4, "zenHelper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p5, "permHelper"    # Lcom/android/server/notification/PermissionHelper;
    .param p6, "notificationChannelLogger"    # Lcom/android/server/notification/NotificationChannelLogger;
    .param p7, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p8, "statsEventBuilderFactory"    # Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;
    .param p9, "showReviewPermissionsNotification"    # Z

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 195
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowInvalidShortcuts:Z

    .line 203
    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 204
    iput-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 205
    iput-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 206
    iput-object p5, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 207
    iput-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 208
    iput-object p6, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 209
    iput-object p7, p0, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 210
    iput-object p8, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    .line 211
    iput-boolean p9, p0, Lcom/android/server/notification/PreferencesHelper;->mShowReviewPermissionsNotification:Z

    .line 213
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    .line 215
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    .line 216
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 217
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateMediaNotificationFilteringEnabled()V

    .line 218
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd()V

    .line 219
    return-void
.end method

.method private channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z
    .registers 6
    .param p1, "pkgPref"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .param p2, "channel"    # Landroid/app/NotificationChannel;

    .line 1735
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1736
    return v1

    .line 1740
    :cond_10
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1f

    .line 1744
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 1741
    :cond_1f
    :goto_1f
    return v1
.end method

.method private createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 7
    .param p1, "r"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 539
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_8

    .line 540
    return v1

    .line 543
    :cond_8
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x104032d

    if-eqz v0, :cond_28

    .line 544
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 546
    return v1

    .line 549
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 551
    return v1

    .line 556
    :cond_2f
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 558
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 560
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_43

    move v1, v4

    :cond_43
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 561
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 562
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_55

    .line 563
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 565
    :cond_55
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v1, :cond_5c

    .line 566
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 568
    :cond_5c
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v1, v2, :cond_63

    .line 569
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 571
    :cond_63
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    return v4
.end method

.method private deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 521
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 523
    return v2

    .line 526
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 528
    return v2

    .line 532
    :cond_14
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const/4 v0, 0x1

    return v0
.end method

.method private deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1218
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1219
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 1221
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1222
    .local v1, "lm":Landroid/metrics/LogMaker;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1223
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1224
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v2, p1, p3, p2}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    .line 1225
    return v0

    .line 1227
    .end local v1    # "lm":Landroid/metrics/LogMaker;
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 24
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 2005
    .local p5, "packagePreferences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/PreferencesHelper$PackagePreferences;>;"
    .local p6, "packagePermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    const/4 v3, 0x0

    .line 2006
    .local v3, "pkgsWithPermissionsToHandle":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_d

    .line 2007
    invoke-virtual/range {p6 .. p6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2010
    :cond_d
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 2012
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    const-wide v10, 0x10500000002L

    const-wide v12, 0x10900000001L

    if-ge v5, v4, :cond_d3

    .line 2013
    move-object/from16 v14, p5

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2014
    .local v15, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v6, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 2015
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2017
    .local v7, "fToken":J
    iget-object v9, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2018
    iget v9, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v0, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2019
    new-instance v9, Landroid/util/Pair;

    iget v10, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2020
    .local v9, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v2, :cond_70

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 2021
    nop

    .line 2022
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_64

    .line 2023
    const/4 v6, 0x3

    goto :goto_65

    :cond_64
    const/4 v6, 0x0

    .line 2021
    :goto_65
    const-wide v10, 0x11100000003L

    invoke-virtual {v0, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2024
    invoke-interface {v3, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2026
    :cond_70
    const-wide v10, 0x10500000004L

    iget v6, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {v0, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2027
    const-wide v10, 0x11100000005L

    iget v6, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2028
    const-wide v10, 0x10800000006L

    iget-boolean v6, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {v0, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2030
    iget-object v6, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_98
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ad

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannel;

    .line 2031
    .local v10, "channel":Landroid/app/NotificationChannel;
    const-wide v11, 0x20b00000007L

    invoke-virtual {v10, v0, v11, v12}, Landroid/app/NotificationChannel;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2032
    .end local v10    # "channel":Landroid/app/NotificationChannel;
    goto :goto_98

    .line 2033
    :cond_ad
    iget-object v6, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_cc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    .line 2034
    .local v10, "group":Landroid/app/NotificationChannelGroup;
    const-wide v11, 0x20b00000008L

    invoke-virtual {v10, v0, v11, v12}, Landroid/app/NotificationChannelGroup;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2035
    .end local v10    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_b7

    .line 2037
    :cond_cc
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2012
    .end local v7    # "fToken":J
    .end local v9    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v15    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_cf
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    :cond_d3
    move-object/from16 v14, p5

    .line 2041
    .end local v5    # "i":I
    if-eqz v3, :cond_131

    .line 2042
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_db
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_131

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 2043
    .local v7, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_129

    .line 2044
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2045
    .local v8, "fToken":J
    iget-object v15, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v0, v12, v13, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2046
    iget-object v15, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v0, v10, v11, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2047
    nop

    .line 2048
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_11a

    .line 2049
    const/4 v15, 0x3

    goto :goto_11b

    :cond_11a
    const/4 v15, 0x0

    .line 2047
    :goto_11b
    move-object/from16 v16, v7

    const-wide v6, 0x11100000003L

    .end local v7    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v16, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v0, v6, v7, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2050
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_130

    .line 2043
    .end local v8    # "fToken":J
    .end local v16    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_129
    move-object/from16 v16, v7

    const-wide v6, 0x11100000003L

    .line 2052
    .end local v7    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_130
    goto :goto_db

    .line 2054
    :cond_131
    return-void
.end method

.method private dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 1921
    .local p4, "packagePreferences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/PreferencesHelper$PackagePreferences;>;"
    .local p5, "packagePermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    const/4 v3, 0x0

    .line 1922
    .local v3, "pkgsWithPermissionsToHandle":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_d

    .line 1923
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1925
    :cond_d
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1926
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    const-string v6, " userSet="

    const-string v9, " importance="

    const/16 v10, 0x29

    const-string v11, "UNKNOWN_UID"

    const/16 v12, -0x2710

    const-string v13, " ("

    const-string v14, "  AppSettings: "

    if-ge v5, v4, :cond_137

    .line 1927
    move-object/from16 v15, p4

    invoke-virtual {v15, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1928
    .local v7, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v8, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_133

    .line 1929
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1931
    iget-object v8, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1933
    iget v8, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne v8, v12, :cond_47

    goto :goto_4d

    :cond_47
    iget v8, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    :goto_4d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 1935
    new-instance v8, Landroid/util/Pair;

    iget v10, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v8, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1936
    .local v8, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v2, :cond_99

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    .line 1937
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1938
    nop

    .line 1939
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 1940
    const/16 v16, 0x3

    goto :goto_81

    :cond_7f
    const/16 v16, 0x0

    .line 1938
    :goto_81
    invoke-static/range {v16 .. v16}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1942
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1943
    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1945
    :cond_99
    iget v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v6, :cond_ab

    .line 1946
    const-string v6, " priority="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1947
    iget v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v6}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1949
    :cond_ab
    iget v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/16 v9, -0x3e8

    if-eq v6, v9, :cond_bf

    .line 1950
    const-string v6, " visibility="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1951
    iget v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v6}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1953
    :cond_bf
    iget-boolean v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v9, 0x1

    if-eq v6, v9, :cond_ce

    .line 1954
    const-string v6, " showBadge="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1955
    iget-boolean v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1957
    :cond_ce
    iget-boolean v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz v6, :cond_dc

    .line 1958
    const-string v6, " defaultAppLocked="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1959
    iget-boolean v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1961
    :cond_dc
    iget-boolean v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz v6, :cond_ea

    .line 1962
    const-string v6, " fixedImportance="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1963
    iget-boolean v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1965
    :cond_ea
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1966
    iget-object v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 1967
    .local v9, "channel":Landroid/app/NotificationChannel;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1968
    iget-boolean v10, v1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const-string v11, "    "

    invoke-virtual {v9, v0, v11, v10}, Landroid/app/NotificationChannel;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1969
    .end local v9    # "channel":Landroid/app/NotificationChannel;
    goto :goto_f7

    .line 1970
    :cond_10e
    iget-object v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_118
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_133

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    .line 1971
    .local v9, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1972
    const-string v10, "  "

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1974
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1975
    .end local v9    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_118

    .line 1926
    .end local v7    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v8    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_133
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    :cond_137
    move-object/from16 v15, p4

    .line 1979
    .end local v5    # "i":I
    if-eqz v3, :cond_1b3

    .line 1980
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 1982
    .local v7, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b2

    .line 1983
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1984
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1985
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1986
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1987
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v12, :cond_171

    move-object v8, v11

    goto :goto_17d

    :cond_171
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    :goto_17d
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 1989
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1990
    nop

    .line 1991
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_199

    .line 1992
    const/4 v8, 0x3

    goto :goto_19a

    :cond_199
    const/4 v8, 0x0

    .line 1990
    :goto_19a
    invoke-static {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1993
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1994
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1995
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1997
    .end local v7    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1b2
    goto :goto_13f

    .line 1999
    :cond_1b3
    return-void
.end method

.method private findConversationChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 8
    .param p1, "p"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "conversationId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .line 1165
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 1166
    .local v1, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1167
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    if-nez p4, :cond_32

    .line 1168
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_33

    .line 1169
    :cond_32
    return-object v1

    .line 1171
    .end local v1    # "nc":Landroid/app/NotificationChannel;
    :cond_33
    goto :goto_a

    .line 1172
    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method private getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 2520
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x35b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2523
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2524
    const/16 v1, 0x35c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2528
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2520
    return-object v0
.end method

.method private getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 2504
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x358

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2507
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2508
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2512
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2509
    const/16 v2, 0x359

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2516
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2513
    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2504
    return-object v0
.end method

.method private getCurrentUser()I
    .registers 4

    .line 1727
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1728
    .local v0, "identity":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1729
    .local v2, "currentUserId":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1730
    return v2
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 467
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    const/16 v6, -0x3e8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 15
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "importance"    # I
    .param p5, "priority"    # I
    .param p6, "visibility"    # I
    .param p7, "showBadge"    # Z
    .param p8, "bubblePreference"    # I

    .line 475
    invoke-static {p1, p3}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "key":Ljava/lang/String;
    const/16 v1, -0x2710

    if-ne p3, v1, :cond_15

    .line 478
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    goto :goto_1d

    .line 479
    :cond_15
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    :goto_1d
    nop

    .line 480
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_65

    .line 481
    new-instance v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>(Lcom/android/server/notification/PreferencesHelper$PackagePreferences-IA;)V

    move-object v2, v3

    .line 482
    iput-object p1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 483
    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 484
    iput p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 485
    iput p5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 486
    iput p6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 487
    iput-boolean p7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 488
    iput p8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 491
    :try_start_35
    invoke-direct {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_38} :catch_39

    .line 494
    goto :goto_52

    .line 492
    :catch_39
    move-exception v3

    .line 493
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotificationPrefHelper"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_52
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne v3, v1, :cond_60

    .line 497
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 499
    :cond_60
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_65
    :goto_65
    return-object v2
.end method

.method private getPackageChannels()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2373
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2374
    .local v0, "packageChannels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2375
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 2376
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2377
    .local v3, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v4, 0x0

    .line 2378
    .local v4, "channelCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1b
    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_36

    .line 2379
    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_33

    .line 2380
    add-int/lit8 v4, v4, 0x1

    .line 2378
    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 2383
    .end local v5    # "j":I
    :cond_36
    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2375
    nop

    .end local v3    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v4    # "channelCount":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2385
    .end local v2    # "i":I
    :cond_43
    monitor-exit v1

    .line 2386
    return-object v0

    .line 2385
    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_45

    throw v2
.end method

.method private getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 460
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    return-object v1
.end method

.method private hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 6
    .param p1, "p"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "hasChangedChannel":Z
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 431
    .local v2, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 432
    const/4 v0, 0x1

    .line 433
    goto :goto_20

    .line 435
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    :cond_1f
    goto :goto_b

    .line 436
    :cond_20
    :goto_20
    if-nez v0, :cond_29

    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v1, :cond_27

    goto :goto_29

    :cond_27
    const/4 v1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v1, 0x1

    :goto_2a
    return v1
.end method

.method private isDeletionOk(Landroid/app/NotificationChannel;)Z
    .registers 8
    .param p1, "nc"    # Landroid/app/NotificationChannel;

    .line 448
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 449
    return v1

    .line 451
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v2, v4

    .line 453
    .local v2, "boundary":J
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gtz v0, :cond_1c

    .line 454
    const/4 v0, 0x0

    return v0

    .line 456
    :cond_1c
    return v1
.end method

.method private isShortcutOk(Landroid/app/NotificationChannel;)Z
    .registers 6
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 440
    nop

    .line 441
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 442
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":placeholder_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    .line 444
    .local v0, "isInvalidShortcutChannel":Z
    :goto_18
    iget-boolean v3, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowInvalidShortcuts:Z

    if-nez v3, :cond_22

    if-nez v3, :cond_21

    if-nez v0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :cond_22
    :goto_22
    return v1
.end method

.method private static packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 2687
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

.method private restoreChannel(Landroid/util/TypedXmlPullParser;ZLcom/android/server/notification/PreferencesHelper$PackagePreferences;)V
    .registers 9
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "forRestore"    # Z
    .param p3, "r"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 403
    :try_start_0
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v2, "name"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "channelName":Ljava/lang/String;
    const-string v3, "importance"

    const/16 v4, -0x3e8

    invoke-interface {p1, v1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 407
    .local v1, "channelImportance":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 408
    new-instance v3, Landroid/app/NotificationChannel;

    invoke-direct {v3, v0, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 410
    .local v3, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_2f

    .line 411
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1, v4}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    goto :goto_32

    .line 413
    :cond_2f
    invoke-virtual {v3, p1}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 415
    :goto_32
    iget-boolean v4, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-nez v4, :cond_3d

    iget-boolean v4, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz v4, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v4, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v4, 0x1

    :goto_3e
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 418
    invoke-direct {p0, v3}, Lcom/android/server/notification/PreferencesHelper;->isShortcutOk(Landroid/app/NotificationChannel;)Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-direct {p0, v3}, Lcom/android/server/notification/PreferencesHelper;->isDeletionOk(Landroid/app/NotificationChannel;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 419
    iget-object v4, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    .line 424
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "channelImportance":I
    .end local v2    # "channelName":Ljava/lang/String;
    .end local v3    # "channel":Landroid/app/NotificationChannel;
    :cond_52
    goto :goto_6e

    .line 422
    :catch_53
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not restore channel for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationPrefHelper"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6e
    return-void
.end method

.method private restorePackage(Landroid/util/TypedXmlPullParser;ZILjava/lang/String;ZZLjava/util/ArrayList;)V
    .registers 35
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "forRestore"    # Z
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "upgradeForBubbles"    # Z
    .param p6, "migrateToPermission"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "ZI",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/PermissionHelper$PackagePermission;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p7, "pkgPerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/PermissionHelper$PackagePermission;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    const-string/jumbo v13, "show_badge"

    const-string/jumbo v14, "visibility"

    const-string/jumbo v15, "priority"

    const-string/jumbo v8, "uid"

    const-string v7, "NotificationPrefHelper"

    const/16 v6, -0x2710

    const/4 v5, 0x0

    :try_start_17
    invoke-interface {v11, v5, v8, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_28c

    move v1, v0

    .line 281
    .local v1, "uid":I
    if-eqz v12, :cond_3a

    .line 283
    :try_start_1e
    iget-object v0, v10, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_20} :catch_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_20} :catch_2d

    move/from16 v4, p3

    move-object/from16 v3, p4

    :try_start_24
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_28} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_28c

    move v1, v0

    .line 286
    move v2, v1

    goto :goto_3f

    .line 284
    :catch_2b
    move-exception v0

    goto :goto_3e

    .line 394
    .end local v1    # "uid":I
    :catch_2d
    move-exception v0

    move/from16 v4, p3

    move-object/from16 v3, p4

    goto/16 :goto_28d

    .line 284
    .restart local v1    # "uid":I
    :catch_34
    move-exception v0

    move/from16 v4, p3

    move-object/from16 v3, p4

    goto :goto_3e

    .line 281
    :cond_3a
    move/from16 v4, p3

    move-object/from16 v3, p4

    .line 288
    :goto_3e
    move v2, v1

    .end local v1    # "uid":I
    .local v2, "uid":I
    :goto_3f
    const/4 v0, 0x0

    .line 289
    .local v0, "skipWarningLogged":Z
    const/16 v22, 0x0

    .line 290
    .local v22, "skipGroupWarningLogged":Z
    const/4 v1, 0x0

    .line 291
    .local v1, "hasSAWPermission":Z
    const/4 v9, 0x0

    if-eqz p5, :cond_63

    if-eq v2, v6, :cond_63

    .line 292
    :try_start_48
    iget-object v6, v10, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v17, 0x18

    const/16 v20, 0x0

    const-string v21, "check-notif-bubble"

    move-object/from16 v16, v6

    move/from16 v18, v2

    move-object/from16 v19, p4

    invoke-virtual/range {v16 .. v21}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5e

    const/4 v6, 0x1

    goto :goto_5f

    :cond_5e
    move v6, v9

    :goto_5f
    move v1, v6

    move/from16 v16, v1

    goto :goto_65

    .line 296
    :cond_63
    move/from16 v16, v1

    .end local v1    # "hasSAWPermission":Z
    .local v16, "hasSAWPermission":Z
    :goto_65
    if-eqz v16, :cond_6a

    .line 297
    const/4 v1, 0x1

    const/4 v6, 0x0

    goto :goto_71

    .line 298
    :cond_6a
    const-string v1, "allow_bubble"

    const/4 v6, 0x0

    invoke-interface {v11, v6, v1, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    :goto_71
    move v5, v9

    move v9, v1

    .line 299
    .local v9, "bubblePref":I
    const-string v1, "importance"

    const/16 v5, -0x3e8

    invoke-interface {v11, v6, v1, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 301
    .local v1, "appImportance":I
    nop

    .line 304
    const/4 v5, 0x0

    invoke-interface {v11, v6, v15, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    .line 305
    const/16 v5, -0x3e8

    invoke-interface {v11, v6, v14, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    .line 306
    const/4 v5, 0x1

    invoke-interface {v11, v6, v13, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_8c} :catch_28c

    .line 301
    move/from16 v23, v1

    .end local v1    # "appImportance":I
    .local v23, "appImportance":I
    move-object/from16 v1, p0

    move/from16 v24, v2

    .end local v2    # "uid":I
    .local v24, "uid":I
    move-object/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, v24

    move-object v12, v6

    const/16 v6, -0x3e8

    const/4 v10, 0x0

    move/from16 v5, v23

    move/from16 v6, v18

    move-object/from16 v25, v7

    move/from16 v7, v19

    move-object/from16 v26, v8

    move/from16 v8, v17

    :try_start_a8
    invoke-direct/range {v1 .. v9}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 308
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    invoke-interface {v11, v12, v15, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 309
    const/16 v2, -0x3e8

    invoke-interface {v11, v12, v14, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 310
    const/4 v2, 0x1

    invoke-interface {v11, v12, v13, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 311
    const-string v3, "app_user_locked_fields"

    invoke-interface {v11, v12, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 313
    const-string/jumbo v3, "sent_invalid_msg"

    invoke-interface {v11, v12, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 315
    const-string/jumbo v3, "sent_valid_msg"

    invoke-interface {v11, v12, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 316
    const-string/jumbo v3, "user_demote_msg_app"

    invoke-interface {v11, v12, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 319
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    move v4, v0

    .line 321
    .end local v0    # "skipWarningLogged":Z
    .local v3, "innerDepth":I
    .local v4, "skipWarningLogged":Z
    :goto_e9
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move v5, v0

    .local v5, "type":I
    if-eq v0, v2, :cond_226

    const/4 v0, 0x3

    if-ne v5, v0, :cond_102

    .line 323
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_f7} :catch_282

    if-le v6, v3, :cond_fa

    goto :goto_102

    :cond_fa
    move-object/from16 v6, p0

    move/from16 v10, p2

    move-object/from16 v8, v25

    goto/16 :goto_22c

    .line 324
    :cond_102
    :goto_102
    if-eq v5, v0, :cond_215

    const/4 v0, 0x4

    if-ne v5, v0, :cond_111

    .line 325
    move-object/from16 v6, p0

    move/from16 v10, p2

    move-object/from16 v8, v25

    move-object/from16 v14, v26

    goto/16 :goto_21d

    .line 328
    :cond_111
    :try_start_111
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "tagName":Ljava/lang/String;
    const-string v6, "channelGroup"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_11b} :catch_20c

    const-string/jumbo v7, "name"

    if-eqz v6, :cond_17a

    .line 331
    :try_start_120
    iget-object v6, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    const/16 v8, 0x1770

    if-lt v6, v8, :cond_155

    .line 332
    if-nez v22, :cond_14b

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping further groups for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_141} :catch_175

    move-object/from16 v8, v25

    :try_start_143
    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/16 v22, 0x1

    move-object/from16 v25, v8

    goto :goto_e9

    .line 332
    :cond_14b
    move-object/from16 v8, v25

    move-object/from16 v6, p0

    move/from16 v10, p2

    move-object/from16 v14, v26

    goto/16 :goto_21d

    .line 338
    :cond_155
    move-object/from16 v8, v25

    const-string v6, "id"

    invoke-interface {v11, v12, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "id":Ljava/lang/String;
    invoke-interface {v11, v12, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 340
    .local v13, "groupName":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_17c

    .line 341
    new-instance v14, Landroid/app/NotificationChannelGroup;

    invoke-direct {v14, v6, v13}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 343
    .local v14, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v14, v11}, Landroid/app/NotificationChannelGroup;->populateFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 344
    iget-object v15, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v15, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17c

    .line 394
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "innerDepth":I
    .end local v4    # "skipWarningLogged":Z
    .end local v5    # "type":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v9    # "bubblePref":I
    .end local v13    # "groupName":Ljava/lang/CharSequence;
    .end local v14    # "group":Landroid/app/NotificationChannelGroup;
    .end local v16    # "hasSAWPermission":Z
    .end local v22    # "skipGroupWarningLogged":Z
    .end local v23    # "appImportance":I
    .end local v24    # "uid":I
    :catch_175
    move-exception v0

    move-object/from16 v8, v25

    goto/16 :goto_206

    .line 330
    .restart local v0    # "tagName":Ljava/lang/String;
    .restart local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v3    # "innerDepth":I
    .restart local v4    # "skipWarningLogged":Z
    .restart local v5    # "type":I
    .restart local v9    # "bubblePref":I
    .restart local v16    # "hasSAWPermission":Z
    .restart local v22    # "skipGroupWarningLogged":Z
    .restart local v23    # "appImportance":I
    .restart local v24    # "uid":I
    :cond_17a
    move-object/from16 v8, v25

    .line 348
    :cond_17c
    :goto_17c
    const-string v6, "channel"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1bf

    .line 349
    iget-object v6, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/16 v13, 0x1388

    if-lt v6, v13, :cond_1b5

    .line 350
    if-nez v4, :cond_1ad

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping further channels for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_1a8} :catch_205

    .line 352
    const/4 v4, 0x1

    move-object/from16 v25, v8

    goto/16 :goto_e9

    .line 350
    :cond_1ad
    move-object/from16 v6, p0

    move/from16 v10, p2

    move-object/from16 v14, v26

    goto/16 :goto_21d

    .line 356
    :cond_1b5
    move-object/from16 v6, p0

    move-object v13, v12

    move v12, v10

    move/from16 v10, p2

    :try_start_1bb
    invoke-direct {v6, v11, v10, v1}, Lcom/android/server/notification/PreferencesHelper;->restoreChannel(Landroid/util/TypedXmlPullParser;ZLcom/android/server/notification/PreferencesHelper$PackagePreferences;)V

    goto :goto_1c5

    .line 348
    :cond_1bf
    move-object/from16 v6, p0

    move-object v13, v12

    move v12, v10

    move/from16 v10, p2

    .line 360
    :goto_1c5
    const-string v14, "delegate"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_202

    .line 361
    move-object/from16 v14, v26

    const/16 v15, -0x2710

    invoke-interface {v11, v13, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    move/from16 v18, v17

    .line 362
    .local v18, "delegateId":I
    invoke-static {v11, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 363
    .local v7, "delegateName":Ljava/lang/String;
    const-string v12, "enabled"

    invoke-interface {v11, v13, v12, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 365
    .local v12, "delegateEnabled":Z
    const-string v15, "allowed"

    invoke-interface {v11, v13, v15, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    .line 367
    .local v15, "userAllowed":Z
    const/16 v17, 0x0

    .line 368
    .local v17, "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    move/from16 v13, v18

    const/16 v2, -0x2710

    .end local v18    # "delegateId":I
    .local v13, "delegateId":I
    if-eq v13, v2, :cond_1fd

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1fd

    .line 369
    new-instance v2, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v2, v7, v13, v12, v15}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    move-object/from16 v17, v2

    goto :goto_1ff

    .line 371
    :cond_1fd
    move-object/from16 v2, v17

    .end local v17    # "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    .local v2, "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    :goto_1ff
    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_201} :catch_230

    goto :goto_204

    .line 360
    .end local v2    # "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    .end local v7    # "delegateName":Ljava/lang/String;
    .end local v12    # "delegateEnabled":Z
    .end local v13    # "delegateId":I
    .end local v15    # "userAllowed":Z
    :cond_202
    move-object/from16 v14, v26

    .line 374
    .end local v0    # "tagName":Ljava/lang/String;
    :goto_204
    goto :goto_21d

    .line 394
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "innerDepth":I
    .end local v4    # "skipWarningLogged":Z
    .end local v5    # "type":I
    .end local v9    # "bubblePref":I
    .end local v16    # "hasSAWPermission":Z
    .end local v22    # "skipGroupWarningLogged":Z
    .end local v23    # "appImportance":I
    .end local v24    # "uid":I
    :catch_205
    move-exception v0

    :goto_206
    move-object/from16 v6, p0

    move/from16 v10, p2

    goto/16 :goto_290

    :catch_20c
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v10, p2

    move-object/from16 v8, v25

    goto/16 :goto_290

    .line 324
    .restart local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v3    # "innerDepth":I
    .restart local v4    # "skipWarningLogged":Z
    .restart local v5    # "type":I
    .restart local v9    # "bubblePref":I
    .restart local v16    # "hasSAWPermission":Z
    .restart local v22    # "skipGroupWarningLogged":Z
    .restart local v23    # "appImportance":I
    .restart local v24    # "uid":I
    :cond_215
    move-object/from16 v6, p0

    move/from16 v10, p2

    move-object/from16 v8, v25

    move-object/from16 v14, v26

    .line 321
    .end local v5    # "type":I
    :goto_21d
    move-object/from16 v25, v8

    move-object/from16 v26, v14

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto/16 :goto_e9

    .restart local v5    # "type":I
    :cond_226
    move-object/from16 v6, p0

    move/from16 v10, p2

    move-object/from16 v8, v25

    .line 377
    :goto_22c
    :try_start_22c
    invoke-direct {v6, v1}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_22f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22c .. :try_end_22f} :catch_233
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_22f} :catch_230

    .line 380
    goto :goto_24c

    .line 394
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "innerDepth":I
    .end local v4    # "skipWarningLogged":Z
    .end local v5    # "type":I
    .end local v9    # "bubblePref":I
    .end local v16    # "hasSAWPermission":Z
    .end local v22    # "skipGroupWarningLogged":Z
    .end local v23    # "appImportance":I
    .end local v24    # "uid":I
    :catch_230
    move-exception v0

    goto/16 :goto_290

    .line 378
    .restart local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v3    # "innerDepth":I
    .restart local v4    # "skipWarningLogged":Z
    .restart local v5    # "type":I
    .restart local v9    # "bubblePref":I
    .restart local v16    # "hasSAWPermission":Z
    .restart local v22    # "skipGroupWarningLogged":Z
    .restart local v23    # "appImportance":I
    .restart local v24    # "uid":I
    :catch_233
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 379
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_24c
    if-eqz p6, :cond_27d

    .line 383
    move/from16 v2, v23

    .end local v23    # "appImportance":I
    .local v2, "appImportance":I
    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 384
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    .line 385
    iget v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v12, -0x2710

    if-eq v0, v12, :cond_27a

    .line 387
    new-instance v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    iget-object v12, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v13, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 388
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    iget v14, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v14, :cond_26a

    goto :goto_26b

    :cond_26a
    const/4 v7, 0x0

    .line 390
    :goto_26b
    invoke-direct {v6, v1}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v14

    invoke-direct {v0, v12, v13, v7, v14}, Lcom/android/server/notification/PermissionHelper$PackagePermission;-><init>(Ljava/lang/String;IZZ)V
    :try_end_272
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_272} :catch_230

    .line 391
    .local v0, "pkgPerm":Lcom/android/server/notification/PermissionHelper$PackagePermission;
    move-object/from16 v7, p7

    :try_start_274
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_277
    .catch Ljava/lang/Exception; {:try_start_274 .. :try_end_277} :catch_278

    goto :goto_281

    .line 394
    .end local v0    # "pkgPerm":Lcom/android/server/notification/PermissionHelper$PackagePermission;
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "appImportance":I
    .end local v3    # "innerDepth":I
    .end local v4    # "skipWarningLogged":Z
    .end local v5    # "type":I
    .end local v9    # "bubblePref":I
    .end local v16    # "hasSAWPermission":Z
    .end local v22    # "skipGroupWarningLogged":Z
    .end local v24    # "uid":I
    :catch_278
    move-exception v0

    goto :goto_292

    .line 385
    .restart local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v2    # "appImportance":I
    .restart local v3    # "innerDepth":I
    .restart local v4    # "skipWarningLogged":Z
    .restart local v5    # "type":I
    .restart local v9    # "bubblePref":I
    .restart local v16    # "hasSAWPermission":Z
    .restart local v22    # "skipGroupWarningLogged":Z
    .restart local v24    # "uid":I
    :cond_27a
    move-object/from16 v7, p7

    goto :goto_281

    .line 382
    .end local v2    # "appImportance":I
    .restart local v23    # "appImportance":I
    :cond_27d
    move-object/from16 v7, p7

    move/from16 v2, v23

    .line 396
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "innerDepth":I
    .end local v4    # "skipWarningLogged":Z
    .end local v5    # "type":I
    .end local v9    # "bubblePref":I
    .end local v16    # "hasSAWPermission":Z
    .end local v22    # "skipGroupWarningLogged":Z
    .end local v23    # "appImportance":I
    .end local v24    # "uid":I
    :goto_281
    goto :goto_297

    .line 394
    :catch_282
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v10, p2

    move-object/from16 v7, p7

    move-object/from16 v8, v25

    goto :goto_292

    :catch_28c
    move-exception v0

    :goto_28d
    move-object v8, v7

    move-object v6, v10

    move v10, v12

    :goto_290
    move-object/from16 v7, p7

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    :goto_292
    const-string v1, "Failed to restore pkg"

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_297
    return-void
.end method

.method private shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 7
    .param p1, "r"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 507
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 508
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 509
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 510
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_16

    .line 512
    return v3

    .line 516
    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method private syncChannelsBypassingDnd()V
    .registers 3

    .line 1682
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1685
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    .line 1686
    return-void
.end method

.method private static unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 2691
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

.method private updateChannelsBypassingDnd()V
    .registers 11

    .line 1693
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1695
    .local v0, "candidatePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->getCurrentUser()I

    move-result v1

    .line 1696
    .local v1, "currentUserId":I
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1697
    :try_start_c
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1698
    .local v3, "numPackagePreferences":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_5d

    .line 1699
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1701
    .local v5, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq v1, v6, :cond_26

    .line 1702
    goto :goto_5a

    .line 1705
    :cond_26
    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    .line 1706
    .local v7, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v5, v7}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v8

    if-eqz v8, :cond_59

    .line 1707
    new-instance v6, Landroid/util/Pair;

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1708
    goto :goto_5a

    .line 1710
    .end local v7    # "channel":Landroid/app/NotificationChannel;
    :cond_59
    goto :goto_30

    .line 1698
    .end local v5    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_5a
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1712
    .end local v3    # "numPackagePreferences":I
    .end local v4    # "i":I
    :cond_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_c .. :try_end_5e} :catchall_95

    .line 1713
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_64
    if-ltz v2, :cond_82

    .line 1714
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1715
    .local v4, "app":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 1716
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1713
    .end local v4    # "app":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7f
    add-int/lit8 v2, v2, -0x1

    goto :goto_64

    .line 1719
    .end local v2    # "i":I
    :cond_82
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v3, 0x0

    :goto_8a
    move v2, v3

    .line 1720
    .local v2, "haveBypassingApps":Z
    iget-boolean v3, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eq v3, v2, :cond_94

    .line 1721
    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1722
    invoke-virtual {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    .line 1724
    :cond_94
    return-void

    .line 1712
    .end local v2    # "haveBypassingApps":Z
    :catchall_95
    move-exception v3

    :try_start_96
    monitor-exit v2
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v3
.end method

.method private updateConfig()V
    .registers 2

    .line 2683
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 2684
    return-void
.end method


# virtual methods
.method public areChannelsBypassingDnd()Z
    .registers 2

    .line 1758
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    return v0
.end method

.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2567
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2568
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 2569
    return v1

    .line 2571
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_27

    .line 2572
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 2573
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_badging"

    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_24

    move v1, v3

    .line 2572
    :cond_24
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2577
    :cond_27
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    return v1
.end method

.method public bubblesEnabled(Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2603
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2604
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 2605
    return v1

    .line 2607
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_27

    .line 2608
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 2609
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_bubbles"

    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_24

    move v1, v3

    .line 2608
    :cond_24
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2613
    :cond_27
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    return v1
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 720
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 721
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    monitor-exit v0

    return v1

    .line 722
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public canShowNotificationsOnLockscreen(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2656
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 2657
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    .line 2659
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public canShowPrivateNotificationsOnLockScreen(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2664
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 2665
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 2667
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public clearData(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2487
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2488
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 2489
    .local v1, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_2a

    .line 2490
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 2491
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 2492
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 2493
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 2494
    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 2495
    const/16 v3, -0x3e8

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 2496
    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 2497
    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 2498
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 2500
    .end local v1    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_2a
    monitor-exit v0

    .line 2501
    return-void

    .line 2500
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V
    .registers 3
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 1048
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 1049
    return-void
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z
    .registers 23
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "fromTargetApp"    # Z
    .param p5, "hasDndAccess"    # Z

    .line 902
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 906
    const/4 v3, 0x0

    .local v3, "needsPolicyFileChange":Z
    const/4 v4, 0x0

    .local v4, "wasUndeleted":Z
    const/4 v5, 0x0

    .line 907
    .local v5, "needsDndChange":Z
    iget-object v11, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v11

    .line 908
    :try_start_28
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    .line 909
    .local v0, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v0, :cond_22e

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_49

    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    goto :goto_49

    .line 913
    :cond_41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "NotificationChannelGroup doesn\'t exist"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsPolicyFileChange":Z
    .end local v4    # "wasUndeleted":Z
    .end local v5    # "needsDndChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v2

    .line 915
    .restart local v3    # "needsPolicyFileChange":Z
    .restart local v4    # "wasUndeleted":Z
    .restart local v5    # "needsDndChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :cond_49
    :goto_49
    const-string/jumbo v6, "miscellaneous"

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_226

    .line 918
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    move-object v12, v6

    .line 919
    .local v12, "existing":Landroid/app/NotificationChannel;
    const/16 v7, -0x3e8

    const/4 v6, 0x0

    if-eqz v12, :cond_176

    if-eqz p4, :cond_176

    .line 921
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v13

    if-eqz v13, :cond_8c

    .line 923
    invoke-virtual {v12, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 924
    const-wide/16 v13, -0x1

    invoke-virtual {v12, v13, v14}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 925
    const/4 v3, 0x1

    .line 926
    const/4 v4, 0x1

    .line 929
    invoke-direct {v1, v10, v8}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 931
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v2, v10, v9, v8}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_28 .. :try_end_8a} :catchall_236

    move v13, v4

    goto :goto_8d

    .line 921
    :cond_8c
    move v13, v4

    .line 934
    .end local v4    # "wasUndeleted":Z
    .local v13, "wasUndeleted":Z
    :goto_8d
    :try_start_8d
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    .line 935
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 936
    const/4 v2, 0x1

    move v3, v2

    .line 938
    :cond_b0
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 940
    const/4 v2, 0x1

    move v3, v2

    .line 942
    :cond_c7
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-eq v2, v4, :cond_da

    .line 943
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 944
    const/4 v2, 0x1

    move v3, v2

    .line 946
    :cond_da
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ef

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ef

    .line 947
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 948
    const/4 v2, 0x1

    move v3, v2

    .line 953
    :cond_ef
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    move v14, v2

    .line 954
    .local v14, "previousExistingImportance":I
    nop

    .line 955
    invoke-static {v12}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v6

    .line 956
    .local v6, "previousLoggingImportance":I
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    if-nez v2, :cond_112

    .line 957
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-ge v2, v4, :cond_112

    .line 958
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 959
    const/4 v2, 0x1

    move v3, v2

    .line 964
    :cond_112
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    if-nez v2, :cond_13a

    if-eqz p5, :cond_13a

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    .line 966
    .local v2, "bypassDnd":Z
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    if-ne v2, v4, :cond_126

    if-eqz v13, :cond_13a

    .line 967
    :cond_126
    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 968
    const/4 v3, 0x1

    .line 970
    iget-boolean v4, v1, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne v2, v4, :cond_137

    .line 971
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4
    :try_end_132
    .catchall {:try_start_8d .. :try_end_132} :catchall_172

    if-eq v14, v4, :cond_135

    goto :goto_137

    :cond_135
    move v15, v5

    goto :goto_13b

    .line 972
    :cond_137
    :goto_137
    const/4 v4, 0x1

    move v15, v4

    .end local v5    # "needsDndChange":Z
    .local v4, "needsDndChange":Z
    goto :goto_13b

    .line 977
    .end local v2    # "bypassDnd":Z
    .end local v4    # "needsDndChange":Z
    .restart local v5    # "needsDndChange":Z
    :cond_13a
    move v15, v5

    .end local v5    # "needsDndChange":Z
    .local v15, "needsDndChange":Z
    :goto_13b
    :try_start_13b
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v2

    if-ne v2, v7, :cond_14c

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V
    :try_end_148
    .catchall {:try_start_13b .. :try_end_148} :catchall_16d

    .line 979
    const/4 v2, 0x1

    move/from16 v16, v2

    .end local v3    # "needsPolicyFileChange":Z
    .local v2, "needsPolicyFileChange":Z
    goto :goto_14e

    .line 977
    .end local v2    # "needsPolicyFileChange":Z
    .restart local v3    # "needsPolicyFileChange":Z
    :cond_14c
    move/from16 v16, v3

    .line 982
    .end local v3    # "needsPolicyFileChange":Z
    .local v16, "needsPolicyFileChange":Z
    :goto_14e
    :try_start_14e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 983
    if-eqz v16, :cond_160

    if-nez v13, :cond_160

    .line 984
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    const/4 v7, 0x0

    move-object v3, v12

    move/from16 v4, p2

    move-object/from16 v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V
    :try_end_160
    .catchall {:try_start_14e .. :try_end_160} :catchall_166

    .line 987
    .end local v6    # "previousLoggingImportance":I
    .end local v14    # "previousExistingImportance":I
    :cond_160
    move v4, v13

    move v5, v15

    move/from16 v3, v16

    goto/16 :goto_20f

    .line 1038
    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v12    # "existing":Landroid/app/NotificationChannel;
    :catchall_166
    move-exception v0

    move v4, v13

    move v5, v15

    move/from16 v3, v16

    goto/16 :goto_237

    .end local v16    # "needsPolicyFileChange":Z
    .restart local v3    # "needsPolicyFileChange":Z
    :catchall_16d
    move-exception v0

    move v4, v13

    move v5, v15

    goto/16 :goto_237

    .end local v15    # "needsDndChange":Z
    .restart local v5    # "needsDndChange":Z
    :catchall_172
    move-exception v0

    move v4, v13

    goto/16 :goto_237

    .line 988
    .end local v13    # "wasUndeleted":Z
    .restart local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .local v4, "wasUndeleted":Z
    .restart local v12    # "existing":Landroid/app/NotificationChannel;
    :cond_176
    :try_start_176
    iget-object v13, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/16 v14, 0x1388

    if-ge v13, v14, :cond_21e

    .line 992
    const/4 v3, 0x1

    .line 994
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v13

    if-ltz v13, :cond_216

    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v13

    const/4 v14, 0x5

    if-gt v13, v14, :cond_216

    .line 1000
    if-eqz p4, :cond_19d

    if-nez p5, :cond_19d

    .line 1001
    iget v13, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_199

    move v13, v2

    goto :goto_19a

    :cond_199
    move v13, v6

    :goto_19a
    invoke-virtual {v10, v13}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 1003
    :cond_19d
    if-eqz p4, :cond_1af

    .line 1004
    iget v13, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v10, v13}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 1005
    if-eqz v12, :cond_1ab

    .line 1006
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v13

    goto :goto_1ac

    .line 1007
    :cond_1ab
    const/4 v13, -0x1

    .line 1005
    :goto_1ac
    invoke-virtual {v10, v13}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 1009
    :cond_1af
    invoke-virtual {v1, v10}, Lcom/android/server/notification/PreferencesHelper;->clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V

    .line 1011
    iget-boolean v13, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-nez v13, :cond_1bd

    iget-boolean v13, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz v13, :cond_1bb

    goto :goto_1bd

    :cond_1bb
    move v13, v6

    goto :goto_1be

    :cond_1bd
    :goto_1bd
    move v13, v2

    :goto_1be
    invoke-virtual {v10, v13}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 1014
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v13

    if-ne v13, v2, :cond_1ca

    .line 1015
    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 1018
    :cond_1ca
    iget-boolean v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-nez v7, :cond_1d1

    .line 1019
    invoke-virtual {v10, v6}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 1021
    :cond_1d1
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 1024
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1ed

    .line 1025
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Tried to create a conversation channel without a preexisting parent"

    .line 1025
    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1030
    :cond_1ed
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v6

    iget-boolean v7, v1, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eq v6, v7, :cond_1ff

    .line 1032
    const/4 v5, 0x1

    .line 1034
    :cond_1ff
    invoke-direct {v1, v10, v8}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1036
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v2, v10, v9, v8}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    .line 1038
    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v12    # "existing":Landroid/app/NotificationChannel;
    :goto_20f
    monitor-exit v11
    :try_end_210
    .catchall {:try_start_176 .. :try_end_210} :catchall_236

    .line 1040
    if-eqz v5, :cond_215

    .line 1041
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    .line 1044
    :cond_215
    return v3

    .line 996
    .restart local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v12    # "existing":Landroid/app/NotificationChannel;
    :cond_216
    :try_start_216
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid importance level"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsPolicyFileChange":Z
    .end local v4    # "wasUndeleted":Z
    .end local v5    # "needsDndChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v2

    .line 989
    .restart local v3    # "needsPolicyFileChange":Z
    .restart local v4    # "wasUndeleted":Z
    .restart local v5    # "needsDndChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :cond_21e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "Limit exceed; cannot create more channels"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsPolicyFileChange":Z
    .end local v4    # "wasUndeleted":Z
    .end local v5    # "needsDndChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v2

    .line 916
    .end local v12    # "existing":Landroid/app/NotificationChannel;
    .restart local v3    # "needsPolicyFileChange":Z
    .restart local v4    # "wasUndeleted":Z
    .restart local v5    # "needsDndChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :cond_226
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Reserved id"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsPolicyFileChange":Z
    .end local v4    # "wasUndeleted":Z
    .end local v5    # "needsDndChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v2

    .line 910
    .restart local v3    # "needsPolicyFileChange":Z
    .restart local v4    # "wasUndeleted":Z
    .restart local v5    # "needsDndChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :cond_22e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid package"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsPolicyFileChange":Z
    .end local v4    # "wasUndeleted":Z
    .end local v5    # "needsDndChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v2

    .line 1038
    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v3    # "needsPolicyFileChange":Z
    .restart local v4    # "wasUndeleted":Z
    .restart local v5    # "needsDndChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :catchall_236
    move-exception v0

    :goto_237
    monitor-exit v11
    :try_end_238
    .catchall {:try_start_216 .. :try_end_238} :catchall_236

    throw v0
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
    .registers 18
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "fromTargetApp"    # Z

    .line 852
    move-object v1, p0

    move-object/from16 v8, p3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const/4 v3, 0x0

    .line 857
    .local v3, "needsDndChange":Z
    iget-object v9, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 858
    :try_start_25
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    .line 859
    .local v0, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v0, :cond_c8

    .line 862
    const/4 v4, 0x0

    if-eqz p4, :cond_44

    .line 863
    invoke-virtual {v8, v4}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 864
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/16 v6, 0x1770

    if-ge v5, v6, :cond_3c

    goto :goto_44

    .line 865
    :cond_3c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Limit exceed; cannot create more groups"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsDndChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "group":Landroid/app/NotificationChannelGroup;
    .end local p4    # "fromTargetApp":Z
    throw v2

    .line 868
    .restart local v3    # "needsDndChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "group":Landroid/app/NotificationChannelGroup;
    .restart local p4    # "fromTargetApp":Z
    :cond_44
    :goto_44
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    move-object v10, v5

    .line 869
    .local v10, "oldGroup":Landroid/app/NotificationChannelGroup;
    if-eqz v10, :cond_82

    .line 870
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 873
    if-eqz p4, :cond_72

    .line 874
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    invoke-virtual {v8, v5}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 875
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/app/NotificationChannelGroup;->unlockFields(I)V

    .line 876
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    goto :goto_82

    .line 879
    :cond_72
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v6

    if-eq v5, v6, :cond_82

    .line 880
    invoke-virtual {v8, v2}, Landroid/app/NotificationChannelGroup;->lockFields(I)V
    :try_end_7f
    .catchall {:try_start_25 .. :try_end_7f} :catchall_d1

    .line 881
    const/4 v3, 0x1

    move v11, v3

    goto :goto_83

    .line 885
    :cond_82
    :goto_82
    move v11, v3

    .end local v3    # "needsDndChange":Z
    .local v11, "needsDndChange":Z
    :goto_83
    :try_start_83
    invoke-virtual {v8, v10}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b0

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_c4

    move-object v12, p1

    :try_start_8e
    invoke-direct {p0, v3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 888
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    if-nez v10, :cond_9b

    move v6, v2

    goto :goto_9c

    :cond_9b
    move v6, v4

    :goto_9c
    if-eqz v10, :cond_a6

    .line 890
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    if-eqz v5, :cond_a6

    move v7, v2

    goto :goto_a7

    :cond_a6
    move v7, v4

    .line 888
    :goto_a7
    move-object v2, v3

    move-object/from16 v3, p3

    move v4, p2

    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroup(Landroid/app/NotificationChannelGroup;ILjava/lang/String;ZZ)V

    goto :goto_b1

    .line 885
    :cond_b0
    move-object v12, p1

    .line 892
    :goto_b1
    iget-object v2, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    nop

    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v10    # "oldGroup":Landroid/app/NotificationChannelGroup;
    monitor-exit v9
    :try_end_bc
    .catchall {:try_start_8e .. :try_end_bc} :catchall_c2

    .line 894
    if-eqz v11, :cond_c1

    .line 895
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    .line 897
    :cond_c1
    return-void

    .line 893
    :catchall_c2
    move-exception v0

    goto :goto_c6

    :catchall_c4
    move-exception v0

    move-object v12, p1

    :goto_c6
    move v3, v11

    goto :goto_d3

    .line 860
    .end local v11    # "needsDndChange":Z
    .restart local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v3    # "needsDndChange":Z
    :cond_c8
    move-object v12, p1

    :try_start_c9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid package"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsDndChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "group":Landroid/app/NotificationChannelGroup;
    .end local p4    # "fromTargetApp":Z
    throw v2

    .line 893
    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v3    # "needsDndChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "group":Landroid/app/NotificationChannelGroup;
    .restart local p4    # "fromTargetApp":Z
    :catchall_d1
    move-exception v0

    move-object v12, p1

    :goto_d3
    monitor-exit v9
    :try_end_d4
    .catchall {:try_start_c9 .. :try_end_d4} :catchall_d5

    throw v0

    :catchall_d5
    move-exception v0

    goto :goto_d3
.end method

.method public deleteConversations(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1552
    .local p3, "conversationIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1553
    .local v0, "deletedChannelIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1554
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1555
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_10

    .line 1556
    monitor-exit v1

    return-object v0

    .line 1558
    :cond_10
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1559
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v3, :cond_56

    .line 1560
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1561
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_53

    .line 1562
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 1563
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 1565
    invoke-direct {p0, v5, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 1566
    .local v6, "lm":Landroid/metrics/LogMaker;
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1568
    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1569
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v7, v5, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    .line 1571
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    .end local v6    # "lm":Landroid/metrics/LogMaker;
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1574
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_65

    .line 1575
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v1, :cond_64

    .line 1576
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    .line 1578
    :cond_64
    return-object v0

    .line 1574
    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 1197
    const/4 v0, 0x0

    .line 1198
    .local v0, "deletedChannel":Z
    const/4 v1, 0x0

    .line 1199
    .local v1, "channelBypassedDnd":Z
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1200
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v3

    .line 1201
    .local v3, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v3, :cond_e

    .line 1202
    const/4 v4, 0x0

    monitor-exit v2

    return v4

    .line 1204
    :cond_e
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1205
    .local v4, "channel":Landroid/app/NotificationChannel;
    if-eqz v4, :cond_22

    .line 1206
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    move v1, v5

    .line 1207
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z

    move-result v5

    move v0, v5

    .line 1209
    .end local v3    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v4    # "channel":Landroid/app/NotificationChannel;
    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_29

    .line 1210
    if-eqz v1, :cond_28

    .line 1211
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    .line 1213
    :cond_28
    return v0

    .line 1209
    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v3
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1404
    .local v0, "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    const/4 v1, 0x0

    .line 1405
    .local v1, "groupBypassedDnd":Z
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1406
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v3

    .line 1407
    .local v3, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v3, :cond_55

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_55

    .line 1411
    :cond_16
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 1412
    .local v4, "channelGroup":Landroid/app/NotificationChannelGroup;
    if-eqz v4, :cond_25

    .line 1413
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v5, v4, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroupDeleted(Landroid/app/NotificationChannelGroup;ILjava/lang/String;)V

    .line 1417
    :cond_25
    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1418
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2c
    if-ge v6, v5, :cond_4e

    .line 1419
    iget-object v7, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    .line 1420
    .local v7, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 1421
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v8

    or-int/2addr v1, v8

    .line 1422
    invoke-direct {p0, v7, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z

    .line 1423
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1418
    .end local v7    # "nc":Landroid/app/NotificationChannel;
    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 1426
    .end local v3    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v4    # "channelGroup":Landroid/app/NotificationChannelGroup;
    .end local v5    # "N":I
    .end local v6    # "i":I
    :cond_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_9 .. :try_end_4f} :catchall_57

    .line 1427
    if-eqz v1, :cond_54

    .line 1428
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    .line 1430
    :cond_54
    return-object v0

    .line 1408
    .restart local v3    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v2

    return-object v0

    .line 1426
    .end local v3    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_57
    move-exception v3

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_57

    throw v3
.end method

.method didUserEverDemoteInvalidMsgApp(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 792
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 793
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 794
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    monitor-exit v0

    return v2

    .line 795
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 1906
    .local p3, "pkgPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 1907
    const-wide v3, 0x20b00000002L

    :try_start_8
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1909
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_21

    .line 1910
    const-wide v3, 0x20b00000003L

    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1912
    return-void

    .line 1909
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v8
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 1892
    .local p4, "pkgPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "per-package config version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1895
    const-string v0, "PackagePreferences:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1896
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1897
    :try_start_24
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1898
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_3f

    .line 1899
    const-string v0, "Restored without uid:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1900
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1901
    return-void

    .line 1898
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONArray;
    .registers 11
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 2295
    .local p2, "pkgPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2296
    .local v0, "bans":Lorg/json/JSONArray;
    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->getPermissionBasedPackageBans(Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v1

    .line 2297
    .local v1, "packageBans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2298
    .local v3, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2299
    .local v4, "userId":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2300
    .local v5, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_39

    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 2301
    :cond_39
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2303
    .local v6, "banJson":Lorg/json/JSONObject;
    :try_start_3e
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2304
    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4a} :catch_4b

    .line 2307
    goto :goto_4f

    .line 2305
    :catch_4b
    move-exception v7

    .line 2306
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 2308
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_4f
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2310
    .end local v3    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "userId":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "banJson":Lorg/json/JSONObject;
    :cond_52
    goto :goto_11

    .line 2311
    :cond_53
    return-object v0
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 10
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 2354
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2355
    .local v0, "channels":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object v1

    .line 2356
    .local v1, "packageChannels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2357
    .local v3, "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2358
    .local v4, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_2b

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 2359
    :cond_2b
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2361
    .local v5, "channelCountJson":Lorg/json/JSONObject;
    :try_start_30
    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2362
    const-string v6, "channelCount"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3f} :catch_40

    .line 2365
    goto :goto_44

    .line 2363
    :catch_40
    move-exception v6

    .line 2364
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 2366
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_44
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2368
    .end local v3    # "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "channelCountJson":Lorg/json/JSONObject;
    :cond_47
    goto :goto_11

    .line 2369
    :cond_48
    return-object v0
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONObject;
    .registers 20
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 2195
    .local p2, "pkgPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v4, v0

    .line 2196
    .local v4, "ranking":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v5, v0

    .line 2198
    .local v5, "PackagePreferencess":Lorg/json/JSONArray;
    :try_start_12
    const-string/jumbo v0, "noUid"

    iget-object v6, v1, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_1e} :catch_1f

    .line 2201
    goto :goto_20

    .line 2199
    :catch_1f
    move-exception v0

    .line 2204
    :goto_20
    const/4 v0, 0x0

    .line 2205
    .local v0, "pkgsWithPermissionsToHandle":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    if-eqz v3, :cond_29

    .line 2206
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    goto :goto_2a

    .line 2205
    :cond_29
    move-object v6, v0

    .line 2209
    .end local v0    # "pkgsWithPermissionsToHandle":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .local v6, "pkgsWithPermissionsToHandle":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_2a
    iget-object v7, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 2210
    :try_start_2d
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v8, v0

    .line 2211
    .local v8, "N":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_36
    const/4 v10, 0x3

    const/4 v11, 0x0

    if-ge v9, v8, :cond_12d

    .line 2212
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-object v12, v0

    .line 2213
    .local v12, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_4d

    iget-object v0, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 2214
    :cond_4d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_52
    .catchall {:try_start_2d .. :try_end_52} :catchall_197

    move-object v13, v0

    .line 2216
    .local v13, "PackagePreferences":Lorg/json/JSONObject;
    :try_start_53
    const-string/jumbo v0, "userId"

    iget v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v13, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2217
    const-string/jumbo v0, "packageName"

    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v13, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2218
    new-instance v0, Landroid/util/Pair;

    iget v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v0, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2219
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v3, :cond_9a

    .line 2220
    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9a

    .line 2221
    const-string v14, "importance"

    .line 2223
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_8f

    .line 2224
    goto :goto_90

    :cond_8f
    move v10, v11

    .line 2222
    :goto_90
    invoke-static {v10}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v10

    .line 2221
    invoke-virtual {v13, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2225
    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2227
    :cond_9a
    iget v10, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v10, :cond_aa

    .line 2228
    const-string/jumbo v10, "priority"

    iget v11, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 2229
    invoke-static {v11}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v11

    .line 2228
    invoke-virtual {v13, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2231
    :cond_aa
    iget v10, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/16 v11, -0x3e8

    if-eq v10, v11, :cond_bc

    .line 2232
    const-string/jumbo v10, "visibility"

    iget v11, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 2233
    invoke-static {v11}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v11

    .line 2232
    invoke-virtual {v13, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2235
    :cond_bc
    iget-boolean v10, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_cd

    .line 2236
    const-string/jumbo v10, "showBadge"

    iget-boolean v11, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v13, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2238
    :cond_cd
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 2239
    .local v10, "channels":Lorg/json/JSONArray;
    iget-object v11, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_dc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationChannel;

    .line 2240
    .local v14, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2241
    nop

    .end local v14    # "channel":Landroid/app/NotificationChannel;
    goto :goto_dc

    .line 2242
    :cond_f1
    const-string v11, "channels"

    invoke-virtual {v13, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2243
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 2244
    .local v11, "groups":Lorg/json/JSONArray;
    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_105
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationChannelGroup;

    .line 2245
    .local v15, "group":Landroid/app/NotificationChannelGroup;
    move-object/from16 v16, v0

    .end local v0    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v16, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2246
    move-object/from16 v0, v16

    .end local v15    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_105

    .line 2247
    .end local v16    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v0    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_11d
    move-object/from16 v16, v0

    .end local v0    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v16    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v0, "groups"

    invoke-virtual {v13, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_124
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_124} :catch_125
    .catchall {:try_start_53 .. :try_end_124} :catchall_197

    .line 2250
    .end local v10    # "channels":Lorg/json/JSONArray;
    .end local v11    # "groups":Lorg/json/JSONArray;
    .end local v16    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_126

    .line 2248
    :catch_125
    move-exception v0

    .line 2251
    :goto_126
    :try_start_126
    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2211
    .end local v12    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v13    # "PackagePreferences":Lorg/json/JSONObject;
    :cond_129
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_36

    .line 2254
    .end local v8    # "N":I
    .end local v9    # "i":I
    :cond_12d
    monitor-exit v7
    :try_end_12e
    .catchall {:try_start_126 .. :try_end_12e} :catchall_197

    .line 2257
    if-eqz v6, :cond_18f

    .line 2258
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_134
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/util/Pair;

    .line 2259
    .local v8, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v2, :cond_14d

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 2260
    :cond_14d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v9, v0

    .line 2262
    .local v9, "PackagePreferences":Lorg/json/JSONObject;
    :try_start_153
    const-string/jumbo v0, "userId"

    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v9, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2263
    const-string/jumbo v0, "packageName"

    iget-object v12, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2264
    const-string v0, "importance"

    .line 2266
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_181

    .line 2267
    move v12, v10

    goto :goto_182

    :cond_181
    move v12, v11

    .line 2265
    :goto_182
    invoke-static {v12}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v12

    .line 2264
    invoke-virtual {v9, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_189
    .catch Lorg/json/JSONException; {:try_start_153 .. :try_end_189} :catch_18a

    .line 2270
    goto :goto_18b

    .line 2268
    :catch_18a
    move-exception v0

    .line 2271
    :goto_18b
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2273
    .end local v8    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9    # "PackagePreferences":Lorg/json/JSONObject;
    :cond_18e
    goto :goto_134

    .line 2277
    :cond_18f
    :try_start_18f
    const-string v0, "PackagePreferencess"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_194
    .catch Lorg/json/JSONException; {:try_start_18f .. :try_end_194} :catch_195

    .line 2280
    goto :goto_196

    .line 2278
    :catch_195
    move-exception v0

    .line 2281
    :goto_196
    return-object v4

    .line 2254
    :catchall_197
    move-exception v0

    :try_start_198
    monitor-exit v7
    :try_end_199
    .catchall {:try_start_198 .. :try_end_199} :catchall_197

    throw v0
.end method

.method public getAppLockedFields(Ljava/lang/String;I)I
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 713
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 714
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    monitor-exit v0

    return v1

    .line 715
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1659
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    const/4 v0, 0x0

    .line 1661
    .local v0, "blockedCount":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1662
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1663
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_f

    .line 1664
    monitor-exit v1

    return v0

    .line 1666
    :cond_f
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1667
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_31

    .line 1668
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1669
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-nez v6, :cond_2e

    .line 1670
    add-int/lit8 v0, v0, 0x1

    .line 1667
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1673
    .end local v4    # "i":I
    :cond_31
    monitor-exit v1

    return v0

    .line 1674
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "N":I
    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v2
.end method

.method public getBubblePreference(Ljava/lang/String;I)I
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 707
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 708
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    monitor-exit v0

    return v1

    .line 709
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "conversationId"    # Ljava/lang/String;
    .param p5, "returnParentIfNoConversationChannel"    # Z
    .param p6, "includeDeleted"    # Z

    .line 1138
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1140
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1141
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_f

    .line 1142
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1144
    :cond_f
    if-nez p3, :cond_15

    .line 1145
    const-string/jumbo v2, "miscellaneous"

    move-object p3, v2

    .line 1147
    :cond_15
    const/4 v2, 0x0

    .line 1148
    .local v2, "channel":Landroid/app/NotificationChannel;
    if-eqz p4, :cond_1d

    .line 1150
    invoke-direct {p0, v1, p3, p4, p6}, Lcom/android/server/notification/PreferencesHelper;->findConversationChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v3

    move-object v2, v3

    .line 1152
    :cond_1d
    if-nez v2, :cond_35

    if-eqz p5, :cond_35

    .line 1154
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1155
    .local v3, "nc":Landroid/app/NotificationChannel;
    if-eqz v3, :cond_35

    if-nez p6, :cond_33

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_35

    .line 1156
    :cond_33
    monitor-exit v0

    return-object v3

    .line 1159
    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :cond_35
    monitor-exit v0

    return-object v2

    .line 1160
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public getConversations(Landroid/util/IntArray;Z)Ljava/util/ArrayList;
    .registers 15
    .param p1, "userIds"    # Landroid/util/IntArray;
    .param p2, "onlyImportant"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IntArray;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 1467
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1468
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    .local v1, "conversations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ConversationChannelWrapper;>;"
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1470
    .local v3, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v4

    if-ltz v4, :cond_ae

    .line 1471
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1472
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_31
    if-ge v5, v4, :cond_ae

    .line 1473
    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1474
    .local v6, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ab

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_ab

    .line 1475
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v7

    if-nez v7, :cond_ab

    .line 1476
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v7

    if-nez v7, :cond_59

    if-nez p2, :cond_ab

    .line 1477
    :cond_59
    new-instance v7, Landroid/service/notification/ConversationChannelWrapper;

    invoke-direct {v7}, Landroid/service/notification/ConversationChannelWrapper;-><init>()V

    .line 1479
    .local v7, "conversation":Landroid/service/notification/ConversationChannelWrapper;
    iget-object v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/service/notification/ConversationChannelWrapper;->setPkg(Ljava/lang/String;)V

    .line 1480
    iget v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v7, v8}, Landroid/service/notification/ConversationChannelWrapper;->setUid(I)V

    .line 1481
    invoke-virtual {v7, v6}, Landroid/service/notification/ConversationChannelWrapper;->setNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1482
    iget-object v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    .line 1483
    .local v8, "parent":Landroid/app/NotificationChannel;
    if-nez v8, :cond_7b

    .line 1484
    const/4 v9, 0x0

    goto :goto_7f

    .line 1485
    :cond_7b
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 1483
    :goto_7f
    invoke-virtual {v7, v9}, Landroid/service/notification/ConversationChannelWrapper;->setParentChannelLabel(Ljava/lang/CharSequence;)V

    .line 1486
    const/4 v9, 0x0

    .line 1487
    .local v9, "blockedByGroup":Z
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a6

    .line 1488
    iget-object v10, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    .line 1489
    .local v10, "group":Landroid/app/NotificationChannelGroup;
    if-eqz v10, :cond_a6

    .line 1490
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v11

    if-eqz v11, :cond_9f

    .line 1491
    const/4 v9, 0x1

    goto :goto_a6

    .line 1493
    :cond_9f
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/service/notification/ConversationChannelWrapper;->setGroupLabel(Ljava/lang/CharSequence;)V

    .line 1497
    .end local v10    # "group":Landroid/app/NotificationChannelGroup;
    :cond_a6
    :goto_a6
    if-nez v9, :cond_ab

    .line 1498
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1472
    .end local v6    # "nc":Landroid/app/NotificationChannel;
    .end local v7    # "conversation":Landroid/service/notification/ConversationChannelWrapper;
    .end local v8    # "parent":Landroid/app/NotificationChannel;
    .end local v9    # "blockedByGroup":Z
    :cond_ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 1503
    .end local v3    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v4    # "N":I
    .end local v5    # "i":I
    :cond_ae
    goto/16 :goto_12

    .line 1505
    :cond_b0
    monitor-exit v0

    return-object v1

    .line 1506
    .end local v1    # "conversations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ConversationChannelWrapper;>;"
    :catchall_b2
    move-exception v1

    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_3 .. :try_end_b4} :catchall_b2

    throw v1
.end method

.method public getConversations(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 1510
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1512
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1513
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_13

    .line 1514
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object v2

    .line 1516
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    .local v2, "conversations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ConversationChannelWrapper;>;"
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1518
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    if-ge v4, v3, :cond_90

    .line 1519
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1520
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8d

    .line 1521
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_8d

    .line 1522
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v6

    if-nez v6, :cond_8d

    .line 1523
    new-instance v6, Landroid/service/notification/ConversationChannelWrapper;

    invoke-direct {v6}, Landroid/service/notification/ConversationChannelWrapper;-><init>()V

    .line 1524
    .local v6, "conversation":Landroid/service/notification/ConversationChannelWrapper;
    iget-object v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setPkg(Ljava/lang/String;)V

    .line 1525
    iget v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setUid(I)V

    .line 1526
    invoke-virtual {v6, v5}, Landroid/service/notification/ConversationChannelWrapper;->setNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1527
    iget-object v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1528
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 1527
    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setParentChannelLabel(Ljava/lang/CharSequence;)V

    .line 1529
    const/4 v7, 0x0

    .line 1530
    .local v7, "blockedByGroup":Z
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_88

    .line 1531
    iget-object v8, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannelGroup;

    .line 1532
    .local v8, "group":Landroid/app/NotificationChannelGroup;
    if-eqz v8, :cond_88

    .line 1533
    invoke-virtual {v8}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v9

    if-eqz v9, :cond_81

    .line 1534
    const/4 v7, 0x1

    goto :goto_88

    .line 1536
    :cond_81
    invoke-virtual {v8}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/service/notification/ConversationChannelWrapper;->setGroupLabel(Ljava/lang/CharSequence;)V

    .line 1540
    .end local v8    # "group":Landroid/app/NotificationChannelGroup;
    :cond_88
    :goto_88
    if-nez v7, :cond_8d

    .line 1541
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    .end local v6    # "conversation":Landroid/service/notification/ConversationChannelWrapper;
    .end local v7    # "blockedByGroup":Z
    :cond_8d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 1546
    .end local v4    # "i":I
    :cond_90
    monitor-exit v0

    return-object v2

    .line 1547
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "conversations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ConversationChannelWrapper;>;"
    .end local v3    # "N":I
    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_6 .. :try_end_94} :catchall_92

    throw v1
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1640
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    const/4 v0, 0x0

    .line 1642
    .local v0, "deletedCount":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1643
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1644
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_f

    .line 1645
    monitor-exit v1

    return v0

    .line 1647
    :cond_f
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1648
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_2b

    .line 1649
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1650
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 1651
    add-int/lit8 v0, v0, 0x1

    .line 1648
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1654
    .end local v4    # "i":I
    :cond_2b
    monitor-exit v1

    return v0

    .line 1655
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "N":I
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public getGroupForChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 1448
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1449
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1450
    .local v1, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_2f

    .line 1451
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 1452
    .local v2, "nc":Landroid/app/NotificationChannel;
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1453
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1454
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 1455
    .local v3, "group":Landroid/app/NotificationChannelGroup;
    if-eqz v3, :cond_2f

    .line 1456
    monitor-exit v0

    return-object v3

    .line 1461
    .end local v1    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "nc":Landroid/app/NotificationChannel;
    .end local v3    # "group":Landroid/app/NotificationChannelGroup;
    :cond_2f
    monitor-exit v0

    .line 1462
    const/4 v0, 0x0

    return-object v0

    .line 1461
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .line 1130
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 7
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1346
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1348
    :try_start_6
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1349
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_f

    .line 1350
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1352
    :cond_f
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    monitor-exit v0

    return-object v2

    .line 1353
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .line 1323
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1325
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1326
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_56

    if-eqz p3, :cond_56

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_56

    .line 1329
    :cond_17
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v2

    .line 1330
    .local v2, "group":Landroid/app/NotificationChannelGroup;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 1331
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1332
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    if-ge v4, v3, :cond_54

    .line 1333
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1334
    .local v5, "nc":Landroid/app/NotificationChannel;
    if-nez p4, :cond_44

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_51

    .line 1335
    :cond_44
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 1336
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1332
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 1340
    .end local v4    # "i":I
    :cond_54
    monitor-exit v0

    return-object v2

    .line 1327
    .end local v2    # "group":Landroid/app/NotificationChannelGroup;
    .end local v3    # "N":I
    :cond_56
    :goto_56
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1341
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;
    .registers 18
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .param p4, "includeNonGrouped"    # Z
    .param p5, "includeEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1359
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v0

    .line 1361
    .local v1, "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1362
    :try_start_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    .line 1363
    .local v0, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v0, :cond_19

    .line 1364
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 1366
    :cond_19
    new-instance v4, Landroid/app/NotificationChannelGroup;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1367
    .local v4, "nonGrouped":Landroid/app/NotificationChannelGroup;
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1368
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_26
    if-ge v7, v6, :cond_80

    .line 1369
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    .line 1370
    .local v8, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_38

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v9

    if-nez v9, :cond_7d

    .line 1371
    :cond_38
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7a

    .line 1372
    iget-object v9, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7d

    .line 1373
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    .line 1374
    .local v9, "ncg":Landroid/app/NotificationChannelGroup;
    if-nez v9, :cond_76

    .line 1375
    iget-object v10, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v10

    move-object v9, v10

    .line 1376
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 1377
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    :cond_76
    invoke-virtual {v9, v8}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1381
    .end local v9    # "ncg":Landroid/app/NotificationChannelGroup;
    goto :goto_7d

    .line 1383
    :cond_7a
    invoke-virtual {v4, v8}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1368
    .end local v8    # "nc":Landroid/app/NotificationChannel;
    :cond_7d
    :goto_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 1387
    .end local v7    # "i":I
    :cond_80
    if-eqz p4, :cond_8f

    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8f

    .line 1388
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    :cond_8f
    if-eqz p5, :cond_b9

    .line 1391
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    .line 1392
    .local v7, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b8

    .line 1393
    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    .end local v7    # "group":Landroid/app/NotificationChannelGroup;
    :cond_b8
    goto :goto_9b

    .line 1397
    :cond_b9
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v3

    return-object v5

    .line 1398
    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v4    # "nonGrouped":Landroid/app/NotificationChannelGroup;
    .end local v6    # "N":I
    :catchall_c9
    move-exception v0

    monitor-exit v3
    :try_end_cb
    .catchall {:try_start_d .. :try_end_cb} :catchall_c9

    throw v0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Collection<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1437
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1438
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1439
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_10

    .line 1440
    monitor-exit v1

    return-object v0

    .line 1442
    :cond_10
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1443
    nop

    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v1

    .line 1444
    return-object v0

    .line 1443
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1584
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1586
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1587
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1588
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_17

    .line 1589
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1591
    :cond_17
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1592
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v3, :cond_36

    .line 1593
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1594
    .local v5, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_30

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_33

    .line 1595
    :cond_30
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1598
    .end local v4    # "i":I
    :cond_36
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    .line 1599
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "N":I
    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public getNotificationChannelsByConversationId(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1177
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1181
    :try_start_e
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1182
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_16

    .line 1183
    monitor-exit v1

    return-object v0

    .line 1185
    :cond_16
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1186
    .local v4, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1187
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_3f

    .line 1188
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    .end local v4    # "nc":Landroid/app/NotificationChannel;
    :cond_3f
    goto :goto_20

    .line 1191
    :cond_40
    monitor-exit v1

    return-object v0

    .line 1192
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_e .. :try_end_44} :catchall_42

    throw v2
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1608
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1609
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 1610
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1609
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1611
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_3c

    .line 1612
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1613
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v2, v4}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1614
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    .end local v4    # "channel":Landroid/app/NotificationChannel;
    :cond_3b
    goto :goto_20

    .line 1618
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_43

    .line 1619
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 1618
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2
.end method

.method public getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I

    .line 1783
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1784
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1786
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v2, 0x0

    if-eqz v1, :cond_24

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez v3, :cond_f

    goto :goto_24

    .line 1789
    :cond_f
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-nez v3, :cond_1c

    goto :goto_22

    .line 1792
    :cond_1c
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1790
    :cond_22
    :goto_22
    monitor-exit v0

    return-object v2

    .line 1787
    :cond_24
    :goto_24
    monitor-exit v0

    return-object v2

    .line 1793
    .end local v1    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public getPackageBans()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2315
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2316
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2317
    .local v1, "N":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2318
    .local v2, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_2b

    .line 2319
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2320
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_28

    .line 2321
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2325
    .end local v3    # "i":I
    :cond_2b
    monitor-exit v0

    return-object v2

    .line 2326
    .end local v1    # "N":I
    .end local v2    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method getPackagePriority(Ljava/lang/String;I)I
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 838
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 839
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    monitor-exit v0

    return v1

    .line 840
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getPackageVisibility(Ljava/lang/String;I)I
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 844
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 845
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    monitor-exit v0

    return v1

    .line 846
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method protected getPermissionBasedPackageBans(Landroid/util/ArrayMap;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2333
    .local p1, "pkgPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2334
    .local v0, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_37

    .line 2335
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2336
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_36

    .line 2337
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2339
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_36
    goto :goto_f

    .line 2341
    :cond_37
    return-object v0
.end method

.method hasSentInvalidMsg(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 776
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 777
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 778
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    monitor-exit v0

    return v2

    .line 779
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method hasSentValidBubble(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 809
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 810
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 811
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    monitor-exit v0

    return v2

    .line 812
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method hasSentValidMsg(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 784
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 785
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 786
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    monitor-exit v0

    return v2

    .line 787
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 741
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 742
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 743
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    monitor-exit v0

    return v2

    .line 744
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 8
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I
    .param p3, "potentialDelegatePkg"    # Ljava/lang/String;
    .param p4, "potentialDelegateUid"    # I

    .line 1851
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1852
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1854
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_11

    invoke-virtual {v1, p3, p4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isValidDelegate(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 1856
    .end local v1    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;

    .line 824
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 825
    return v0

    .line 827
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 828
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 829
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 830
    .local v3, "group":Landroid/app/NotificationChannelGroup;
    if-nez v3, :cond_17

    .line 831
    monitor-exit v1

    return v0

    .line 833
    :cond_17
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 834
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "group":Landroid/app/NotificationChannelGroup;
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method isImportanceLocked(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 816
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 817
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 818
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-nez v2, :cond_12

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v2, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v2, 0x1

    :goto_13
    monitor-exit v0

    return v2

    .line 819
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isInInvalidMsgState(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 734
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 735
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 736
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    if-eqz v2, :cond_11

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    if-nez v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 737
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isMediaNotificationFilteringEnabled()Z
    .registers 2

    .line 2543
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    return v0
.end method

.method lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 5
    .param p1, "original"    # Landroid/app/NotificationChannel;
    .param p2, "update"    # Landroid/app/NotificationChannel;

    .line 1861
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eq v0, v1, :cond_e

    .line 1862
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1864
    :cond_e
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 1865
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1867
    :cond_1c
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 1868
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1870
    :cond_2a
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    if-ne v0, v1, :cond_3e

    .line 1871
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    if-eq v0, v1, :cond_43

    .line 1872
    :cond_3e
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1874
    :cond_43
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 1875
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1877
    :cond_56
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1878
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eq v0, v1, :cond_73

    .line 1879
    :cond_6e
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1881
    :cond_73
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    if-eq v0, v1, :cond_82

    .line 1882
    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1884
    :cond_82
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v1

    if-eq v0, v1, :cond_91

    .line 1885
    const/16 v0, 0x100

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1887
    :cond_91
    return-void
.end method

.method protected onLocaleChanged(Landroid/content/Context;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 2402
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2403
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2404
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_43

    .line 2405
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2406
    .local v3, "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_40

    .line 2407
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2409
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 2411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104032d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2410
    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 2404
    .end local v3    # "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2416
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_43
    monitor-exit v0

    .line 2417
    return-void

    .line 2416
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public onPackagesChanged(ZI[Ljava/lang/String;[I)Z
    .registers 16
    .param p1, "removingPackage"    # Z
    .param p2, "changeUserId"    # I
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidList"    # [I

    .line 2421
    const/4 v0, 0x0

    if-eqz p3, :cond_f5

    array-length v1, p3

    if-nez v1, :cond_8

    goto/16 :goto_f5

    .line 2424
    :cond_8
    const/4 v1, 0x0

    .line 2425
    .local v1, "updated":Z
    if-eqz p1, :cond_37

    .line 2427
    array-length v0, p3

    array-length v2, p4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2428
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_35

    .line 2429
    aget-object v3, p3, v2

    .line 2430
    .local v3, "pkg":Ljava/lang/String;
    aget v4, p4, v2

    .line 2431
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 2432
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2433
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_32

    .line 2434
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v3, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    const/4 v1, 0x1

    .line 2428
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2433
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :catchall_32
    move-exception v6

    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v6

    .line 2437
    .end local v0    # "size":I
    .end local v2    # "i":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_35
    goto/16 :goto_ef

    .line 2438
    :cond_37
    array-length v2, p3

    move v3, v0

    :goto_39
    if-ge v3, v2, :cond_ef

    aget-object v4, p3, v3

    .line 2440
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 2441
    invoke-static {v4, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2442
    .local v5, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v5, :cond_cc

    .line 2444
    :try_start_4b
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2445
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v4, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_61} :catch_b1

    .line 2447
    :try_start_61
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v8, v9}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_ae

    .line 2449
    :try_start_6f
    iget-boolean v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_71} :catch_b1

    if-eqz v6, :cond_ac

    .line 2451
    :try_start_73
    new-instance v6, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2452
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v9, :cond_83

    const/4 v9, 0x1

    goto :goto_84

    :cond_83
    move v9, v0

    .line 2454
    :goto_84
    invoke-direct {p0, v5}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/notification/PermissionHelper$PackagePermission;-><init>(Ljava/lang/String;IZZ)V

    .line 2455
    .local v6, "p":Lcom/android/server/notification/PermissionHelper$PackagePermission;
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v7, v6}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_90} :catch_91

    .line 2458
    .end local v6    # "p":Lcom/android/server/notification/PermissionHelper$PackagePermission;
    goto :goto_ac

    .line 2456
    :catch_91
    move-exception v6

    .line 2457
    .local v6, "e":Ljava/lang/Exception;
    :try_start_92
    const-string v7, "NotificationPrefHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could not migrate setting for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_ac} :catch_b1

    .line 2460
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_ac
    :goto_ac
    const/4 v1, 0x1

    .line 2463
    goto :goto_cc

    .line 2448
    :catchall_ae
    move-exception v7

    :try_start_af
    monitor-exit v6
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    .end local v1    # "updated":Z
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "removingPackage":Z
    .end local p2    # "changeUserId":I
    .end local p3    # "pkgList":[Ljava/lang/String;
    .end local p4    # "uidList":[I
    :try_start_b0
    throw v7
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b1} :catch_b1

    .line 2461
    .restart local v1    # "updated":Z
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "removingPackage":Z
    .restart local p2    # "changeUserId":I
    .restart local p3    # "pkgList":[Ljava/lang/String;
    .restart local p4    # "uidList":[I
    :catch_b1
    move-exception v6

    .line 2462
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v7, "NotificationPrefHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could not restore "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2467
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_cc
    :goto_cc
    :try_start_cc
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_cf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cc .. :try_end_cf} :catch_ea

    .line 2468
    :try_start_cf
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 2469
    invoke-virtual {v7, v4, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v7

    .line 2468
    invoke-direct {p0, v4, v7}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v7

    .line 2470
    .local v7, "fullPackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v7, :cond_e5

    .line 2471
    invoke-direct {p0, v7}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v8

    or-int/2addr v1, v8

    .line 2472
    invoke-direct {p0, v7}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v8

    or-int/2addr v1, v8

    .line 2474
    .end local v7    # "fullPackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_e5
    monitor-exit v6

    .line 2476
    goto :goto_eb

    .line 2474
    :catchall_e7
    move-exception v7

    monitor-exit v6
    :try_end_e9
    .catchall {:try_start_cf .. :try_end_e9} :catchall_e7

    .end local v1    # "updated":Z
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "removingPackage":Z
    .end local p2    # "changeUserId":I
    .end local p3    # "pkgList":[Ljava/lang/String;
    .end local p4    # "uidList":[I
    :try_start_e9
    throw v7
    :try_end_ea
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e9 .. :try_end_ea} :catch_ea

    .line 2475
    .restart local v1    # "updated":Z
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "removingPackage":Z
    .restart local p2    # "changeUserId":I
    .restart local p3    # "pkgList":[Ljava/lang/String;
    .restart local p4    # "uidList":[I
    :catch_ea
    move-exception v6

    .line 2438
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :goto_eb
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_39

    .line 2480
    :cond_ef
    :goto_ef
    if-eqz v1, :cond_f4

    .line 2481
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2483
    :cond_f4
    return v1

    .line 2422
    .end local v1    # "updated":Z
    :cond_f5
    :goto_f5
    return v0
.end method

.method public onUserRemoved(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 2390
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2391
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2392
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_25

    .line 2393
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2394
    .local v3, "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_22

    .line 2395
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2392
    .end local v3    # "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 2398
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_25
    monitor-exit v0

    .line 2399
    return-void

    .line 2398
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1629
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1630
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1631
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v4, "miscellaneous"

    .line 1632
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1633
    monitor-exit v0

    return v3

    .line 1635
    :cond_1d
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1636
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 1233
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1236
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1237
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_11

    .line 1238
    monitor-exit v0

    return-void

    .line 1240
    :cond_11
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    nop

    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v0

    .line 1242
    return-void

    .line 1241
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public permanentlyDeleteNotificationChannels(Ljava/lang/String;I)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1246
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1248
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1249
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_e

    .line 1250
    monitor-exit v0

    return-void

    .line 1252
    :cond_e
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1253
    .local v2, "N":I
    move v3, v2

    .local v3, "i":I
    :goto_17
    if-ltz v3, :cond_32

    .line 1254
    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1255
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 1256
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    .end local v4    # "key":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 1259
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_32
    monitor-exit v0

    .line 1260
    return-void

    .line 1259
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public pullPackageChannelGroupPreferencesStats(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 2167
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2168
    const/4 v1, 0x0

    .line 2169
    .local v1, "totalGroupsPulled":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_7d

    .line 2170
    const/16 v3, 0x3e8

    if-le v1, v3, :cond_12

    .line 2171
    goto :goto_7d

    .line 2173
    :cond_12
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2174
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 2175
    .local v6, "groupChannel":Landroid/app/NotificationChannelGroup;
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_35

    .line 2176
    goto :goto_7a

    .line 2178
    :cond_35
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    const/16 v8, 0x2759

    .line 2179
    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    .line 2180
    .local v7, "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2181
    const/4 v8, 0x1

    invoke-virtual {v7, v8, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2182
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2183
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2184
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2185
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2186
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2187
    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2188
    nop

    .end local v6    # "groupChannel":Landroid/app/NotificationChannelGroup;
    .end local v7    # "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    goto :goto_24

    .line 2169
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2190
    .end local v1    # "totalGroupsPulled":I
    .end local v2    # "i":I
    :cond_7d
    :goto_7d
    monitor-exit v0

    .line 2191
    return-void

    .line 2190
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_5 .. :try_end_81} :catchall_7f

    throw v1
.end method

.method public pullPackageChannelPreferencesStats(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 2132
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2133
    const/4 v1, 0x0

    .line 2134
    .local v1, "totalChannelsPulled":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_9f

    .line 2135
    const/16 v3, 0x7d0

    if-le v1, v3, :cond_13

    .line 2136
    goto/16 :goto_9f

    .line 2138
    :cond_13
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2139
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 2140
    .local v6, "channel":Landroid/app/NotificationChannel;
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_36

    .line 2141
    goto :goto_9b

    .line 2143
    :cond_36
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    const/16 v8, 0x2758

    .line 2144
    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    .line 2145
    .local v7, "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2146
    const/4 v8, 0x1

    invoke-virtual {v7, v8, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2147
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2148
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2149
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2150
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2151
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2152
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2153
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_80

    goto :goto_81

    :cond_80
    const/4 v8, 0x0

    :goto_81
    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2154
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2155
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2156
    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2157
    nop

    .end local v6    # "channel":Landroid/app/NotificationChannel;
    .end local v7    # "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    goto :goto_25

    .line 2134
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_9b
    :goto_9b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 2159
    .end local v1    # "totalChannelsPulled":I
    .end local v2    # "i":I
    :cond_9f
    :goto_9f
    monitor-exit v0

    .line 2160
    return-void

    .line 2159
    :catchall_a1
    move-exception v1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_5 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method public pullPackagePreferencesStats(Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 2061
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    .local p2, "pkgPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    const/4 v0, 0x0

    .line 2062
    .local v0, "pkgsWithPermissionsToHandle":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    if-eqz p2, :cond_7

    .line 2063
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2065
    :cond_7
    const/4 v1, 0x0

    .line 2066
    .local v1, "pulledEvents":I
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2067
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    :try_start_c
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x3

    const/16 v6, 0x2757

    const/16 v7, 0x3e8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v3, v4, :cond_8b

    .line 2068
    if-le v1, v7, :cond_1e

    .line 2069
    goto :goto_8b

    .line 2071
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 2072
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v4}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v4

    .line 2073
    invoke-virtual {v4, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v4

    .line 2074
    .local v4, "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2075
    .local v6, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v4, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2076
    invoke-virtual {v4, v9, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2080
    const/4 v7, 0x0

    .line 2084
    .local v7, "importanceIsUserSet":Z
    const/4 v9, 0x0

    .line 2085
    .local v9, "importance":I
    new-instance v10, Landroid/util/Pair;

    iget v11, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2086
    .local v10, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p2, :cond_70

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_70

    .line 2087
    invoke-virtual {p2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 2088
    .local v11, "permissionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_62

    .line 2089
    goto :goto_63

    :cond_62
    move v5, v8

    :goto_63
    move v9, v5

    .line 2091
    iget-object v5, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v7, v5

    .line 2093
    invoke-interface {v0, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2095
    .end local v11    # "permissionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    :cond_70
    invoke-virtual {v4, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2097
    iget v5, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v4, v5}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2098
    iget v5, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    invoke-virtual {v4, v5}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2099
    invoke-virtual {v4, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2100
    invoke-virtual {v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    nop

    .end local v4    # "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .end local v6    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v7    # "importanceIsUserSet":Z
    .end local v9    # "importance":I
    .end local v10    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2102
    .end local v3    # "i":I
    :cond_8b
    :goto_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_c .. :try_end_8c} :catchall_f3

    .line 2105
    if-eqz p2, :cond_f2

    .line 2106
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_92
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2107
    .local v3, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-le v1, v7, :cond_a1

    .line 2108
    goto :goto_f2

    .line 2110
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    .line 2111
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v4}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v4

    .line 2112
    invoke-virtual {v4, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v4

    .line 2113
    .restart local v4    # "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    iget-object v10, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2114
    invoke-virtual {v4, v9, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2115
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_cd

    move v10, v5

    goto :goto_ce

    :cond_cd
    move v10, v8

    :goto_ce
    invoke-virtual {v4, v10}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2119
    const/16 v10, -0x3e8

    invoke-virtual {v4, v10}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2120
    invoke-virtual {v4, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2121
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2122
    invoke-virtual {v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2123
    .end local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    goto :goto_92

    .line 2125
    :cond_f2
    :goto_f2
    return-void

    .line 2102
    :catchall_f3
    move-exception v3

    :try_start_f4
    monitor-exit v2
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v3
.end method

.method public readXml(Landroid/util/TypedXmlPullParser;ZI)V
    .registers 24
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "forRestore"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    .line 224
    .local v0, "type":I
    const/4 v11, 0x2

    if-eq v0, v11, :cond_c

    return-void

    .line 225
    :cond_c
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v2, "ranking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return-void

    .line 228
    :cond_1a
    const-string/jumbo v2, "version"

    const/4 v3, -0x1

    const/4 v12, 0x0

    invoke-interface {v10, v12, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    .line 229
    .local v13, "xmlVersion":I
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v13, v15, :cond_29

    move v6, v15

    goto :goto_2a

    :cond_29
    move v6, v14

    .line 230
    .local v6, "upgradeForBubbles":Z
    :goto_2a
    const/4 v7, 0x3

    if-ge v13, v7, :cond_2f

    move v2, v15

    goto :goto_30

    :cond_2f
    move v2, v14

    :goto_30
    move/from16 v16, v2

    .line 231
    .local v16, "migrateToPermission":Z
    iget-boolean v2, v9, Lcom/android/server/notification/PreferencesHelper;->mShowReviewPermissionsNotification:Z

    if-eqz v2, :cond_45

    const/4 v2, 0x4

    if-ge v13, v2, :cond_45

    .line 236
    iget-object v2, v9, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "review_permissions_notification_state"

    invoke-static {v2, v3, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    :cond_45
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v8, "pkgPerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/PermissionHelper$PackagePermission;>;"
    iget-object v4, v9, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v4

    move-object v2, v1

    move v1, v0

    .line 242
    .end local v0    # "type":I
    .local v1, "type":I
    .local v2, "tag":Ljava/lang/String;
    :goto_4f
    :try_start_4f
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_13d

    move v3, v0

    .end local v1    # "type":I
    .local v3, "type":I
    if-eq v0, v15, :cond_fe

    .line 243
    :try_start_56
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_f6

    move-object v2, v0

    .line 244
    if-ne v3, v7, :cond_72

    :try_start_5d
    const-string/jumbo v0, "ranking"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_6c

    if-eqz v0, :cond_72

    .line 245
    move/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_102

    .line 263
    :catchall_6c
    move-exception v0

    move v1, v3

    move-object/from16 v19, v4

    goto/16 :goto_140

    .line 247
    :cond_72
    if-ne v3, v11, :cond_e6

    .line 248
    :try_start_74
    const-string/jumbo v0, "silent_status_icons"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_dc

    if-eqz v0, :cond_9a

    .line 249
    if-eqz p2, :cond_8a

    if-eqz p3, :cond_8a

    .line 250
    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move v0, v7

    goto/16 :goto_ed

    .line 252
    :cond_8a
    :try_start_8a
    const-string v0, "hide_gentle"

    invoke-interface {v10, v12, v0, v14}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_6c

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move v0, v7

    goto :goto_ed

    .line 254
    :cond_9a
    :try_start_9a
    const-string/jumbo v0, "package"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 255
    const-string/jumbo v0, "name"

    invoke-interface {v10, v12, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_ae
    .catchall {:try_start_9a .. :try_end_ae} :catchall_dc

    if-nez v0, :cond_cc

    .line 257
    move-object/from16 v1, p0

    move-object/from16 v17, v2

    .end local v2    # "tag":Ljava/lang/String;
    .local v17, "tag":Ljava/lang/String;
    move-object/from16 v2, p1

    move/from16 v18, v3

    .end local v3    # "type":I
    .local v18, "type":I
    move/from16 v3, p2

    move-object/from16 v19, v4

    move/from16 v4, p3

    move v0, v7

    move/from16 v7, v16

    :try_start_c1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/PreferencesHelper;->restorePackage(Landroid/util/TypedXmlPullParser;ZILjava/lang/String;ZZLjava/util/ArrayList;)V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c5

    goto :goto_d3

    .line 263
    .end local v5    # "name":Ljava/lang/String;
    :catchall_c5
    move-exception v0

    move-object/from16 v2, v17

    move/from16 v1, v18

    goto/16 :goto_140

    .line 256
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "type":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_cc
    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move v0, v7

    .line 260
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :goto_d3
    goto :goto_ed

    .line 254
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "type":I
    :cond_d4
    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move v0, v7

    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "type":I
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    goto :goto_ed

    .line 263
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "type":I
    :catchall_dc
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v1, v18

    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "type":I
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    goto :goto_140

    .line 247
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "type":I
    :cond_e6
    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move v0, v7

    .line 242
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "type":I
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :goto_ed
    move v7, v0

    move-object/from16 v2, v17

    move/from16 v1, v18

    move-object/from16 v4, v19

    goto/16 :goto_4f

    .line 263
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "type":I
    :catchall_f6
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v1, v18

    .end local v3    # "type":I
    .restart local v18    # "type":I
    goto :goto_140

    .line 242
    .end local v18    # "type":I
    .restart local v3    # "type":I
    :cond_fe
    move/from16 v18, v3

    move-object/from16 v19, v4

    .line 263
    .end local v3    # "type":I
    .restart local v18    # "type":I
    :goto_102
    :try_start_102
    monitor-exit v19
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_139

    .line 264
    if-eqz v16, :cond_138

    .line 265
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_109
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_138

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    .line 267
    .local v3, "p":Lcom/android/server/notification/PermissionHelper$PackagePermission;
    :try_start_116
    iget-object v0, v9, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v3}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_11b} :catch_11c

    .line 270
    goto :goto_137

    .line 268
    :catch_11c
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NotificationPrefHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not migrate setting for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "p":Lcom/android/server/notification/PermissionHelper$PackagePermission;
    :goto_137
    goto :goto_109

    .line 273
    :cond_138
    return-void

    .line 263
    :catchall_139
    move-exception v0

    move/from16 v1, v18

    goto :goto_140

    .end local v18    # "type":I
    .restart local v1    # "type":I
    :catchall_13d
    move-exception v0

    move-object/from16 v19, v4

    :goto_140
    :try_start_140
    monitor-exit v19
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_142

    throw v0

    :catchall_142
    move-exception v0

    goto :goto_140
.end method

.method public revokeNotificationDelegate(Ljava/lang/String;I)V
    .registers 8
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I

    .line 1815
    const/4 v0, 0x0

    .line 1816
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1817
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1818
    .local v2, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_14

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v3, :cond_14

    .line 1819
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 1820
    const/4 v0, 0x1

    .line 1822
    .end local v2    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1b

    .line 1823
    if-eqz v0, :cond_1a

    .line 1824
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1826
    :cond_1a
    return-void

    .line 1822
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public setAppImportanceLocked(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1767
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1768
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1769
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    .line 1770
    monitor-exit v0

    return-void

    .line 1773
    :cond_f
    iget v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 1775
    .end local v1    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    .line 1776
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1777
    return-void

    .line 1775
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public setBubblesAllowed(Ljava/lang/String;II)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "bubblePreference"    # I

    .line 686
    const/4 v0, 0x0

    .line 687
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 688
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 689
    .local v2, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eq v3, p3, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    move v0, v3

    .line 690
    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 691
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 692
    .end local v2    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1f

    .line 693
    if-eqz v0, :cond_1e

    .line 694
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 696
    :cond_1e
    return-void

    .line 692
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public setHideSilentStatusIcons(Z)V
    .registers 2
    .param p1, "hide"    # Z

    .line 1267
    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 1268
    return-void
.end method

.method public setInvalidMessageSent(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 755
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 756
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 757
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    const/4 v3, 0x1

    if-nez v2, :cond_e

    move v2, v3

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 758
    .local v2, "valueChanged":Z
    :goto_f
    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 760
    monitor-exit v0

    return v2

    .line 761
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "valueChanged":Z
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isDemoted"    # Z

    .line 748
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 749
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 750
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iput-boolean p3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 751
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v0

    .line 752
    return-void

    .line 751
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 10
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I
    .param p3, "delegatePkg"    # Ljava/lang/String;
    .param p4, "delegateUid"    # I

    .line 1801
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1802
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1804
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v2, v2, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    move v2, v3

    .line 1805
    .local v2, "userAllowed":Z
    :goto_16
    new-instance v4, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v4, p3, p4, v3, v2}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    move-object v3, v4

    .line 1806
    .local v3, "delegate":Lcom/android/server/notification/PreferencesHelper$Delegate;
    iput-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 1807
    .end local v1    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "userAllowed":Z
    .end local v3    # "delegate":Lcom/android/server/notification/PreferencesHelper$Delegate;
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    .line 1808
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1809
    return-void

    .line 1807
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "showBadge"    # Z

    .line 727
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 728
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iput-boolean p3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 729
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 730
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 731
    return-void

    .line 729
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setValidBubbleSent(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 800
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 801
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 802
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    const/4 v3, 0x1

    if-nez v2, :cond_e

    move v2, v3

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 803
    .local v2, "valueChanged":Z
    :goto_f
    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    .line 804
    monitor-exit v0

    return v2

    .line 805
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "valueChanged":Z
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public setValidMessageSent(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 765
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 766
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 767
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    const/4 v3, 0x1

    if-nez v2, :cond_e

    move v2, v3

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 768
    .local v2, "valueChanged":Z
    :goto_f
    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 770
    monitor-exit v0

    return v2

    .line 771
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "valueChanged":Z
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public shouldHideSilentStatusIcons()Z
    .registers 2

    .line 1263
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    return v0
.end method

.method public toggleNotificationDelegate(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I
    .param p3, "userAllowed"    # Z

    .line 1832
    const/4 v0, 0x0

    .line 1833
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1834
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1835
    .local v2, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_13

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v3, :cond_13

    .line 1836
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iput-boolean p3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 1837
    const/4 v0, 0x1

    .line 1839
    .end local v2    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1a

    .line 1840
    if-eqz v0, :cond_19

    .line 1841
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1843
    :cond_19
    return-void

    .line 1839
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public unlockAllNotificationChannels()V
    .registers 8

    .line 2671
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2672
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2673
    .local v1, "numPackagePreferences":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_32

    .line 2674
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2675
    .local v3, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 2676
    .local v5, "channel":Landroid/app/NotificationChannel;
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 2677
    .end local v5    # "channel":Landroid/app/NotificationChannel;
    goto :goto_1e

    .line 2673
    .end local v3    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2679
    .end local v1    # "numPackagePreferences":I
    .end local v2    # "i":I
    :cond_32
    monitor-exit v0

    .line 2680
    return-void

    .line 2679
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method unlockNotificationChannelImportance(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "updatedChannelId"    # Ljava/lang/String;

    .line 1052
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1054
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1055
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_2a

    .line 1059
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 1060
    .local v2, "channel":Landroid/app/NotificationChannel;
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_22

    .line 1063
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 1064
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    monitor-exit v0

    .line 1065
    return-void

    .line 1061
    .restart local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v2    # "channel":Landroid/app/NotificationChannel;
    :cond_22
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Channel does not exist"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "updatedChannelId":Ljava/lang/String;
    throw v3

    .line 1056
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "updatedChannelId":Ljava/lang/String;
    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid package"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "updatedChannelId":Ljava/lang/String;
    throw v2

    .line 1064
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "updatedChannelId":Ljava/lang/String;
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public updateBadgingEnabled()V
    .registers 9

    .line 2547
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 2548
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 2550
    :cond_b
    const/4 v0, 0x0

    .line 2552
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 2553
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2554
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 2555
    .local v3, "oldValue":Z
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_badging"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_34

    move v4, v6

    goto :goto_35

    :cond_34
    move v4, v5

    .line 2558
    .local v4, "newValue":Z
    :goto_35
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2559
    if-eq v3, v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v6, v5

    :goto_3e
    or-int/2addr v0, v6

    .line 2552
    .end local v2    # "userId":I
    .end local v3    # "oldValue":Z
    .end local v4    # "newValue":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2561
    .end local v1    # "index":I
    :cond_42
    if-eqz v0, :cond_47

    .line 2562
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2564
    :cond_47
    return-void
.end method

.method public updateBubblesEnabled()V
    .registers 9

    .line 2582
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 2583
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 2585
    :cond_b
    const/4 v0, 0x0

    .line 2587
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 2588
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2589
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 2590
    .local v3, "oldValue":Z
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_bubbles"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_34

    move v4, v6

    goto :goto_35

    :cond_34
    move v4, v5

    .line 2593
    .local v4, "newValue":Z
    :goto_35
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2594
    if-eq v3, v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v6, v5

    :goto_3e
    or-int/2addr v0, v6

    .line 2587
    .end local v2    # "userId":I
    .end local v3    # "oldValue":Z
    .end local v4    # "newValue":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2596
    .end local v1    # "index":I
    :cond_42
    if-eqz v0, :cond_47

    .line 2597
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2599
    :cond_47
    return-void
.end method

.method public updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1294
    .local p2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p3, "toAdd":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1295
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1296
    .local v2, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_4c

    .line 1297
    if-eqz p2, :cond_4c

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1298
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 1299
    iget-boolean v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-nez v4, :cond_4c

    .line 1300
    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1301
    .local v5, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v5, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 1302
    .end local v5    # "channel":Landroid/app/NotificationChannel;
    goto :goto_3c

    .line 1306
    .end local v2    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_4c
    goto :goto_d

    .line 1307
    :cond_4d
    if-eqz p3, :cond_8d

    .line 1308
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1309
    .local v2, "approvedApp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1311
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1309
    invoke-direct {p0, v3, v4}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v3

    .line 1312
    .local v3, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 1313
    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1314
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v6, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 1315
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    goto :goto_7c

    .line 1316
    .end local v2    # "approvedApp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_8c
    goto :goto_53

    .line 1318
    :cond_8d
    monitor-exit v0

    .line 1319
    return-void

    .line 1318
    :catchall_8f
    move-exception v1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method public updateFixedImportance(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1271
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1272
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    const-wide/32 v3, 0x100000

    .line 1273
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    .line 1274
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1272
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v2

    .line 1275
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1276
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1277
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1276
    invoke-virtual {v5, v6, v7}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v5

    .line 1278
    .local v5, "fixed":Z
    if-eqz v5, :cond_76

    .line 1279
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 1280
    :try_start_4a
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v7

    .line 1282
    .local v7, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    .line 1283
    iget-object v9, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_61
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_71

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannel;

    .line 1284
    .local v10, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v10, v8}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 1285
    .end local v10    # "channel":Landroid/app/NotificationChannel;
    goto :goto_61

    .line 1286
    .end local v7    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_71
    monitor-exit v6

    goto :goto_76

    :catchall_73
    move-exception v0

    monitor-exit v6
    :try_end_75
    .catchall {:try_start_4a .. :try_end_75} :catchall_73

    throw v0

    .line 1288
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "fixed":Z
    :cond_76
    :goto_76
    goto :goto_29

    .line 1289
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_77
    goto :goto_4

    .line 1290
    :cond_78
    return-void
.end method

.method public updateLockScreenPrivateNotifications()V
    .registers 9

    .line 2617
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 2618
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 2620
    :cond_b
    const/4 v0, 0x0

    .line 2622
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 2623
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2624
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 2625
    .local v3, "oldValue":Z
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_allow_private_notifications"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_33

    move v4, v6

    goto :goto_34

    :cond_33
    move v4, v5

    .line 2627
    .local v4, "newValue":Z
    :goto_34
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2628
    if-eq v3, v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v6, v5

    :goto_3d
    or-int/2addr v0, v6

    .line 2622
    .end local v2    # "userId":I
    .end local v3    # "oldValue":Z
    .end local v4    # "newValue":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2630
    .end local v1    # "index":I
    :cond_41
    if-eqz v0, :cond_46

    .line 2631
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2633
    :cond_46
    return-void
.end method

.method public updateLockScreenShowNotifications()V
    .registers 9

    .line 2636
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 2637
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    .line 2639
    :cond_b
    const/4 v0, 0x0

    .line 2641
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 2642
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2643
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 2644
    .local v3, "oldValue":Z
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_33

    move v4, v6

    goto :goto_34

    :cond_33
    move v4, v5

    .line 2646
    .local v4, "newValue":Z
    :goto_34
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2647
    if-eq v3, v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v6, v5

    :goto_3d
    or-int/2addr v0, v6

    .line 2641
    .end local v2    # "userId":I
    .end local v3    # "oldValue":Z
    .end local v4    # "newValue":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2649
    .end local v1    # "index":I
    :cond_41
    if-eqz v0, :cond_46

    .line 2650
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2652
    :cond_46
    return-void
.end method

.method public updateMediaNotificationFilteringEnabled()V
    .registers 4

    .line 2533
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "qs_media_controls"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    move v0, v2

    .line 2535
    .local v0, "newValue":Z
    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    if-eq v0, v1, :cond_1c

    .line 2536
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    .line 2537
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2539
    :cond_1c
    return-void
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "updatedChannel"    # Landroid/app/NotificationChannel;
    .param p4, "fromUser"    # Z

    .line 1071
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    const/4 v0, 0x0

    .line 1074
    .local v0, "needsDndChange":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1075
    :try_start_e
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1076
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_cf

    .line 1079
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1080
    .local v3, "channel":Landroid/app/NotificationChannel;
    if-eqz v3, :cond_c7

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_c7

    .line 1083
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    .line 1084
    const/16 v4, -0x3e8

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 1087
    :cond_34
    if-eqz p4, :cond_41

    .line 1088
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1089
    invoke-virtual {p0, v3, p3}, Lcom/android/server/notification/PreferencesHelper;->lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    goto :goto_48

    .line 1091
    :cond_41
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 1094
    :goto_48
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1095
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-nez v4, :cond_61

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eqz v4, :cond_61

    .line 1096
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 1099
    :cond_61
    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_88

    .line 1102
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 1103
    const/4 v4, 0x2

    goto :goto_7a

    :cond_79
    move v4, v6

    :goto_7a
    iput v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 1104
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    iput v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 1105
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v4

    iput-boolean v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 1108
    :cond_88
    invoke-virtual {v3, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 1110
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 1111
    if-eqz p4, :cond_95

    goto :goto_96

    :cond_95
    move v5, v6

    :goto_96
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 1110
    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1112
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 1113
    invoke-static {v3}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v9

    .line 1112
    move-object v6, p3

    move v7, p2

    move-object v8, p1

    move v10, p4

    invoke-interface/range {v5 .. v10}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    .line 1116
    :cond_aa
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne v4, v5, :cond_bc

    .line 1117
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-eq v4, v5, :cond_bd

    .line 1118
    :cond_bc
    const/4 v0, 0x1

    .line 1120
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "channel":Landroid/app/NotificationChannel;
    :cond_bd
    monitor-exit v1
    :try_end_be
    .catchall {:try_start_e .. :try_end_be} :catchall_d7

    .line 1121
    if-eqz v0, :cond_c3

    .line 1122
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    .line 1124
    :cond_c3
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1125
    return-void

    .line 1081
    .restart local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v3    # "channel":Landroid/app/NotificationChannel;
    :cond_c7
    :try_start_c7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Channel does not exist"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "needsDndChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "updatedChannel":Landroid/app/NotificationChannel;
    .end local p4    # "fromUser":Z
    throw v4

    .line 1077
    .end local v3    # "channel":Landroid/app/NotificationChannel;
    .restart local v0    # "needsDndChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "updatedChannel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromUser":Z
    :cond_cf
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid package"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "needsDndChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "updatedChannel":Landroid/app/NotificationChannel;
    .end local p4    # "fromUser":Z
    throw v3

    .line 1120
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v0    # "needsDndChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "updatedChannel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromUser":Z
    :catchall_d7
    move-exception v2

    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_c7 .. :try_end_d9} :catchall_d7

    throw v2
.end method

.method public updateZenPolicy(Z)V
    .registers 12
    .param p1, "areChannelsBypassingDnd"    # Z

    .line 1748
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 1749
    .local v0, "policy":Landroid/app/NotificationManager$Policy;
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v9, Landroid/app/NotificationManager$Policy;

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1752
    if-eqz p1, :cond_17

    const/4 v2, 0x1

    move v7, v2

    goto :goto_19

    .line 1753
    :cond_17
    const/4 v2, 0x0

    move v7, v2

    :goto_19
    iget v8, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 1749
    invoke-virtual {v1, v9}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 1755
    return-void
.end method

.method public writeXml(Landroid/util/TypedXmlSerializer;ZI)V
    .registers 20
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "forBackup"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const-string/jumbo v0, "ranking"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    const-string/jumbo v0, "version"

    iget v5, v1, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    iget-boolean v0, v1, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    if-eqz v0, :cond_30

    if-eqz p2, :cond_1d

    if-nez v3, :cond_30

    .line 581
    :cond_1d
    const-string/jumbo v0, "silent_status_icons"

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    const-string v0, "hide_gentle"

    iget-boolean v5, v1, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 583
    const-string/jumbo v0, "silent_status_icons"

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 585
    :cond_30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 586
    .local v0, "notifPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    if-eqz p2, :cond_3f

    .line 587
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v5, v3}, Lcom/android/server/notification/PermissionHelper;->getNotificationPermissionValues(I)Landroid/util/ArrayMap;

    move-result-object v0

    move-object v5, v0

    goto :goto_40

    .line 586
    :cond_3f
    move-object v5, v0

    .line 590
    .end local v0    # "notifPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    .local v5, "notifPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    :goto_40
    iget-object v6, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 591
    :try_start_43
    iget-object v0, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 592
    .local v0, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4a
    const/4 v8, 0x3

    const/4 v9, 0x0

    if-ge v7, v0, :cond_18f

    .line 593
    iget-object v10, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 594
    .local v10, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz p2, :cond_62

    iget v11, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-eq v11, v3, :cond_62

    .line 595
    goto/16 :goto_18b

    .line 597
    :cond_62
    const-string/jumbo v11, "package"

    invoke-interface {v2, v4, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 598
    const-string/jumbo v11, "name"

    iget-object v12, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {v2, v4, v11, v12}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 599
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v11

    const/16 v12, -0x3e8

    if-nez v11, :cond_a3

    .line 600
    new-instance v11, Landroid/util/Pair;

    iget v13, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v11, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 601
    .local v11, "app":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 602
    .local v13, "permission":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const-string v14, "importance"

    .line 603
    if-eqz v13, :cond_9a

    iget-object v15, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_9a

    goto :goto_9b

    .line 604
    :cond_9a
    move v8, v9

    .line 602
    :goto_9b
    invoke-interface {v2, v4, v14, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    nop

    .end local v11    # "app":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v13    # "permission":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    goto :goto_ae

    .line 607
    :cond_a3
    iget v8, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eq v8, v12, :cond_ae

    .line 608
    const-string v8, "importance"

    iget v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    :cond_ae
    :goto_ae
    iget v8, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v8, :cond_ba

    .line 612
    const-string/jumbo v8, "priority"

    iget v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    :cond_ba
    iget v8, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v8, v12, :cond_c6

    .line 615
    const-string/jumbo v8, "visibility"

    iget v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 617
    :cond_c6
    iget v8, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eqz v8, :cond_d1

    .line 618
    const-string v8, "allow_bubble"

    iget v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    :cond_d1
    const-string/jumbo v8, "show_badge"

    iget-boolean v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 621
    const-string v8, "app_user_locked_fields"

    iget v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    const-string/jumbo v8, "sent_invalid_msg"

    iget-boolean v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    const-string/jumbo v8, "sent_valid_msg"

    iget-boolean v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    const-string/jumbo v8, "user_demote_msg_app"

    iget-boolean v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    if-nez p2, :cond_102

    .line 631
    const-string/jumbo v8, "uid"

    iget v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    :cond_102
    iget-object v8, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v8, :cond_143

    .line 635
    const-string v8, "delegate"

    invoke-interface {v2, v4, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 637
    const-string/jumbo v8, "name"

    iget-object v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v9, v9, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 638
    const-string/jumbo v8, "uid"

    iget-object v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget v9, v9, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 639
    iget-object v8, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    const/4 v9, 0x1

    if-eq v8, v9, :cond_12f

    .line 640
    const-string v8, "enabled"

    iget-object v11, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v11, v11, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    invoke-interface {v2, v4, v8, v11}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    :cond_12f
    iget-object v8, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eq v8, v9, :cond_13e

    .line 643
    const-string v8, "allowed"

    iget-object v9, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v9, v9, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    invoke-interface {v2, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    :cond_13e
    const-string v8, "delegate"

    invoke-interface {v2, v4, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    :cond_143
    iget-object v8, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_14d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    .line 649
    .local v9, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v9, v2}, Landroid/app/NotificationChannelGroup;->writeXml(Landroid/util/TypedXmlSerializer;)V

    .line 650
    .end local v9    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_14d

    .line 652
    :cond_15d
    iget-object v8, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_167
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_185

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 653
    .local v9, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_181

    .line 654
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v11

    if-nez v11, :cond_184

    .line 655
    iget-object v11, v1, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2, v11}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_184

    .line 658
    :cond_181
    invoke-virtual {v9, v2}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 660
    .end local v9    # "channel":Landroid/app/NotificationChannel;
    :cond_184
    :goto_184
    goto :goto_167

    .line 662
    :cond_185
    const-string/jumbo v8, "package"

    invoke-interface {v2, v4, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    .end local v10    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :goto_18b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4a

    .line 664
    .end local v0    # "N":I
    .end local v7    # "i":I
    :cond_18f
    monitor-exit v6
    :try_end_190
    .catchall {:try_start_43 .. :try_end_190} :catchall_1e0

    .line 666
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d9

    .line 667
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 668
    .local v6, "app":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string/jumbo v7, "package"

    invoke-interface {v2, v4, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 669
    const-string/jumbo v7, "name"

    iget-object v10, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2, v4, v7, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 670
    const-string v7, "importance"

    .line 671
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1ce

    move v10, v8

    goto :goto_1cf

    :cond_1ce
    move v10, v9

    .line 670
    :goto_1cf
    invoke-interface {v2, v4, v7, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 672
    const-string/jumbo v7, "package"

    invoke-interface {v2, v4, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 673
    .end local v6    # "app":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_19e

    .line 675
    :cond_1d9
    const-string/jumbo v0, "ranking"

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 676
    return-void

    .line 664
    :catchall_1e0
    move-exception v0

    :try_start_1e1
    monitor-exit v6
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_1e0

    throw v0
.end method
