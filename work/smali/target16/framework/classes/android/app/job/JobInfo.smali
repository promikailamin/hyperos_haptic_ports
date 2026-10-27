.class public Landroid/app/job/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$TriggerContentUri;,
        Landroid/app/job/JobInfo$Builder;,
        Landroid/app/job/JobInfo$Priority;,
        Landroid/app/job/JobInfo$BackoffPolicy;,
        Landroid/app/job/JobInfo$NetworkType;
    }
.end annotation


# static fields
.field public static final whitelist BACKOFF_POLICY_EXPONENTIAL:I = 0x1

.field public static final whitelist BACKOFF_POLICY_LINEAR:I = 0x0

.field public static final blacklist BIAS_ADJ_ALWAYS_RUNNING:I = -0x50

.field public static final blacklist BIAS_ADJ_OFTEN_RUNNING:I = -0x28

.field public static final blacklist BIAS_BOUND_FOREGROUND_SERVICE:I = 0x1e

.field public static final blacklist BIAS_DEFAULT:I = 0x0

.field public static final blacklist BIAS_FOREGROUND_SERVICE:I = 0x23

.field public static final blacklist BIAS_SYNC_EXPEDITED:I = 0xa

.field public static final blacklist BIAS_SYNC_INITIALIZATION:I = 0x14

.field public static final blacklist BIAS_TOP_APP:I = 0x28

.field public static final greylist-max-o CONSTRAINT_FLAG_BATTERY_NOT_LOW:I = 0x2

.field public static final greylist-max-o CONSTRAINT_FLAG_CHARGING:I = 0x1

.field public static final greylist-max-o CONSTRAINT_FLAG_DEVICE_IDLE:I = 0x4

.field public static final greylist-max-o CONSTRAINT_FLAG_STORAGE_NOT_LOW:I = 0x8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DEFAULT_BACKOFF_POLICY:I = 0x1

.field public static final whitelist DEFAULT_INITIAL_BACKOFF_MILLIS:J = 0x7530L

.field public static final blacklist DISALLOW_DEADLINES_FOR_PREFETCH_JOBS:J = 0xb98555fL

.field public static final blacklist ENFORCE_MINIMUM_TIME_WINDOWS:J = 0x128fa179L

.field public static final greylist-max-o FLAG_EXEMPT_FROM_APP_STANDBY:I = 0x8

.field public static final blacklist FLAG_EXPEDITED:I = 0x10

.field public static final greylist-max-o FLAG_IMPORTANT_WHILE_FOREGROUND:I = 0x2

.field public static final greylist-max-o FLAG_PREFETCH:I = 0x4

.field public static final blacklist FLAG_USER_INITIATED:I = 0x20

.field public static final greylist-max-r FLAG_WILL_BE_FOREGROUND:I = 0x1

.field public static final whitelist MAX_BACKOFF_DELAY_MILLIS:J = 0x112a880L

.field public static final blacklist MAX_DEBUG_TAG_LENGTH:I = 0x7f

.field public static final blacklist MAX_NUM_DEBUG_TAGS:I = 0x20

.field public static final blacklist MAX_TRACE_TAG_LENGTH:I = 0x7f

.field private static final blacklist MIN_ALLOWED_TIME_WINDOW_MILLIS:J = 0xdbba0L

.field public static final greylist-max-o MIN_BACKOFF_MILLIS:J = 0x2710L

.field private static final greylist-max-o MIN_FLEX_MILLIS:J = 0x493e0L

.field private static final greylist-max-o MIN_PERIOD_MILLIS:J = 0xdbba0L

.field public static final whitelist NETWORK_BYTES_UNKNOWN:I = -0x1

.field public static final whitelist NETWORK_TYPE_ANY:I = 0x1

.field public static final whitelist NETWORK_TYPE_CELLULAR:I = 0x4

.field public static final whitelist NETWORK_TYPE_METERED:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_NONE:I = 0x0

.field public static final whitelist NETWORK_TYPE_NOT_ROAMING:I = 0x3

.field public static final whitelist NETWORK_TYPE_UNMETERED:I = 0x2

.field public static final whitelist PRIORITY_DEFAULT:I = 0x12c

.field public static final greylist-max-r PRIORITY_FOREGROUND_APP:I = 0x1e

.field public static final greylist-max-r PRIORITY_FOREGROUND_SERVICE:I = 0x23

.field public static final whitelist PRIORITY_HIGH:I = 0x190

.field public static final whitelist PRIORITY_LOW:I = 0xc8

.field public static final whitelist PRIORITY_MAX:I = 0x1f4

.field public static final whitelist PRIORITY_MIN:I = 0x64

.field public static final blacklist REJECT_NEGATIVE_DELAYS_AND_DEADLINES:J = 0x1345eb5aL

.field public static final blacklist REJECT_NEGATIVE_NETWORK_ESTIMATES:J = 0xf1e9ef7L

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field public static final blacklist THROW_ON_INVALID_PRIORITY_VALUE:J = 0x8653c4bL


# instance fields
.field private final greylist-max-o backoffPolicy:I

.field private final greylist-max-o clipData:Landroid/content/ClipData;

.field private final greylist-max-o clipGrantFlags:I

.field private final greylist-max-o constraintFlags:I

.field private final greylist-max-o extras:Landroid/os/PersistableBundle;

.field private final greylist-max-p flags:I

.field private final greylist-max-o flexMillis:J

.field private final greylist-max-o hasEarlyConstraint:Z

.field private final greylist-max-o hasLateConstraint:Z

.field private final greylist-max-o initialBackoffMillis:J

.field private final greylist-max-o intervalMillis:J

.field private final greylist-max-o isPeriodic:Z

.field private final greylist-max-o isPersisted:Z

.field private final greylist jobId:I

.field private final blacklist mBias:I

.field private final blacklist mDebugTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPriority:I

.field private final blacklist mTraceTag:Ljava/lang/String;

.field private final greylist-max-o maxExecutionDelayMillis:J

.field private final greylist-max-o minLatencyMillis:J

.field private final blacklist minimumNetworkChunkBytes:J

.field private final greylist-max-o networkDownloadBytes:J

.field private final greylist-max-o networkRequest:Landroid/net/NetworkRequest;

.field private final greylist-max-o networkUploadBytes:J

.field private final greylist service:Landroid/content/ComponentName;

.field private final greylist-max-o transientExtras:Landroid/os/Bundle;

.field private final greylist-max-o triggerContentMaxDelay:J

.field private final greylist-max-o triggerContentUpdateDelay:J

.field private final greylist-max-o triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    const-string v0, "JobInfo"

    sput-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    .line 1141
    new-instance v0, Landroid/app/job/JobInfo$1;

    invoke-direct {v0}, Landroid/app/job/JobInfo$1;-><init>()V

    sput-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/app/job/JobInfo$Builder;)V
    .registers 4

    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmJobId(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 1055
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 1056
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTransientExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 1057
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmClipData(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 1058
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmClipGrantFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 1059
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmJobService(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 1060
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmConstraintFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 1061
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1062
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    goto :goto_51

    .line 1063
    :cond_50
    const/4 v0, 0x0

    :goto_51
    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 1064
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUpdateDelay(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 1065
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentMaxDelay(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 1066
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkRequest(Landroid/app/job/JobInfo$Builder;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    .line 1067
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkDownloadBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    .line 1068
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkUploadBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    .line 1069
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMinimumNetworkChunkBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    .line 1070
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMinLatencyMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 1071
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMaxExecutionDelayMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 1072
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIsPeriodic(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 1073
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIsPersisted(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 1074
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIntervalMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 1075
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmFlexMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 1076
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmInitialBackoffMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 1077
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmBackoffPolicy(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 1078
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmHasEarlyConstraint(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 1079
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmHasLateConstraint(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 1080
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmBias(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mBias:I

    .line 1081
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmPriority(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    .line 1082
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    .line 1083
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmDebugTags(Landroid/app/job/JobInfo$Builder;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    .line 1084
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTraceTag(Landroid/app/job/JobInfo$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    .line 1085
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 1004
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1005
    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    :goto_12
    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 1006
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 1007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 1008
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 1009
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    goto :goto_37

    .line 1011
    :cond_33
    iput-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 1012
    iput v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 1014
    :goto_37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 1015
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 1016
    sget-object v0, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 1017
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 1018
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 1019
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6c

    .line 1020
    sget-object v0, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    iput-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    goto :goto_6e

    .line 1022
    :cond_6c
    iput-object v1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    .line 1024
    :goto_6e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    .line 1025
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    .line 1026
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    .line 1027
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 1028
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 1029
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_95

    move v0, v3

    goto :goto_96

    :cond_95
    move v0, v2

    :goto_96
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 1030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_a0

    move v0, v3

    goto :goto_a1

    :cond_a0
    move v0, v2

    :goto_a1
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 1031
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 1033
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 1034
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 1035
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_c3

    move v0, v3

    goto :goto_c4

    :cond_c3
    move v0, v2

    :goto_c4
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 1036
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_cd

    goto :goto_ce

    :cond_cd
    move v3, v2

    :goto_ce
    iput-boolean v3, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 1037
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mBias:I

    .line 1038
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    .line 1039
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    .line 1040
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1041
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    .line 1042
    nop

    :goto_ee
    if-ge v2, v0, :cond_10b

    .line 1043
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1044
    if-eqz v3, :cond_102

    .line 1047
    iget-object v4, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1042
    add-int/lit8 v2, v2, 0x1

    goto :goto_ee

    .line 1045
    :cond_102
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "malformed parcel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1049
    :cond_10b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1050
    if-nez p1, :cond_112

    goto :goto_116

    :cond_112
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    :goto_116
    iput-object v1, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    .line 1051
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist getBiasString(I)Ljava/lang/String;
    .registers 2

    .line 2543
    sparse-switch p0, :sswitch_data_2a

    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " [UNKNOWN]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2555
    :sswitch_17
    const-string p0, "40 [TOP_APP]"

    return-object p0

    .line 2553
    :sswitch_1a
    const-string p0, "35 [FGS_APP]"

    return-object p0

    .line 2551
    :sswitch_1d
    const-string p0, "30 [BFGS_APP]"

    return-object p0

    .line 2549
    :sswitch_20
    const-string p0, "20 [SYNC_INITIALIZATION]"

    return-object p0

    .line 2547
    :sswitch_23
    const-string p0, "10 [SYNC_EXPEDITED]"

    return-object p0

    .line 2545
    :sswitch_26
    const-string p0, "0 [DEFAULT]"

    return-object p0

    nop

    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_26
        0xa -> :sswitch_23
        0x14 -> :sswitch_20
        0x1e -> :sswitch_1d
        0x23 -> :sswitch_1a
        0x28 -> :sswitch_17
    .end sparse-switch
.end method

.method public static final greylist-max-o getMinBackoffMillis()J
    .registers 2

    .line 251
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public static final whitelist getMinFlexMillis()J
    .registers 2

    .line 243
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public static final whitelist getMinPeriodMillis()J
    .registers 2

    .line 232
    const-wide/32 v0, 0xdbba0

    return-wide v0
.end method

.method public static blacklist getPriorityString(I)Ljava/lang/String;
    .registers 2

    .line 2568
    sparse-switch p0, :sswitch_data_7c

    .line 2580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " [UNKNOWN]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2578
    :sswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " [MAX]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2576
    :sswitch_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " [HIGH]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2574
    :sswitch_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " [DEFAULT]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2572
    :sswitch_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " [LOW]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2570
    :sswitch_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " [MIN]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_7c
    .sparse-switch
        0x64 -> :sswitch_67
        0xc8 -> :sswitch_53
        0x12c -> :sswitch_3f
        0x190 -> :sswitch_2b
        0x1f4 -> :sswitch_17
    .end sparse-switch
.end method

.method public static blacklist validateDebugTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2501
    if-eqz p0, :cond_29

    .line 2504
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2505
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 2508
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_19

    .line 2512
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2509
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "debug tag cannot be more than 127 characters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2506
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "debug tag cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2502
    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "debug tag cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist validateTraceTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2521
    if-nez p0, :cond_4

    .line 2522
    const/4 p0, 0x0

    return-object p0

    .line 2524
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2525
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 2528
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_3c

    .line 2532
    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2535
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2533
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trace tag cannot contain |, \\n, or \\0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2529
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "traceTag tag cannot be more than 127 characters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2526
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "trace tag cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1089
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist enforceValidity(ZZZZ)V
    .registers 16

    .line 2262
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    iget-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    :cond_14
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v0, :cond_40f

    .line 2267
    :cond_18
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_70

    if-eqz p2, :cond_70

    .line 2268
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long p2, v0, v4

    if-eqz p2, :cond_48

    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_2d

    goto :goto_48

    .line 2269
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid network upload bytes: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide p3, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2272
    :cond_48
    :goto_48
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long p2, v0, v4

    if-eqz p2, :cond_70

    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_55

    goto :goto_70

    .line 2273
    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid network download bytes: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide p3, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2278
    :cond_70
    :goto_70
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long p2, v0, v4

    if-nez p2, :cond_79

    .line 2279
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    goto :goto_86

    .line 2281
    :cond_79
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    .line 2282
    iget-wide v6, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long p2, v6, v4

    if-nez p2, :cond_83

    move-wide v6, v2

    goto :goto_85

    :cond_83
    iget-wide v6, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    :goto_85
    add-long/2addr v0, v6

    .line 2284
    :goto_86
    iget-wide v6, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long p2, v6, v4

    if-eqz p2, :cond_9f

    cmp-long p2, v0, v4

    if-eqz p2, :cond_9f

    iget-wide v6, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long p2, v6, v0

    if-gtz p2, :cond_97

    goto :goto_9f

    .line 2287
    :cond_97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Minimum chunk size can\'t be greater than estimated network usage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2290
    :cond_9f
    :goto_9f
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long p2, v0, v4

    if-eqz p2, :cond_b4

    iget-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_ac

    goto :goto_b4

    .line 2291
    :cond_ac
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Minimum chunk size must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2294
    :cond_b4
    :goto_b4
    if-eqz p4, :cond_f9

    .line 2295
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_de

    .line 2299
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_c3

    goto :goto_f9

    .line 2300
    :cond_c3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Override deadline is negative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide p3, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2296
    :cond_de
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Minimum latency is negative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide p3, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2305
    :cond_f9
    :goto_f9
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long p2, v0, v2

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_103

    move p2, p4

    goto :goto_104

    :cond_103
    move p2, v0

    .line 2307
    :goto_104
    iget-boolean v1, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eqz v1, :cond_12d

    .line 2308
    if-nez p2, :cond_125

    .line 2312
    iget-wide v4, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_11d

    .line 2316
    iget-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-nez v1, :cond_115

    goto :goto_12d

    .line 2317
    :cond_115
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call addTriggerContentUri() on a periodic job"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2313
    :cond_11d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call setMinimumLatency() on a periodic job"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2309
    :cond_125
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call setOverrideDeadline() on a periodic job."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2323
    :cond_12d
    :goto_12d
    if-eqz p1, :cond_140

    if-eqz p2, :cond_140

    iget p1, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_138

    goto :goto_140

    .line 2324
    :cond_138
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call setOverrideDeadline() on a prefetch job."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2328
    :cond_140
    :goto_140
    iget-boolean p1, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eqz p1, :cond_182

    .line 2330
    iget-object p1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz p1, :cond_159

    iget-object p1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    .line 2331
    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p1

    if-nez p1, :cond_151

    goto :goto_159

    .line 2332
    :cond_151
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Network specifiers aren\'t supported for persistent jobs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2335
    :cond_159
    :goto_159
    iget-object p1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-nez p1, :cond_17a

    .line 2339
    iget-object p1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_172

    .line 2343
    iget-object p1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-nez p1, :cond_16a

    goto :goto_182

    .line 2344
    :cond_16a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call setClipData() on a persisted job"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2340
    :cond_172
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call setTransientExtras() on a persisted job"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2336
    :cond_17a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call addTriggerContentUri() on a persisted job"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2349
    :cond_182
    :goto_182
    iget p1, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    const/16 p2, 0x190

    if-eqz p1, :cond_1a9

    .line 2350
    iget-boolean p1, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-nez p1, :cond_1a1

    .line 2354
    iget p1, p0, Landroid/app/job/JobInfo;->mPriority:I

    if-eq p1, p2, :cond_1a9

    iget p1, p0, Landroid/app/job/JobInfo;->mPriority:I

    const/16 v1, 0x12c

    if-ne p1, v1, :cond_199

    goto :goto_1a9

    .line 2355
    :cond_199
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An important while foreground job must be high or default priority. Don\'t mark unimportant tasks as important while foreground."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2351
    :cond_1a1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An important while foreground job cannot have a time delay"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2361
    :cond_1a9
    :goto_1a9
    iget p1, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1b1

    move p1, p4

    goto :goto_1b2

    :cond_1b1
    move p1, v0

    .line 2362
    :goto_1b2
    iget v1, p0, Landroid/app/job/JobInfo;->flags:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-eqz v1, :cond_1bb

    move v1, p4

    goto :goto_1bc

    :cond_1bb
    move v1, v0

    .line 2363
    :goto_1bc
    iget v5, p0, Landroid/app/job/JobInfo;->mPriority:I

    sparse-switch v5, :sswitch_data_418

    .line 2383
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid priority level provided: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/app/job/JobInfo;->mPriority:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2365
    :sswitch_1dc
    if-nez p1, :cond_205

    if-eqz v1, :cond_1e1

    goto :goto_205

    .line 2366
    :cond_1e1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only expedited or user-initiated jobs can have max priority"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2371
    :sswitch_1e9
    iget v5, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_1fc

    .line 2374
    iget-boolean v5, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v5, :cond_1f4

    goto :goto_205

    .line 2375
    :cond_1f4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Periodic jobs cannot be high priority"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2372
    :cond_1fc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Prefetch jobs cannot be high priority"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2381
    :sswitch_204
    nop

    .line 2386
    :cond_205
    :goto_205
    iget-object v5, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-nez v5, :cond_218

    iget v5, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    if-nez v5, :cond_218

    iget-object v5, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v5, :cond_217

    iget-object v5, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    array-length v5, v5

    if-lez v5, :cond_217

    goto :goto_218

    :cond_217
    move p4, v0

    .line 2389
    :cond_218
    :goto_218
    iget-boolean v5, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-eqz v5, :cond_2f9

    iget-boolean v5, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v5, :cond_2f9

    .line 2390
    const-string v5, "Job \'"

    const-string v6, "#"

    if-nez p4, :cond_254

    .line 2391
    sget-object p3, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object v2, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget v2, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, "\' has a deadline with no functional constraints. The deadline won\'t improve job execution latency. Consider removing the deadline."

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f9

    .line 2396
    :cond_254
    iget-boolean p4, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-eqz p4, :cond_25a

    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 2397
    :cond_25a
    iget-wide v7, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    sub-long/2addr v7, v2

    const-wide/32 v9, 0xdbba0

    cmp-long p4, v7, v9

    if-gez p4, :cond_2f9

    .line 2398
    const-string p4, ", deadline="

    if-eqz p3, :cond_2ac

    .line 2399
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->enforceMinimumTimeWindows()Z

    move-result p3

    if-nez p3, :cond_26f

    goto :goto_2ac

    .line 2400
    :cond_26f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Time window too short. Constraints unlikely to be satisfied. Increase deadline to a reasonable duration. Job \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 2403
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' has delay="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide p3, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2407
    :cond_2ac
    :goto_2ac
    sget-object p3, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' has a deadline with functional constraints and an extremely short time window of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms (delay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, "). The functional constraints are not likely to be satisfied when the job runs."

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :cond_2f9
    :goto_2f9
    const/16 p3, 0x1f4

    if-eqz p1, :cond_362

    .line 2421
    iget-boolean p1, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-nez p1, :cond_35a

    .line 2424
    iget-boolean p1, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-nez p1, :cond_352

    .line 2427
    iget-boolean p1, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez p1, :cond_34a

    .line 2430
    if-nez v1, :cond_342

    .line 2433
    iget p1, p0, Landroid/app/job/JobInfo;->mPriority:I

    if-eq p1, p3, :cond_31c

    iget p1, p0, Landroid/app/job/JobInfo;->mPriority:I

    if-ne p1, p2, :cond_314

    goto :goto_31c

    .line 2434
    :cond_314
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An expedited job must be high or max priority. Don\'t use expedited jobs for unimportant tasks."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2438
    :cond_31c
    :goto_31c
    iget p1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 p1, p1, -0x9

    if-nez p1, :cond_33a

    iget p1, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 p1, p1, -0x19

    if-nez p1, :cond_33a

    .line 2443
    iget-object p1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz p1, :cond_362

    iget-object p1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    array-length p1, p1

    if-gtz p1, :cond_332

    goto :goto_362

    .line 2444
    :cond_332
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call addTriggerContentUri() on an expedited job"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2440
    :cond_33a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An expedited job can only have network and storage-not-low constraints"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2431
    :cond_342
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An expedited job cannot be user-initiated"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2428
    :cond_34a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An expedited job cannot be periodic"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2425
    :cond_352
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An expedited job cannot have a deadline"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2422
    :cond_35a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An expedited job cannot have a time delay"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2449
    :cond_362
    :goto_362
    if-eqz v1, :cond_3cf

    .line 2450
    iget-boolean p1, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-nez p1, :cond_3c7

    .line 2453
    iget-boolean p1, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-nez p1, :cond_3bf

    .line 2456
    iget-boolean p1, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez p1, :cond_3b7

    .line 2459
    iget p1, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_3af

    .line 2463
    iget p1, p0, Landroid/app/job/JobInfo;->mPriority:I

    if-ne p1, p3, :cond_3a7

    .line 2466
    iget p1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_39f

    .line 2470
    iget-object p1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz p1, :cond_392

    iget-object p1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    array-length p1, p1

    if-gtz p1, :cond_38a

    goto :goto_392

    .line 2471
    :cond_38a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call addTriggerContentUri() on a user-initiated job"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2475
    :cond_392
    :goto_392
    iget-object p1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz p1, :cond_397

    goto :goto_3cf

    .line 2476
    :cond_397
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A user-initiated data transfer job must specify a valid network type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2467
    :cond_39f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A user-initiated job cannot have a device-idle constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2464
    :cond_3a7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A user-initiated job must be max priority."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2460
    :cond_3af
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A user-initiated job cannot also be a prefetch job"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2457
    :cond_3b7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A user-initiated job cannot be periodic"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2454
    :cond_3bf
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A user-initiated job cannot have a deadline"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2451
    :cond_3c7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A user-initiated job cannot have a time delay"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2481
    :cond_3cf
    :goto_3cf
    iget-object p1, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-gt p1, v4, :cond_407

    .line 2485
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 2486
    nop

    :goto_3dd
    iget-object p2, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v0, p2, :cond_3f7

    .line 2487
    iget-object p2, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/app/job/JobInfo;->validateDebugTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2486
    add-int/lit8 v0, v0, 0x1

    goto :goto_3dd

    .line 2489
    :cond_3f7
    iget-object p2, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 2490
    iget-object p2, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2492
    iget-object p1, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/job/JobInfo;->validateTraceTag(Ljava/lang/String;)Ljava/lang/String;

    .line 2493
    return-void

    .line 2482
    :cond_407
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have more than 32 tags"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2264
    :cond_40f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t provide estimated network usage without requiring a network"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_418
    .sparse-switch
        0x64 -> :sswitch_204
        0xc8 -> :sswitch_204
        0x12c -> :sswitch_204
        0x190 -> :sswitch_1e9
        0x1f4 -> :sswitch_1dc
    .end sparse-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 853
    instance-of v0, p1, Landroid/app/job/JobInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 854
    return v1

    .line 856
    :cond_6
    check-cast p1, Landroid/app/job/JobInfo;

    .line 857
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    iget v2, p1, Landroid/app/job/JobInfo;->jobId:I

    if-eq v0, v2, :cond_f

    .line 858
    return v1

    .line 861
    :cond_f
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    iget-object v2, p1, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-static {v0, v2}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 862
    return v1

    .line 865
    :cond_1a
    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    iget-object v2, p1, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-static {v0, v2}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 866
    return v1

    .line 870
    :cond_25
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    iget-object v2, p1, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eq v0, v2, :cond_2c

    .line 871
    return v1

    .line 873
    :cond_2c
    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    iget v2, p1, Landroid/app/job/JobInfo;->clipGrantFlags:I

    if-eq v0, v2, :cond_33

    .line 874
    return v1

    .line 876
    :cond_33
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 877
    return v1

    .line 879
    :cond_3e
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    iget v2, p1, Landroid/app/job/JobInfo;->constraintFlags:I

    if-eq v0, v2, :cond_45

    .line 880
    return v1

    .line 882
    :cond_45
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    iget-object v2, p1, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 883
    return v1

    .line 885
    :cond_50
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    iget-wide v4, p1, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_59

    .line 886
    return v1

    .line 888
    :cond_59
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    iget-wide v4, p1, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_62

    .line 889
    return v1

    .line 891
    :cond_62
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    iget-boolean v2, p1, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-eq v0, v2, :cond_69

    .line 892
    return v1

    .line 894
    :cond_69
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    iget-boolean v2, p1, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-eq v0, v2, :cond_70

    .line 895
    return v1

    .line 897
    :cond_70
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p1, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 898
    return v1

    .line 900
    :cond_7b
    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    iget-wide v4, p1, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_84

    .line 901
    return v1

    .line 903
    :cond_84
    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    iget-wide v4, p1, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8d

    .line 904
    return v1

    .line 906
    :cond_8d
    iget-wide v2, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    iget-wide v4, p1, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_96

    .line 907
    return v1

    .line 909
    :cond_96
    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    iget-wide v4, p1, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9f

    .line 910
    return v1

    .line 912
    :cond_9f
    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    iget-wide v4, p1, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a8

    .line 913
    return v1

    .line 915
    :cond_a8
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    iget-boolean v2, p1, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eq v0, v2, :cond_af

    .line 916
    return v1

    .line 918
    :cond_af
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    iget-boolean v2, p1, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eq v0, v2, :cond_b6

    .line 919
    return v1

    .line 921
    :cond_b6
    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    iget-wide v4, p1, Landroid/app/job/JobInfo;->intervalMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_bf

    .line 922
    return v1

    .line 924
    :cond_bf
    iget-wide v2, p0, Landroid/app/job/JobInfo;->flexMillis:J

    iget-wide v4, p1, Landroid/app/job/JobInfo;->flexMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c8

    .line 925
    return v1

    .line 927
    :cond_c8
    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    iget-wide v4, p1, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d1

    .line 928
    return v1

    .line 930
    :cond_d1
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    iget v2, p1, Landroid/app/job/JobInfo;->backoffPolicy:I

    if-eq v0, v2, :cond_d8

    .line 931
    return v1

    .line 933
    :cond_d8
    iget v0, p0, Landroid/app/job/JobInfo;->mBias:I

    iget v2, p1, Landroid/app/job/JobInfo;->mBias:I

    if-eq v0, v2, :cond_df

    .line 934
    return v1

    .line 936
    :cond_df
    iget v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    iget v2, p1, Landroid/app/job/JobInfo;->mPriority:I

    if-eq v0, v2, :cond_e6

    .line 937
    return v1

    .line 939
    :cond_e6
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    iget v2, p1, Landroid/app/job/JobInfo;->flags:I

    if-eq v0, v2, :cond_ed

    .line 940
    return v1

    .line 942
    :cond_ed
    iget-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    .line 943
    return v1

    .line 945
    :cond_f8
    iget-object v0, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_103

    .line 946
    return v1

    .line 948
    :cond_103
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist getBackoffPolicy()I
    .registers 2

    .line 767
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    return v0
.end method

.method public blacklist getBias()I
    .registers 2

    .line 547
    iget v0, p0, Landroid/app/job/JobInfo;->mBias:I

    return v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .registers 2

    .line 528
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getClipGrantFlags()I
    .registers 2

    .line 535
    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    return v0
.end method

.method public greylist-max-o getConstraintFlags()I
    .registers 2

    .line 600
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    return v0
.end method

.method public whitelist getDebugTags()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDebugTagsArraySet()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getEstimatedNetworkDownloadBytes()J
    .registers 3

    .line 673
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    return-wide v0
.end method

.method public whitelist getEstimatedNetworkUploadBytes()J
    .registers 3

    .line 685
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    return-wide v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 514
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .registers 2

    .line 560
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    return v0
.end method

.method public whitelist getFlexMillis()J
    .registers 3

    .line 748
    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    return-wide v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 507
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    return v0
.end method

.method public whitelist getInitialBackoffMillis()J
    .registers 3

    .line 758
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    return-wide v0
.end method

.method public whitelist getIntervalMillis()J
    .registers 3

    .line 738
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    return-wide v0
.end method

.method public whitelist getMaxExecutionDelayMillis()J
    .registers 5

    .line 712
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMinLatencyMillis()J
    .registers 5

    .line 705
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMinimumNetworkChunkBytes()J
    .registers 3

    .line 696
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    return-wide v0
.end method

.method public whitelist getNetworkType()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 641
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 642
    return v1

    .line 643
    :cond_6
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 644
    const/4 v0, 0x2

    return v0

    .line 645
    :cond_12
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 646
    const/4 v0, 0x3

    return v0

    .line 647
    :cond_1e
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 648
    const/4 v0, 0x4

    return v0

    .line 650
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getPriority()I
    .registers 2

    .line 555
    iget v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    return v0
.end method

.method public whitelist getRequiredNetwork()Landroid/net/NetworkRequest;
    .registers 2

    .line 661
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public whitelist getService()Landroid/content/ComponentName;
    .registers 2

    .line 542
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getTraceTag()Ljava/lang/String;
    .registers 2

    .line 794
    iget-object v0, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTransientExtras()Landroid/os/Bundle;
    .registers 2

    .line 521
    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTriggerContentMaxDelay()J
    .registers 3

    .line 627
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    return-wide v0
.end method

.method public whitelist getTriggerContentUpdateDelay()J
    .registers 3

    .line 618
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    return-wide v0
.end method

.method public whitelist getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;
    .registers 2

    .line 609
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    return-object v0
.end method

.method public greylist-max-o hasEarlyConstraint()Z
    .registers 2

    .line 839
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    return v0
.end method

.method public greylist-max-o hasLateConstraint()Z
    .registers 2

    .line 848
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 953
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 954
    iget-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_f

    .line 955
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 957
    :cond_f
    iget-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1c

    .line 958
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 960
    :cond_1c
    iget-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eqz v1, :cond_29

    .line 961
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 963
    :cond_29
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    add-int/2addr v0, v1

    .line 964
    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    if-eqz v1, :cond_3b

    .line 965
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 967
    :cond_3b
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    add-int/2addr v0, v1

    .line 968
    iget-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v1, :cond_4d

    .line 969
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 971
    :cond_4d
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 972
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 973
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 974
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 975
    iget-object v1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v1, :cond_7e

    .line 976
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 978
    :cond_7e
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 979
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 980
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 981
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 982
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 983
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 984
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 985
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 986
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 987
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 988
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    add-int/2addr v0, v1

    .line 989
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/job/JobInfo;->mBias:I

    add-int/2addr v0, v1

    .line 990
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/job/JobInfo;->mPriority:I

    add-int/2addr v0, v1

    .line 991
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/job/JobInfo;->flags:I

    add-int/2addr v0, v1

    .line 992
    iget-object v1, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_fd

    .line 993
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 995
    :cond_fd
    iget-object v1, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    if-eqz v1, :cond_10a

    .line 996
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 998
    :cond_10a
    return v0
.end method

.method public greylist-max-o isExemptedFromAppStandby()Z
    .registers 2

    .line 565
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isExpedited()Z
    .registers 2

    .line 801
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isImportantWhileForeground()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPeriodic()Z
    .registers 2

    .line 721
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    return v0
.end method

.method public whitelist isPersisted()Z
    .registers 2

    .line 728
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    return v0
.end method

.method public whitelist isPrefetch()Z
    .registers 2

    .line 830
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isRequireBatteryNotLow()Z
    .registers 2

    .line 579
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isRequireCharging()Z
    .registers 3

    .line 572
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist isRequireDeviceIdle()Z
    .registers 2

    .line 586
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isRequireStorageNotLow()Z
    .registers 2

    .line 593
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isUserInitiated()Z
    .registers 2

    .line 808
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(job:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 1094
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 1096
    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1097
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 1098
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1100
    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 1102
    :cond_23
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    :goto_26
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1105
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1107
    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1108
    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1109
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v0, :cond_4c

    .line 1110
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4f

    .line 1113
    :cond_4c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    :goto_4f
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1116
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1117
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1118
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1119
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1120
    iget-boolean p2, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    iget-boolean p2, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1123
    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1124
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1125
    iget p2, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    iget-boolean p2, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    iget-boolean p2, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    iget p2, p0, Landroid/app/job/JobInfo;->mBias:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    iget p2, p0, Landroid/app/job/JobInfo;->mPriority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    iget p2, p0, Landroid/app/job/JobInfo;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    iget-object p2, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    .line 1134
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    nop

    :goto_a9
    if-ge v2, p2, :cond_b9

    .line 1136
    iget-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1135
    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    .line 1138
    :cond_b9
    iget-object p2, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1139
    return-void
.end method
