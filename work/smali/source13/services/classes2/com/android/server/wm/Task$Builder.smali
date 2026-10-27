.class Lcom/android/server/wm/Task$Builder;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mActivityOptions:Landroid/app/ActivityOptions;

.field private mActivityType:I

.field private mAffinity:Ljava/lang/String;

.field private mAffinityIntent:Landroid/content/Intent;

.field private mAskedCompatMode:Z

.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mAutoRemoveRecents:Z

.field private mCallingFeatureId:Ljava/lang/String;

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private mCreatedByOrganizer:Z

.field private mDeferTaskAppear:Z

.field private mEffectiveUid:I

.field private mHasBeenVisible:Z

.field private mIntent:Landroid/content/Intent;

.field private mLastDescription:Ljava/lang/String;

.field private mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field private mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private mLastTimeMoved:J

.field private mLaunchCookie:Landroid/os/IBinder;

.field private mLaunchFlags:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field private mNextAffiliateTaskId:I

.field private mOnTop:Z

.field private mOrigActivity:Landroid/content/ComponentName;

.field private mParent:Lcom/android/server/wm/WindowContainer;

.field private mPrevAffiliateTaskId:I

.field private mRealActivity:Landroid/content/ComponentName;

.field private mRealActivitySuspended:Z

.field private mRemoveWithTaskOrganizer:Z

.field private mResizeMode:I

.field private mRootAffinity:Ljava/lang/String;

.field private mRootWasReset:Z

.field private mSourceTask:Lcom/android/server/wm/Task;

.field private mSupportsPictureInPicture:Z

.field private mTaskAffiliation:I

.field private mTaskId:I

.field private mUserId:I

.field private mUserSetupComplete:Z

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private mWindowingMode:I


# direct methods
.method static bridge synthetic -$$Nest$msetAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetAffinityIntent(Lcom/android/server/wm/Task$Builder;Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAffinityIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetAskedCompatMode(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAskedCompatMode(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetAutoRemoveRecents(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAutoRemoveRecents(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetCallingFeatureId(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetCallingPackage(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetCallingUid(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingUid(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetLastDescription(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setLastDescription(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetLastSnapshotData(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetLastTaskDescription(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setLastTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetLastTimeMoved(Lcom/android/server/wm/Task$Builder;J)Lcom/android/server/wm/Task$Builder;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task$Builder;->setLastTimeMoved(J)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetNeverRelinquishIdentity(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setNeverRelinquishIdentity(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetNextAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setNextAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetOrigActivity(Lcom/android/server/wm/Task$Builder;Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setOrigActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetPrevAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setPrevAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetRealActivitySuspended(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRealActivitySuspended(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetResizeMode(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setResizeMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetRootAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRootAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetRootWasReset(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRootWasReset(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetSupportsPictureInPicture(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setSupportsPictureInPicture(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetTaskAffiliation(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setTaskAffiliation(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetUserId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setUserId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetUserSetupComplete(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setUserSetupComplete(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetVoiceInteractor(Lcom/android/server/wm/Task$Builder;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7281
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    .line 7282
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    .line 7290
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    .line 7291
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    .line 7297
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 7317
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7318
    return-void
.end method

.method private setAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "affinity"    # Ljava/lang/String;

    .line 7533
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    .line 7534
    return-object p0
.end method

.method private setAffinityIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "affinityIntent"    # Landroid/content/Intent;

    .line 7528
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    .line 7529
    return-object p0
.end method

.method private setAskedCompatMode(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "askedCompatMode"    # Z

    .line 7523
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mAskedCompatMode:Z

    .line 7524
    return-object p0
.end method

.method private setAutoRemoveRecents(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "autoRemoveRecents"    # Z

    .line 7518
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    .line 7519
    return-object p0
.end method

.method private setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "callingFeatureId"    # Ljava/lang/String;

    .line 7483
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    .line 7484
    return-object p0
.end method

.method private setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 7448
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    .line 7449
    return-object p0
.end method

.method private setCallingUid(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "callingUid"    # I

    .line 7443
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    .line 7444
    return-object p0
.end method

.method private setLastDescription(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "lastDescription"    # Ljava/lang/String;

    .line 7493
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    .line 7494
    return-object p0
.end method

.method private setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "lastSnapshotData"    # Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 7503
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 7504
    return-object p0
.end method

.method private setLastTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 7498
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 7499
    return-object p0
.end method

.method private setLastTimeMoved(J)Lcom/android/server/wm/Task$Builder;
    .registers 3
    .param p1, "lastTimeMoved"    # J

    .line 7433
    iput-wide p1, p0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    .line 7434
    return-object p0
.end method

.method private setNeverRelinquishIdentity(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "neverRelinquishIdentity"    # Z

    .line 7438
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    .line 7439
    return-object p0
.end method

.method private setNextAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "nextAffiliateTaskId"    # I

    .line 7478
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    .line 7479
    return-object p0
.end method

.method private setOrigActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "origActivity"    # Landroid/content/ComponentName;

    .line 7508
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    .line 7509
    return-object p0
.end method

.method private setPrevAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "prevAffiliateTaskId"    # I

    .line 7473
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    .line 7474
    return-object p0
.end method

.method private setRealActivitySuspended(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "realActivitySuspended"    # Z

    .line 7488
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    .line 7489
    return-object p0
.end method

.method private setResizeMode(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "resizeMode"    # I

    .line 7453
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    .line 7454
    return-object p0
.end method

.method private setRootAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "rootAffinity"    # Ljava/lang/String;

    .line 7538
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    .line 7539
    return-object p0
.end method

.method private setRootWasReset(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "rootWasReset"    # Z

    .line 7513
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    .line 7514
    return-object p0
.end method

.method private setSupportsPictureInPicture(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "supportsPictureInPicture"    # Z

    .line 7458
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    .line 7459
    return-object p0
.end method

.method private setTaskAffiliation(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "taskAffiliation"    # I

    .line 7468
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    .line 7469
    return-object p0
.end method

.method private setUserId(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "userId"    # I

    .line 7428
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    .line 7429
    return-object p0
.end method

.method private setUserSetupComplete(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "userSetupComplete"    # Z

    .line 7463
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    .line 7464
    return-object p0
.end method

.method private setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 7543
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 7544
    return-object p0
.end method

.method private validateRootTask(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 11
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 7548
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-nez v0, :cond_b

    .line 7552
    iput v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 7555
    :cond_b
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4e

    if-eqz v0, :cond_4e

    .line 7560
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 7561
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_19

    goto :goto_4e

    .line 7562
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Can\'t have multiple."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7568
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    :cond_4e
    :goto_4e
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iget-object v3, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v4, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v5, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZ)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 7576
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_74

    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-ne v4, v1, :cond_6c

    goto :goto_74

    .line 7578
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Root task with pinned windowing mode cannot with non-standard activity type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7583
    :cond_74
    :goto_74
    if-ne v0, v3, :cond_83

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 7585
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->dismissPip()V

    .line 7588
    :cond_83
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_90

    .line 7589
    iget v1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    .line 7593
    :cond_90
    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_96

    .line 7594
    const/4 v0, 0x0

    goto :goto_a5

    :cond_96
    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iget v5, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    iget-object v6, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v7, p0, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    iget v8, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 7596
    .local v0, "launchRootTask":Lcom/android/server/wm/Task;
    :goto_a5
    if-eqz v0, :cond_ab

    .line 7599
    iput v2, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 7600
    iput-object v0, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 7603
    :cond_ab
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getNextRootTaskId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    .line 7604
    return-void

    .line 7572
    .end local v0    # "launchRootTask":Lcom/android/server/wm/Task;
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create root task for unsupported windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method build()Lcom/android/server/wm/Task;
    .registers 7

    .line 7607
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_d

    instance-of v1, v0, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_d

    .line 7608
    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task$Builder;->validateRootTask(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 7611
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1f

    .line 7612
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 7613
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7616
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    .line 7617
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    .line 7618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    .line 7619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    .line 7620
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    .line 7621
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    .line 7622
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    .line 7623
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    .line 7624
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_5e

    .line 7625
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getRemoveWithTaskOranizer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    .line 7628
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 7629
    .local v1, "task":Lcom/android/server/wm/Task;
    iget-boolean v2, p0, Lcom/android/server/wm/Task$Builder;->mHasBeenVisible:Z

    invoke-static {v1, v2}, Lcom/android/server/wm/Task;->-$$Nest$fputmHasBeenVisible(Lcom/android/server/wm/Task;Z)V

    .line 7633
    iget v2, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-eqz v2, :cond_6e

    .line 7634
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setActivityType(I)V

    .line 7637
    :cond_6e
    iget-object v2, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v2, :cond_9b

    .line 7638
    instance-of v3, v2, Lcom/android/server/wm/Task;

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-eqz v3, :cond_92

    .line 7639
    check-cast v2, Lcom/android/server/wm/Task;

    .line 7640
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    iget-boolean v3, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    if-eqz v3, :cond_82

    goto :goto_83

    :cond_82
    move v4, v5

    :goto_83
    iget-object v3, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_8d

    move v3, v0

    goto :goto_8e

    :cond_8d
    const/4 v3, 0x0

    :goto_8e
    invoke-static {v2, v1, v4, v3}, Lcom/android/server/wm/Task;->-$$Nest$maddChild(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;IZ)V

    .line 7642
    .end local v2    # "parentTask":Lcom/android/server/wm/Task;
    goto :goto_9b

    .line 7643
    :cond_92
    iget-boolean v3, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    if-eqz v3, :cond_97

    goto :goto_98

    :cond_97
    move v4, v5

    :goto_98
    invoke-virtual {v2, v1, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 7648
    :cond_9b
    :goto_9b
    iget v2, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    if-eqz v2, :cond_a2

    .line 7649
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    .line 7652
    :cond_a2
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 7653
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    if-ne v2, v0, :cond_b0

    .line 7654
    iput-boolean v0, v1, Lcom/android/server/wm/Task;->mLaunchFullScreenInDesktopMode:Z

    .line 7657
    :cond_b0
    return-object v1
.end method

.method buildInner()Lcom/android/server/wm/Task;
    .registers 45

    .line 7663
    move-object/from16 v0, p0

    new-instance v41, Lcom/android/server/wm/Task;

    move-object/from16 v1, v41

    iget-object v2, v0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    iget-object v4, v0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    iget-object v9, v0, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    iget-boolean v10, v0, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    iget-boolean v11, v0, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    iget-boolean v12, v0, Lcom/android/server/wm/Task$Builder;->mAskedCompatMode:Z

    iget v13, v0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    iget v14, v0, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    iget-object v15, v0, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    move-object/from16 v42, v1

    move-object/from16 v43, v2

    iget-wide v1, v0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    move-wide/from16 v16, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    move/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    move-object/from16 v20, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    move/from16 v22, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    move/from16 v23, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    move/from16 v24, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    move-object/from16 v26, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    move/from16 v27, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    move/from16 v28, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    move/from16 v29, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    move/from16 v30, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    move/from16 v31, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    move/from16 v32, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v35, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    move/from16 v36, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLaunchCookie:Landroid/os/IBinder;

    move-object/from16 v37, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    move/from16 v38, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    move/from16 v39, v1

    const/16 v40, 0x0

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct/range {v1 .. v40}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZLcom/android/server/wm/Task-IA;)V

    return-object v41
.end method

.method getActivityType()I
    .registers 2

    .line 7386
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    return v0
.end method

.method getCreatedByOrganizer()Z
    .registers 2

    .line 7404
    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    return v0
.end method

.method getWindowingMode()I
    .registers 2

    .line 7395
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    return v0
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 7366
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 7367
    return-object p0
.end method

.method setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .line 7371
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 7372
    return-object p0
.end method

.method setActivityType(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "activityType"    # I

    .line 7381
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 7382
    return-object p0
.end method

.method setCreatedByOrganizer(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "createdByOrganizer"    # Z

    .line 7399
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    .line 7400
    return-object p0
.end method

.method setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "defer"    # Z

    .line 7408
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    .line 7409
    return-object p0
.end method

.method setEffectiveUid(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "effectiveUid"    # I

    .line 7351
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    .line 7352
    return-object p0
.end method

.method setHasBeenVisible(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "hasBeenVisible"    # Z

    .line 7423
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mHasBeenVisible:Z

    .line 7424
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 7341
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    .line 7342
    return-object p0
.end method

.method setLaunchCookie(Landroid/os/IBinder;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "launchCookie"    # Landroid/os/IBinder;

    .line 7413
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchCookie:Landroid/os/IBinder;

    .line 7414
    return-object p0
.end method

.method setLaunchFlags(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "launchFlags"    # I

    .line 7331
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    .line 7332
    return-object p0
.end method

.method setMinHeight(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "minHeight"    # I

    .line 7361
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    .line 7362
    return-object p0
.end method

.method setMinWidth(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "minWidth"    # I

    .line 7356
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    .line 7357
    return-object p0
.end method

.method setOnTop(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "onTop"    # Z

    .line 7418
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    .line 7419
    return-object p0
.end method

.method setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "parent"    # Lcom/android/server/wm/WindowContainer;

    .line 7321
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 7322
    return-object p0
.end method

.method setRealActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "realActivity"    # Landroid/content/ComponentName;

    .line 7346
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    .line 7347
    return-object p0
.end method

.method setSourceTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "sourceTask"    # Lcom/android/server/wm/Task;

    .line 7326
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    .line 7327
    return-object p0
.end method

.method setTaskId(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "taskId"    # I

    .line 7336
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    .line 7337
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 7376
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 7377
    return-object p0
.end method

.method setWindowingMode(I)Lcom/android/server/wm/Task$Builder;
    .registers 2
    .param p1, "windowingMode"    # I

    .line 7390
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 7391
    return-object p0
.end method
