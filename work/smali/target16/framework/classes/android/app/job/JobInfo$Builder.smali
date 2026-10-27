.class public final Landroid/app/job/JobInfo$Builder;
.super Ljava/lang/Object;
.source "JobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mBackoffPolicy:I

.field private greylist-max-o mBackoffPolicySet:Z

.field private blacklist mBias:I

.field private greylist-max-o mClipData:Landroid/content/ClipData;

.field private greylist-max-o mClipGrantFlags:I

.field private greylist-max-o mConstraintFlags:I

.field private final blacklist mDebugTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExtras:Landroid/os/PersistableBundle;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mFlexMillis:J

.field private greylist-max-o mHasEarlyConstraint:Z

.field private greylist-max-o mHasLateConstraint:Z

.field private greylist-max-o mInitialBackoffMillis:J

.field private greylist-max-o mIntervalMillis:J

.field private greylist-max-o mIsPeriodic:Z

.field private greylist-max-o mIsPersisted:Z

.field private final greylist-max-o mJobId:I

.field private final greylist-max-o mJobService:Landroid/content/ComponentName;

.field private greylist-max-o mMaxExecutionDelayMillis:J

.field private greylist-max-o mMinLatencyMillis:J

.field private blacklist mMinimumNetworkChunkBytes:J

.field private greylist-max-o mNetworkDownloadBytes:J

.field private greylist-max-o mNetworkRequest:Landroid/net/NetworkRequest;

.field private greylist-max-o mNetworkUploadBytes:J

.field private greylist-max-o mPriority:I

.field private blacklist mTraceTag:Ljava/lang/String;

.field private greylist-max-o mTransientExtras:Landroid/os/Bundle;

.field private greylist-max-o mTriggerContentMaxDelay:J

.field private greylist-max-o mTriggerContentUpdateDelay:J

.field private greylist-max-o mTriggerContentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBackoffPolicy(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBias(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClipData(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClipGrantFlags(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConstraintFlags(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDebugTags(Landroid/app/job/JobInfo$Builder;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlexMillis(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasEarlyConstraint(Landroid/app/job/JobInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasLateConstraint(Landroid/app/job/JobInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialBackoffMillis(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntervalMillis(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPeriodic(Landroid/app/job/JobInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPersisted(Landroid/app/job/JobInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJobId(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJobService(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxExecutionDelayMillis(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinLatencyMillis(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumNetworkChunkBytes(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkDownloadBytes(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkRequest(Landroid/app/job/JobInfo$Builder;)Landroid/net/NetworkRequest;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkUploadBytes(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTraceTag(Landroid/app/job/JobInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mTraceTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransientExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerContentMaxDelay(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerContentUpdateDelay(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor whitelist <init>(ILandroid/content/ComponentName;)V
    .registers 6

    .line 1297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1251
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1252
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 1255
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    .line 1256
    const/16 v1, 0x12c

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 1262
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    .line 1263
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    .line 1264
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    .line 1266
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 1267
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 1279
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 1280
    const/4 v1, 0x1

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 1282
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 1283
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    .line 1298
    iput-object p2, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    .line 1299
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    .line 1300
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/job/JobInfo;)V
    .registers 5

    .line 1306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1251
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1252
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 1255
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    .line 1256
    const/16 v1, 0x12c

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 1262
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    .line 1263
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    .line 1264
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    .line 1266
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 1267
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 1279
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 1280
    const/4 v1, 0x1

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 1282
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 1283
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    .line 1307
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    .line 1308
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    .line 1309
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1310
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 1311
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    .line 1312
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    .line 1313
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getBias()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    .line 1314
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 1315
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1316
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1317
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    .line 1318
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    .line 1319
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    .line 1320
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 1321
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_91

    :cond_90
    const/4 v0, 0x0

    :goto_91
    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 1322
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 1323
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 1324
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    .line 1325
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    .line 1326
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    .line 1327
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    .line 1328
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 1329
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    .line 1330
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    .line 1331
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    .line 1332
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 1335
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 1336
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 1337
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getDebugTags()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1338
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mTraceTag:Ljava/lang/String;

    .line 1339
    return-void
.end method


# virtual methods
.method public whitelist addDebugTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1364
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    invoke-static {p1}, Landroid/app/job/JobInfo;->validateDebugTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1365
    return-object p0
.end method

.method public blacklist addDebugTags(Ljava/util/Set;)Landroid/app/job/JobInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/job/JobInfo$Builder;"
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1372
    return-object p0
.end method

.method public whitelist addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1804
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 1807
    :cond_b
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    return-object p0
.end method

.method public whitelist build()Landroid/app/job/JobInfo;
    .registers 6

    .line 2219
    const-wide/32 v0, 0xb98555f

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    .line 2220
    const-wide/32 v1, 0xf1e9ef7

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    .line 2221
    const-wide/32 v2, 0x128fa179

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    .line 2222
    const-wide/32 v3, 0x1345eb5a

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    .line 2219
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build(ZZZZ)Landroid/app/job/JobInfo;
    .registers 7

    .line 2232
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_b

    goto :goto_13

    .line 2233
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2237
    :cond_13
    :goto_13
    new-instance v0, Landroid/app/job/JobInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo-IA;)V

    .line 2238
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/job/JobInfo;->enforceValidity(ZZZZ)V

    .line 2240
    return-object v0
.end method

.method public whitelist removeDebugTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1384
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1385
    return-object p0
.end method

.method public whitelist setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
    .registers 9

    .line 1976
    invoke-static {}, Landroid/app/job/JobInfo;->getMinBackoffMillis()J

    move-result-wide v0

    .line 1977
    cmp-long v2, p1, v0

    if-gez v2, :cond_41

    .line 1978
    invoke-static {}, Landroid/app/job/JobInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested backoff "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for job "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is too small; raising to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1979
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1978
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    move-wide p1, v0

    .line 1983
    :cond_41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 1984
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 1985
    iput p3, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 1986
    return-object p0
.end method

.method public blacklist setBias(I)Landroid/app/job/JobInfo$Builder;
    .registers 2

    .line 1392
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    .line 1393
    return-object p0
.end method

.method public whitelist setClipData(Landroid/content/ClipData;I)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1489
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    .line 1490
    iput p2, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    .line 1491
    return-object p0
.end method

.method public whitelist setEstimatedNetworkBytes(JJ)Landroid/app/job/JobInfo$Builder;
    .registers 5

    .line 1645
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    .line 1646
    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    .line 1647
    return-object p0
.end method

.method public whitelist setExpedited(Z)Landroid/app/job/JobInfo$Builder;
    .registers 4

    .line 2046
    const/16 v0, 0x12c

    const/16 v1, 0x1f4

    if-eqz p1, :cond_13

    .line 2047
    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2048
    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne p1, v0, :cond_25

    .line 2051
    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    goto :goto_25

    .line 2054
    :cond_13
    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne p1, v1, :cond_1f

    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1f

    .line 2057
    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 2059
    :cond_1f
    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2061
    :cond_25
    :goto_25
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .registers 2

    .line 1445
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1446
    return-object p0
.end method

.method public greylist-max-r setFlags(I)Landroid/app/job/JobInfo$Builder;
    .registers 2

    .line 1435
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 1436
    return-object p0
.end method

.method public whitelist setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2152
    invoke-static {}, Landroid/app/job/JobInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested important-while-foreground flag for job"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is ignored and takes no effect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    return-object p0
.end method

.method public whitelist setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1906
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    .line 1907
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 1908
    return-object p0
.end method

.method public whitelist setMinimumNetworkChunkBytes(J)Landroid/app/job/JobInfo$Builder;
    .registers 5

    .line 1676
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    goto :goto_15

    .line 1677
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Minimum chunk size must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1679
    :cond_15
    :goto_15
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    .line 1680
    return-object p0
.end method

.method public whitelist setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1953
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    .line 1954
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    .line 1955
    return-object p0
.end method

.method public whitelist setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1847
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;
    .registers 12

    .line 1864
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    .line 1865
    cmp-long v2, p1, v0

    const-string v3, " is too small; raising to "

    const-string v4, " for job "

    if-gez v2, :cond_41

    .line 1866
    invoke-static {}, Landroid/app/job/JobInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested interval "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1867
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1866
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    move-wide p1, v0

    .line 1871
    :cond_41
    const-wide/16 v0, 0x5

    mul-long/2addr v0, p1

    const-wide/16 v5, 0x64

    div-long/2addr v0, v5

    .line 1872
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1873
    cmp-long v2, p3, v0

    if-gez v2, :cond_88

    .line 1874
    invoke-static {}, Landroid/app/job/JobInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested flex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3, p4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1875
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1874
    invoke-static {v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    move-wide p3, v0

    .line 1879
    :cond_88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    .line 1880
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    .line 1881
    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    .line 1882
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 1883
    return-object p0
.end method

.method public whitelist setPersisted(Z)Landroid/app/job/JobInfo$Builder;
    .registers 2

    .line 2193
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    .line 2194
    return-object p0
.end method

.method public whitelist setPrefetch(Z)Landroid/app/job/JobInfo$Builder;
    .registers 2

    .line 2176
    if-eqz p1, :cond_9

    .line 2177
    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    goto :goto_f

    .line 2179
    :cond_9
    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2181
    :goto_f
    return-object p0
.end method

.method public whitelist setPriority(I)Landroid/app/job/JobInfo$Builder;
    .registers 4

    .line 1419
    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_c

    const/16 v0, 0x64

    if-ge p1, v0, :cond_9

    goto :goto_c

    .line 1428
    :cond_9
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 1429
    return-object p0

    .line 1420
    :cond_c
    :goto_c
    const-wide/32 v0, 0x8653c4b

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p1

    if-nez p1, :cond_16

    .line 1426
    return-object p0

    .line 1421
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid priority value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;
    .registers 2

    .line 1588
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1589
    return-object p0
.end method

.method public whitelist setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
    .registers 4

    .line 1530
    if-nez p1, :cond_8

    .line 1531
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1

    .line 1533
    :cond_8
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1536
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1537
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1538
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1539
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1541
    const/4 v1, 0x1

    if-ne p1, v1, :cond_25

    goto :goto_3e

    .line 1543
    :cond_25
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2e

    .line 1544
    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_3e

    .line 1545
    :cond_2e
    const/4 v1, 0x3

    if-ne p1, v1, :cond_37

    .line 1546
    const/16 p1, 0x12

    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_3e

    .line 1547
    :cond_37
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3e

    .line 1548
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1551
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1717
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x3

    .line 1718
    if-eqz p1, :cond_8

    const/4 p1, 0x2

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1719
    return-object p0
.end method

.method public whitelist setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1701
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x2

    .line 1702
    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1703
    return-object p0
.end method

.method public whitelist setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1743
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x5

    .line 1744
    if-eqz p1, :cond_8

    const/4 p1, 0x4

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1745
    return-object p0
.end method

.method public whitelist setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1757
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x9

    .line 1758
    if-eqz p1, :cond_9

    const/16 p1, 0x8

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1759
    return-object p0
.end method

.method public whitelist setTraceTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    .registers 2

    .line 2211
    invoke-static {p1}, Landroid/app/job/JobInfo;->validateTraceTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mTraceTag:Ljava/lang/String;

    .line 2212
    return-object p0
.end method

.method public whitelist setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;
    .registers 2

    .line 1460
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 1461
    return-object p0
.end method

.method public whitelist setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1830
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 1831
    return-object p0
.end method

.method public whitelist setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;
    .registers 3

    .line 1819
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 1820
    return-object p0
.end method

.method public whitelist setUserInitiated(Z)Landroid/app/job/JobInfo$Builder;
    .registers 4

    .line 2105
    const/16 v0, 0x12c

    const/16 v1, 0x1f4

    if-eqz p1, :cond_13

    .line 2106
    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2107
    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne p1, v0, :cond_25

    .line 2110
    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    goto :goto_25

    .line 2113
    :cond_13
    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne p1, v1, :cond_1f

    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1f

    .line 2116
    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 2118
    :cond_1f
    iget p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2120
    :cond_25
    :goto_25
    return-object p0
.end method

.method public blacklist summarize()Ljava/lang/String;
    .registers 4

    .line 2247
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    .line 2248
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 2249
    :cond_b
    const-string/jumbo v0, "null"

    .line 2250
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JobInfo.Builder{job:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
