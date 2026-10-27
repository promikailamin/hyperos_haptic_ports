.class final Lcom/android/server/timedetector/ServiceConfigAccessor;
.super Ljava/lang/Object;
.source "ServiceConfigAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;,
        Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;,
        Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

.field private static final SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SLOCK:Ljava/lang/Object;

.field private static final SYSTEM_CLOCK_UPDATE_THRESHOLD_MILLIS_DEFAULT:I = 0x3e8

.field private static final TIME_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

.field private static sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;


# instance fields
.field private final mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

.field private final mContext:Landroid/content/Context;

.field private final mServerFlags:Lcom/android/server/timedetector/ServerFlags;

.field private final mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

.field private final mSystemClockUpdateThresholdMillis:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

    .line 65
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    .line 64
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->TIME_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

    .line 68
    const-string/jumbo v0, "time_detector_lower_bound_millis_override"

    const-string/jumbo v1, "time_detector_origin_priorities_override"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->SLOCK:Ljava/lang/Object;

    return-void

    :array_30
    .array-data 4
        0x1
        0x3
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {v0}, Lcom/android/server/timedetector/ServerFlags;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 95
    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;-><init>(Landroid/content/Context;Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier-IA;)V

    iput-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

    .line 96
    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

    invoke-direct {v1, v0, v2}, Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;-><init>(Lcom/android/server/timedetector/ServerFlags;Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier-IA;)V

    iput-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

    .line 98
    nop

    .line 99
    const-string/jumbo v0, "ro.sys.time_detector_update_diff"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mSystemClockUpdateThresholdMillis:I

    .line 101
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServiceConfigAccessor;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    sget-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    sget-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    if-nez v1, :cond_e

    .line 107
    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessor;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/ServiceConfigAccessor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    .line 109
    :cond_e
    sget-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    monitor-exit v0

    return-object v1

    .line 110
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 121
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/Set;)V

    .line 122
    return-void
.end method

.method autoTimeLowerBound()Ljava/time/Instant;
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v1, "time_detector_lower_bound_millis_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalInstant(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->TIME_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    .line 144
    return-object v0
.end method

.method getOriginPriorities()[I
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;->get()[I

    move-result-object v0

    .line 127
    .local v0, "serverFlagsValue":[I
    if-eqz v0, :cond_9

    .line 128
    return-object v0

    .line 131
    :cond_9
    iget-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

    invoke-virtual {v1}, Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;->get()[I

    move-result-object v1

    .line 132
    .local v1, "configValue":[I
    if-eqz v1, :cond_12

    .line 133
    return-object v1

    .line 135
    :cond_12
    sget-object v2, Lcom/android/server/timedetector/ServiceConfigAccessor;->DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

    return-object v2
.end method

.method systemClockUpdateThresholdMillis()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mSystemClockUpdateThresholdMillis:I

    return v0
.end method
