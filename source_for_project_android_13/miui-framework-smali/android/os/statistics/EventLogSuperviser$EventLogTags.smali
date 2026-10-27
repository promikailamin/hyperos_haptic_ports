.class Landroid/os/statistics/EventLogSuperviser$EventLogTags;
.super Ljava/lang/Object;
.source "EventLogSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/EventLogSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventLogTags"
.end annotation


# static fields
.field public static final blacklist AM_ACTIVITY_LAUNCH_TIME:I = 0x7539

.field public static final blacklist AM_ACTIVITY_LAUNCH_TIME_MIUI:I = 0x7588

.field public static final blacklist AM_ANR:I = 0x7538

.field public static final blacklist AM_BIND_SERVICE:I = 0x7577

.field public static final blacklist AM_CRASH:I = 0x7557

.field public static final blacklist AM_CREATE_SERVICE:I = 0x754e

.field public static final blacklist AM_LOW_MEMORY:I = 0x7541

.field public static final blacklist AM_MEMINFO:I = 0x755e

.field public static final blacklist AM_MEM_FACTOR:I = 0x7562

.field public static final blacklist AM_PROCESS_START_TIMEOUT:I = 0x7555

.field public static final blacklist AM_PROC_START:I = 0x753e

.field public static final blacklist AM_PROVIDER_LOST_PROCESS:I = 0x7554

.field public static final blacklist AM_RELAUNCH_RESUME_ACTIVITY:I = 0x7543

.field public static final blacklist AM_RESUME_ACTIVITY:I = 0x7537

.field public static final blacklist AM_START_SERVICE:I = 0x7576

.field public static final blacklist AM_SWITCH_USER:I = 0x7559

.field public static final blacklist CONTENT_QUERY_SAMPLE:I = 0xcb22

.field public static final blacklist CONTENT_UPDATE_SAMPLE:I = 0xcb23

.field public static final blacklist POWER_SCREEN_STATE:I = 0xaa8


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
