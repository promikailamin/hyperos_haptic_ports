.class public final Lcom/android/server/tv/watchdogservice/PerformanceDump;
.super Ljava/lang/Object;
.source "PerformanceDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/watchdogservice/PerformanceDump$ResourceOveruseListenerInfo;,
        Lcom/android/server/tv/watchdogservice/PerformanceDump$PerStateBytes;,
        Lcom/android/server/tv/watchdogservice/PerformanceDump$IoOveruseStats;,
        Lcom/android/server/tv/watchdogservice/PerformanceDump$PackageIoUsage;,
        Lcom/android/server/tv/watchdogservice/PerformanceDump$UsageByUserPackage;,
        Lcom/android/server/tv/watchdogservice/PerformanceDump$IoThresholdByAppCategory;,
        Lcom/android/server/tv/watchdogservice/PerformanceDump$IoThresholdByPackage;,
        Lcom/android/server/tv/watchdogservice/PerformanceDump$IoThresholdByComponent;,
        Lcom/android/server/tv/watchdogservice/PerformanceDump$PackageByAppCategory;,
        Lcom/android/server/tv/watchdogservice/PerformanceDump$OveruseConfigurationCacheDump;
    }
.end annotation


# static fields
.field public static final blacklist ACTIONABLE_USER_PACKAGES:J = 0x20b00000016L

.field public static final blacklist ACTIVE_USER_NOTIFICATIONS:J = 0x20b00000015L

.field public static final blacklist APPLICATION_CATEGORY_UNSPECIFIED:I = 0x0

.field public static final blacklist COMPONENT_TYPE_UNSPECIFIED:I = 0x0

.field public static final blacklist CURRENT_OVERUSE_NOTIFICATION_ID_OFFSET:J = 0x1030000000bL

.field public static final blacklist CURRENT_UX_STATE:J = 0x10e00000001L

.field public static final blacklist DEFAULT_NOT_KILLABLE_GENERIC_PACKAGES:J = 0x20900000013L

.field public static final blacklist DISABLED_USER_PACKAGES:J = 0x20b00000002L

.field public static final blacklist IO_USAGE_SUMMARY_MIN_SYSTEM_TOTAL_WRITTEN_BYTES:J = 0x10300000004L

.field public static final blacklist IS_CONNECTED_TO_DAEMON:J = 0x10800000009L

.field public static final blacklist IS_GARAGE_MODE_ACTIVE:J = 0x1080000000cL

.field public static final blacklist IS_HEADS_UP_NOTIFICATION_SENT:J = 0x1080000000aL

.field public static final blacklist IS_PENDING_RESOURCE_OVERUSE_CONFIGURATIONS_REQUEST:J = 0x10800000017L

.field public static final blacklist KILLABLE_STATE_NEVER:I = 0x3

.field public static final blacklist KILLABLE_STATE_NO:I = 0x2

.field public static final blacklist KILLABLE_STATE_UNSPECIFIED:I = 0x0

.field public static final blacklist KILLABLE_STATE_YES:I = 0x1

.field public static final blacklist LAST_SYSTEM_IO_USAGE_SUMMARY_REPORTED_UTC_DATETIME:J = 0x10b0000000eL

.field public static final blacklist LAST_UID_IO_USAGE_SUMMARY_REPORTED_UTC_DATETIME:J = 0x10b0000000fL

.field public static final blacklist MAPS:I = 0x2

.field public static final blacklist MEDIA:I = 0x3

.field public static final blacklist OTHERS:I = 0x1

.field public static final blacklist OVERUSE_CONFIGURATION_CACHE_DUMP:J = 0x10b00000018L

.field public static final blacklist OVERUSE_HANDLING_DELAY_MILLIS:J = 0x1030000000dL

.field public static final blacklist OVERUSE_LISTENER_INFOS:J = 0x20b00000011L

.field public static final blacklist PACKAGE_KILLABLE_STATE_RESET_DAYS:J = 0x10300000005L

.field public static final blacklist RECURRING_OVERUSE_PERIOD_DAYS:J = 0x10300000006L

.field public static final blacklist RESOURCE_OVERUSE_NOTIFICATION_BASE_ID:J = 0x10300000007L

.field public static final blacklist RESOURCE_OVERUSE_NOTIFICATION_MAX_OFFSET:J = 0x10300000008L

.field public static final blacklist SYSTEM:I = 0x1

.field public static final blacklist SYSTEM_OVERUSE_LISTENER_INFOS:J = 0x20b00000012L

.field public static final blacklist THIRD_PARTY:I = 0x3

.field public static final blacklist UID_IO_USAGE_SUMMARY_TOP_COUNT:J = 0x10300000003L

.field public static final blacklist USAGE_BY_USER_PACKAGES:J = 0x20b00000010L

.field public static final blacklist USER_NOTIFIABLE_PACKAGES:J = 0x20b00000014L

.field public static final blacklist UX_STATE_NO_DISTRACTION:I = 0x1

.field public static final blacklist UX_STATE_NO_INTERACTION:I = 0x3

.field public static final blacklist UX_STATE_UNSPECIFIED:I = 0x0

.field public static final blacklist UX_STATE_USER_NOTIFICATION:I = 0x2

.field public static final blacklist VENDOR:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
