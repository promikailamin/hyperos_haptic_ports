.class Lcom/android/server/wm/ActivityClientController;
.super Landroid/app/IActivityClientController$Stub;
.source "ActivityClientController.java"


# static fields
.field private static final SET_PIP_ASPECT_RATIO_LIMIT:I = 0x3c

.field private static final SET_PIP_ASPECT_RATIO_TIME_WINDOW_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mContext:Landroid/content/Context;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

.field private final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 129
    invoke-direct {p0}, Landroid/app/IActivityClientController$Stub;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 131
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 132
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 133
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    .line 134
    return-void
.end method

.method private canGetLaunchedFrom()Z
    .registers 9

    .line 741
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 742
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_e

    .line 743
    return v2

    .line 745
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 746
    .local v1, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 747
    .local v3, "callingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v4, 0x0

    if-nez v3, :cond_1c

    .line 748
    return v4

    .line 750
    :cond_1c
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 751
    return v2

    .line 753
    :cond_23
    const/4 v5, 0x2

    .line 754
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 753
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 755
    .local v5, "installerNames":[Ljava/lang/String;
    array-length v6, v5

    if-lez v6, :cond_3c

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v5, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v4

    :goto_3d
    return v2
.end method

.method private ensureSetPipAspectRatioQuotaTracker()V
    .registers 6

    .line 930
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    if-nez v0, :cond_19

    .line 931
    new-instance v0, Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/utils/quota/Categorizer;->SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 933
    sget-object v1, Lcom/android/server/utils/quota/Category;->SINGLE_CATEGORY:Lcom/android/server/utils/quota/Category;

    const/16 v2, 0x3c

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 936
    :cond_19
    return-void
.end method

.method private ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;
    .registers 14
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "params"    # Landroid/app/PictureInPictureParams;

    .line 946
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_148

    .line 951
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 952
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_12b

    .line 957
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v1

    if-eqz v1, :cond_112

    .line 964
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 965
    .local v1, "userId":I
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 966
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 967
    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->getAspectRatio()Landroid/util/Rational;

    move-result-object v2

    .line 968
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getAspectRatio()Landroid/util/Rational;

    move-result-object v3

    .line 967
    invoke-virtual {v2, v3}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 969
    const-string/jumbo v4, "setPipAspectRatio"

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_61

    .line 971
    :cond_42
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Too many PiP aspect ratio change requests from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 975
    :cond_61
    :goto_61
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 977
    .local v2, "minAspectRatio":F
    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 980
    .local v3, "maxAspectRatio":F
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_c0

    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 982
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    move-result v9

    .line 981
    invoke-virtual {v4, v8, v9}, Lcom/android/server/wm/WindowManagerService;->isValidPictureInPictureAspectRatio(Lcom/android/server/wm/DisplayContent;F)Z

    move-result v4

    if-eqz v4, :cond_95

    goto :goto_c0

    .line 983
    :cond_95
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Aspect ratio is too extreme (must be between %f and %f)."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    .line 985
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v7, v5

    .line 983
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 988
    :cond_c0
    :goto_c0
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsExpandedPictureInPicture:Z

    if-eqz v4, :cond_108

    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetExpandedAspectRatio()Z

    move-result v4

    if-eqz v4, :cond_108

    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 990
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    move-result v9

    .line 989
    invoke-virtual {v4, v8, v9}, Lcom/android/server/wm/WindowManagerService;->isValidExpandedPictureInPictureAspectRatio(Lcom/android/server/wm/DisplayContent;F)Z

    move-result v4

    if-eqz v4, :cond_dd

    goto :goto_108

    .line 991
    :cond_dd
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Expanded aspect ratio is not extreme enough (must not be between %f and %f)."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    .line 994
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v7, v5

    .line 991
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 998
    :cond_108
    :goto_108
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/ActivityTaskManager;->getMaxNumPictureInPictureActions(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/PictureInPictureParams;->truncateActions(I)V

    .line 999
    return-object v0

    .line 958
    .end local v1    # "userId":I
    .end local v2    # "minAspectRatio":F
    .end local v3    # "maxAspectRatio":F
    :cond_112
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Current activity does not support picture-in-picture."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    :cond_12b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Can\'t find activity for token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 947
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_148
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Device doesn\'t support picture-in-picture mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCallingRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p0, "token"    # Landroid/os/IBinder;

    .line 713
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 714
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method private isLauncherActivity(Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 1486
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v0, "queryIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1490
    const/4 v1, 0x0

    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1491
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    .line 1492
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 1491
    move-object v3, v0

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 1493
    .local v2, "resolved":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_2b

    return v1

    .line 1494
    :cond_2b
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1495
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_4b} :catch_51

    if-eqz v5, :cond_4f

    .line 1496
    const/4 v1, 0x1

    return v1

    .line 1498
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4f
    goto :goto_33

    .line 1501
    .end local v2    # "resolved":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :cond_50
    goto :goto_59

    .line 1499
    :catch_51
    move-exception v2

    .line 1500
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityTaskManager"

    const-string v4, "Failed to query intent activities"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1502
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_59
    return v1
.end method

.method static synthetic lambda$finishActivityAffinity$0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->finishIfSameAffinity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$finishSubActivity$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "resultWho"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 607
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->finishIfSubActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 608
    return-void
.end method

.method static synthetic lambda$getActivityTokenBelow$2(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 663
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public activityDestroyed(Landroid/os/IBinder;)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;

    .line 266
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1c

    const-string v0, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTIVITY DESTROYED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 268
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 269
    const-string v3, "activityDestroyed"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_5c

    .line 271
    :try_start_2d
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 272
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_47

    .line 274
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v6

    .line 275
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getMiuiActivityController()Lcom/android/server/wm/MiuiActivityController;

    move-result-object v6

    .line 276
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/server/wm/MiuiActivityController;->activityDestroyed(Lcom/android/server/wm/ActivityRecord;)V

    .line 278
    const-string v6, "activityDestroyed"

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityRecord;->destroyed(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_53

    .line 281
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_47
    :try_start_47
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 282
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    nop

    .line 284
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 285
    return-void

    .line 281
    :catchall_53
    move-exception v3

    :try_start_54
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 282
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    nop

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3

    .line 284
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_5c
    move-exception v3

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "stopProfiling"    # Z

    .line 153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 155
    .local v0, "origId":J
    const-wide/16 v2, 0x20

    :try_start_6
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_52

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 156
    const-string v5, "activityIdle"

    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 157
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 158
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v5, :cond_22

    .line 159
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_4c

    .line 170
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 171
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    return-void

    .line 162
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getMiuiActivityController()Lcom/android/server/wm/MiuiActivityController;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/server/wm/MiuiActivityController;->activityIdle(Lcom/android/server/wm/ActivityRecord;)V

    .line 163
    iget-object v6, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v7, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 165
    if-eqz p3, :cond_40

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 166
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->clearProfilerIfNeeded()V

    .line 168
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_4c

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_52

    .line 170
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 171
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    nop

    .line 173
    return-void

    .line 168
    :catchall_4c
    move-exception v5

    :try_start_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "config":Landroid/content/res/Configuration;
    .end local p3    # "stopProfiling":Z
    throw v5
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_52

    .line 170
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "config":Landroid/content/res/Configuration;
    .restart local p3    # "stopProfiling":Z
    :catchall_52
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 171
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    throw v4
.end method

.method public activityLocalRelaunch(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 290
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 291
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 292
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_13

    .line 293
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->startRelaunching()V

    .line 295
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    return-void

    .line 295
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public activityPaused(Landroid/os/IBinder;)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;

    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 202
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 203
    const-string v3, "activityPaused"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 204
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 205
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_2a

    .line 206
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 208
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getMiuiActivityController()Lcom/android/server/wm/MiuiActivityController;

    move-result-object v6

    .line 209
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/server/wm/MiuiActivityController;->activityPaused(Lcom/android/server/wm/ActivityRecord;)V

    .line 212
    :cond_2a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 213
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 214
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    return-void

    .line 213
    :catchall_35
    move-exception v3

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public activityRelaunched(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 302
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 303
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 304
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_13

    .line 305
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->finishRelaunching()V

    .line 307
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 308
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    return-void

    .line 307
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public activityResumed(Landroid/os/IBinder;Z)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "handleSplashScreenExit"    # Z

    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 178
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 179
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->activityResumedLocked(Landroid/os/IBinder;Z)V

    .line 181
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getMiuiActivityController()Lcom/android/server/wm/MiuiActivityController;

    move-result-object v3

    .line 182
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/wm/MiuiActivityController;->activityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 183
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 184
    .local v3, "tmp":Lcom/android/server/wm/ActivityRecord;
    invoke-static {}, Lcom/android/server/am/MemoryFreezeStub;->getInstance()Lcom/android/server/am/MemoryFreezeStub;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/am/MemoryFreezeStub;->activityResumed(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v3    # "tmp":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    return-void

    .line 186
    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .line 223
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 224
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 229
    .local v0, "origId":J
    const/4 v2, 0x0

    .line 230
    .local v2, "restartingName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 232
    .local v3, "restartingUid":I
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 233
    const-string v5, "activityStopped"

    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 234
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 235
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_50

    .line 236
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v8

    if-eqz v8, :cond_42

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 239
    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v8, v8, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    move-object v2, v8

    .line 240
    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v8, v8, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move v3, v8

    .line 242
    :cond_42
    invoke-virtual {v5, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->activityStopped(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 244
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getMiuiActivityController()Lcom/android/server/wm/MiuiActivityController;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/android/server/wm/MiuiActivityController;->activityStopped(Lcom/android/server/wm/ActivityRecord;)V

    .line 246
    :cond_50
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 247
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_1a .. :try_end_54} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 249
    if-eqz v2, :cond_68

    .line 255
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 256
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v6, "restartActivityProcess"

    invoke-virtual {v4, v2, v3, v6}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    :cond_68
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    .line 261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 262
    return-void

    .line 247
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_73
    move-exception v5

    :try_start_74
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method public activityTopResumedStateLost()V
    .registers 6

    .line 192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 193
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 194
    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleTopResumedStateReleased(Z)V

    .line 195
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    return-void

    .line 195
    :catchall_18
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 796
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_27

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 797
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 798
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x1

    if-eqz v3, :cond_18

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(Z)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_21

    .line 801
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    return v4

    .line 799
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    .line 801
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 802
    throw v2
.end method

.method public convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 807
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    .line 808
    .local v0, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 810
    .local v1, "origId":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_43

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 811
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 812
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    if-nez v4, :cond_1d

    .line 813
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_3d

    .line 822
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 813
    return v5

    .line 815
    :cond_1d
    :try_start_1d
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 816
    .local v6, "under":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_31

    .line 817
    if-eqz v0, :cond_2e

    invoke-virtual {v0, v4}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;

    move-result-object v7

    goto :goto_2f

    :cond_2e
    const/4 v7, 0x0

    :goto_2f
    iput-object v7, v6, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 819
    :cond_31
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(Z)Z

    move-result v5

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_3d

    .line 822
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 819
    return v5

    .line 820
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "under":Lcom/android/server/wm/ActivityRecord;
    :catchall_3d
    move-exception v4

    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "options":Landroid/os/Bundle;
    throw v4
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    .line 822
    .restart local v0    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "options":Landroid/os/Bundle;
    :catchall_43
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    throw v3
.end method

.method public dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 1377
    if-eqz p3, :cond_d

    .line 1378
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SHOW_KEYGUARD_MESSAGE"

    const-string v2, "dismissKeyguard"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1383
    .local v0, "callingId":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_2d

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1384
    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/KeyguardController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1385
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_27

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d

    .line 1387
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1388
    nop

    .line 1389
    return-void

    .line 1385
    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "callback":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local p3    # "message":Ljava/lang/CharSequence;
    throw v3
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    .line 1387
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "callback":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .restart local p3    # "message":Ljava/lang/CharSequence;
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1388
    throw v2
.end method

.method public enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 858
    .local v0, "origId":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/wm/ActivityClientController;->ensureSetPipAspectRatioQuotaTracker()V

    .line 859
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_27

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 860
    const-string v3, "enterPictureInPictureMode"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityClientController;->ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 862
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    move-result v4

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_21

    .line 865
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 862
    return v4

    .line 863
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "params":Landroid/app/PictureInPictureParams;
    throw v3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    .line 865
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "params":Landroid/app/PictureInPictureParams;
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 866
    throw v2
.end method

.method public finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .registers 29
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "finishTask"    # I

    .line 441
    move-object/from16 v1, p0

    move-object/from16 v8, p3

    move/from16 v2, p4

    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v0

    move-object/from16 v3, p1

    move/from16 v9, p2

    invoke-virtual {v0, v3, v9, v8}, Lcom/android/server/wm/ActivityStarterStub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v10

    .line 444
    .end local p1    # "token":Landroid/os/IBinder;
    .local v10, "token":Landroid/os/IBinder;
    if-eqz v8, :cond_23

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_23

    .line 445
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_23
    :goto_23
    iget-object v3, v1, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 450
    invoke-static {v10}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v11, v0

    .line 451
    .local v11, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v12, 0x1

    if-nez v11, :cond_36

    .line 452
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_1b3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v12

    .line 455
    :cond_36
    :try_start_36
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->mLunchedFromRoundedView:Z

    if-eqz v0, :cond_45

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->inFreeformSmallWinMode()Z

    move-result v0

    if-nez v0, :cond_45

    .line 456
    iget-object v0, v1, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->updateMiuiRoundedViewAnimationInfo(Lcom/android/server/wm/ActivityRecord;)V

    .line 459
    :cond_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_1b3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 462
    iget-object v0, v1, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v8, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v13

    .line 464
    .local v13, "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    iget-object v14, v1, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v14

    :try_start_54
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 466
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v0

    if-nez v0, :cond_62

    .line 467
    monitor-exit v14
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_1ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v12

    .line 471
    :cond_62
    :try_start_62
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object v15, v0

    .line 472
    .local v15, "tr":Lcom/android/server/wm/Task;
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v7, v0

    .line 473
    .local v7, "rootR":Lcom/android/server/wm/ActivityRecord;
    if-nez v7, :cond_75

    .line 474
    const-string v0, "ActivityTaskManager"

    const-string v3, "Finishing task with all activities already finished"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_75
    iget-object v0, v1, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_87

    .line 479
    monitor-exit v14
    :try_end_83
    .catchall {:try_start_62 .. :try_end_83} :catchall_1ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 484
    :cond_87
    :try_start_87
    iget-object v0, v1, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_c2

    .line 486
    nop

    .line 487
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v10, v3}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_97
    .catchall {:try_start_87 .. :try_end_97} :catchall_1ab

    move-object v3, v0

    .line 488
    .local v3, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_c2

    .line 490
    const/4 v4, 0x1

    .line 492
    .local v4, "resumeOK":Z
    :try_start_9b
    iget-object v0, v1, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a5} :catch_a7
    .catchall {:try_start_9b .. :try_end_a5} :catchall_1ab

    move v4, v0

    .line 496
    goto :goto_b4

    .line 493
    :catch_a7
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a8
    iget-object v5, v1, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v12, 0x0

    iput-object v12, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 495
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 498
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_b4
    if-nez v4, :cond_c2

    .line 499
    const-string v0, "ActivityTaskManager"

    const-string v5, "Not finishing activity because controller resumed"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    monitor-exit v14
    :try_end_be
    .catchall {:try_start_a8 .. :try_end_be} :catchall_1ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 507
    .end local v3    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "resumeOK":Z
    :cond_c2
    :try_start_c2
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_cf

    .line 508
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/WindowProcessController;->setLastActivityFinishTimeIfNeeded(J)V

    .line 511
    :cond_cf
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide/from16 v16, v3

    .line 512
    .local v16, "origId":J
    const-string v0, "finishActivity"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_c2 .. :try_end_dc} :catchall_1ab

    .line 514
    :try_start_dc
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->releaseActivityBoost()V

    .line 516
    const/4 v0, 0x1

    .line 517
    .local v0, "isFinish":Z
    invoke-static {}, Landroid/appcompat/ApplicationCompatUtilsStub;->get()Landroid/appcompat/ApplicationCompatUtilsStub;

    move-result-object v3

    invoke-interface {v3}, Landroid/appcompat/ApplicationCompatUtilsStub;->isContinuityEnabled()Z

    move-result v3
    :try_end_e8
    .catchall {:try_start_dc .. :try_end_e8} :catchall_19e

    if-eqz v3, :cond_119

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_119

    .line 519
    const/4 v0, 0x0

    .line 520
    :try_start_ef
    const-string v3, "ActivityTaskManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f6
    .catchall {:try_start_ef .. :try_end_f6} :catchall_112

    :try_start_f6
    const-string v4, "Config change causes Activity called onDestroy, intercept calling finish. finishTask = "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catchall {:try_start_f6 .. :try_end_107} :catchall_10b

    .line 521
    add-int/lit16 v2, v2, -0xc8

    move v12, v2

    .end local p4    # "finishTask":I
    .local v2, "finishTask":I
    goto :goto_11a

    .line 564
    .end local v0    # "isFinish":Z
    .end local v2    # "finishTask":I
    .restart local p4    # "finishTask":I
    :catchall_10b
    move-exception v0

    move-object/from16 v20, v7

    const-wide/16 v18, 0x20

    goto/16 :goto_1a3

    :catchall_112
    move-exception v0

    move-wide/from16 v18, v4

    move-object/from16 v20, v7

    goto/16 :goto_1a3

    .line 525
    .restart local v0    # "isFinish":Z
    :cond_119
    move v12, v2

    .end local p4    # "finishTask":I
    .local v12, "finishTask":I
    :goto_11a
    const/4 v5, 0x1

    if-ne v12, v5, :cond_11f

    move v2, v5

    goto :goto_120

    :cond_11f
    move v2, v6

    :goto_120
    move v4, v2

    .line 527
    .local v4, "finishWithRootActivity":Z
    const/4 v2, 0x2

    if-eq v12, v2, :cond_174

    if-eqz v4, :cond_130

    if-ne v11, v7, :cond_130

    move/from16 v22, v4

    move v8, v6

    move-object/from16 v20, v7

    const-wide/16 v18, 0x20

    goto :goto_17b

    .line 552
    :cond_130
    if-eqz v0, :cond_154

    .line 553
    :try_start_132
    const-string v20, "app-request"
    :try_end_134
    .catchall {:try_start_132 .. :try_end_134} :catchall_14d

    const/16 v21, 0x1

    move-object v2, v11

    move/from16 v3, p2

    move/from16 v22, v4

    const-wide/16 v18, 0x20

    .end local v4    # "finishWithRootActivity":Z
    .local v22, "finishWithRootActivity":Z
    move-object/from16 v4, p3

    move/from16 v23, v5

    move-object v5, v13

    move v8, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v7

    .end local v7    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .local v20, "rootR":Lcom/android/server/wm/ActivityRecord;
    move/from16 v7, v21

    :try_start_149
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    goto :goto_15d

    .line 564
    .end local v0    # "isFinish":Z
    .end local v20    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "finishWithRootActivity":Z
    .restart local v7    # "rootR":Lcom/android/server/wm/ActivityRecord;
    :catchall_14d
    move-exception v0

    move-object/from16 v20, v7

    const-wide/16 v18, 0x20

    move v2, v12

    .end local v7    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "rootR":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1a3

    .line 552
    .end local v20    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "isFinish":Z
    .restart local v4    # "finishWithRootActivity":Z
    .restart local v7    # "rootR":Lcom/android/server/wm/ActivityRecord;
    :cond_154
    move/from16 v22, v4

    move/from16 v23, v5

    move v8, v6

    move-object/from16 v20, v7

    const-wide/16 v18, 0x20

    .line 556
    .end local v4    # "finishWithRootActivity":Z
    .end local v7    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "finishWithRootActivity":Z
    :goto_15d
    if-eqz v0, :cond_164

    iget-boolean v2, v11, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_164

    goto :goto_166

    :cond_164
    move/from16 v23, v8

    :goto_166
    move/from16 v2, v23

    .line 558
    .local v2, "res":Z
    if-nez v2, :cond_171

    .line 559
    const-string v3, "ActivityTaskManager"

    const-string v4, "Failed to finish by app-request"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_171
    move/from16 v4, v22

    goto :goto_18c

    .line 527
    .end local v2    # "res":Z
    .end local v20    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "finishWithRootActivity":Z
    .restart local v4    # "finishWithRootActivity":Z
    .restart local v7    # "rootR":Lcom/android/server/wm/ActivityRecord;
    :cond_174
    move/from16 v22, v4

    move v8, v6

    move-object/from16 v20, v7

    const-wide/16 v18, 0x20

    .line 539
    .end local v4    # "finishWithRootActivity":Z
    .end local v7    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "finishWithRootActivity":Z
    :goto_17b
    if-eqz v0, :cond_187

    .line 540
    iget-object v2, v1, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v3, "finish-activity"

    move/from16 v4, v22

    .end local v22    # "finishWithRootActivity":Z
    .restart local v4    # "finishWithRootActivity":Z
    invoke-virtual {v2, v15, v8, v4, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_189

    .line 539
    .end local v4    # "finishWithRootActivity":Z
    .restart local v22    # "finishWithRootActivity":Z
    :cond_187
    move/from16 v4, v22

    .line 543
    .end local v22    # "finishWithRootActivity":Z
    .restart local v4    # "finishWithRootActivity":Z
    :goto_189
    move v2, v0

    .line 546
    .restart local v2    # "res":Z
    iput v8, v11, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I
    :try_end_18c
    .catchall {:try_start_149 .. :try_end_18c} :catchall_19b

    .line 562
    :goto_18c
    nop

    .line 564
    :try_start_18d
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 565
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v14
    :try_end_194
    .catchall {:try_start_18d .. :try_end_194} :catchall_198

    .line 562
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 567
    .end local v0    # "isFinish":Z
    .end local v2    # "res":Z
    .end local v4    # "finishWithRootActivity":Z
    .end local v15    # "tr":Lcom/android/server/wm/Task;
    .end local v16    # "origId":J
    .end local v20    # "rootR":Lcom/android/server/wm/ActivityRecord;
    :catchall_198
    move-exception v0

    move v2, v12

    goto :goto_1ac

    .line 564
    .restart local v15    # "tr":Lcom/android/server/wm/Task;
    .restart local v16    # "origId":J
    .restart local v20    # "rootR":Lcom/android/server/wm/ActivityRecord;
    :catchall_19b
    move-exception v0

    move v2, v12

    goto :goto_1a3

    .end local v12    # "finishTask":I
    .end local v20    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .restart local p4    # "finishTask":I
    :catchall_19e
    move-exception v0

    move-wide/from16 v18, v4

    move-object/from16 v20, v7

    .end local v7    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .end local p4    # "finishTask":I
    .local v2, "finishTask":I
    .restart local v20    # "rootR":Lcom/android/server/wm/ActivityRecord;
    :goto_1a3
    :try_start_1a3
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 565
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    nop

    .end local v2    # "finishTask":I
    .end local v10    # "token":Landroid/os/IBinder;
    .end local v11    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p2    # "resultCode":I
    .end local p3    # "resultData":Landroid/content/Intent;
    throw v0

    .line 567
    .end local v15    # "tr":Lcom/android/server/wm/Task;
    .end local v16    # "origId":J
    .end local v20    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "token":Landroid/os/IBinder;
    .restart local v11    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p2    # "resultCode":I
    .restart local p3    # "resultData":Landroid/content/Intent;
    .restart local p4    # "finishTask":I
    :catchall_1ab
    move-exception v0

    .end local p4    # "finishTask":I
    .restart local v2    # "finishTask":I
    :goto_1ac
    monitor-exit v14
    :try_end_1ad
    .catchall {:try_start_1a3 .. :try_end_1ad} :catchall_1b1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1b1
    move-exception v0

    goto :goto_1ac

    .line 459
    .end local v2    # "finishTask":I
    .end local v11    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local p4    # "finishTask":I
    :catchall_1b3
    move-exception v0

    :try_start_1b4
    monitor-exit v3
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;

    .line 572
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 574
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_48

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 575
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 576
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    if-nez v3, :cond_19

    .line 577
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_42

    .line 592
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 577
    return v4

    .line 582
    :cond_19
    :try_start_19
    iget-object v5, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 583
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_42

    .line 592
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    return v4

    .line 586
    :cond_2d
    :try_start_2d
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6, v6}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 589
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_42

    .line 592
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 589
    return v6

    .line 590
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_42
    move-exception v3

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_48

    .line 592
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_48
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    throw v2
.end method

.method public finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 598
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 600
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_39

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 601
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 602
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_18

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_33

    .line 613
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    return-void

    .line 606
    :cond_18
    :try_start_18
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3, p2, p3}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 610
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 611
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_33

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    .line 613
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    nop

    .line 615
    return-void

    .line 611
    :catchall_33
    move-exception v3

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resultWho":Ljava/lang/String;
    .end local p3    # "requestCode":I
    throw v3
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .line 613
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resultWho":Ljava/lang/String;
    .restart local p3    # "requestCode":I
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    throw v2
.end method

.method public getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 11
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 657
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_4d

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 658
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 659
    .local v3, "ar":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    if-nez v3, :cond_19

    .line 660
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_47

    .line 670
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    return-object v4

    .line 663
    :cond_19
    :try_start_19
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    new-instance v6, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda1;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v3, v7, v8}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 665
    .local v5, "below":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_3e

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v7

    if-ne v6, v7, :cond_3e

    .line 666
    iget-object v4, v5, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_47

    .line 670
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    return-object v4

    .line 668
    .end local v3    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "below":Lcom/android/server/wm/ActivityRecord;
    :cond_3e
    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_47

    :try_start_3f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4d

    .line 670
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 671
    nop

    .line 672
    return-object v4

    .line 668
    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    throw v3
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    .line 670
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    :catchall_4d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 671
    throw v2
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 695
    invoke-static {p1}, Lcom/android/server/wm/ActivityClientController;->getCallingRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 696
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 697
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 702
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 703
    invoke-static {p1}, Lcom/android/server/wm/ActivityClientController;->getCallingRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 706
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_11

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 707
    .local v2, "callingPkg":Ljava/lang/String;
    :goto_12
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->hookGetCallingPkg(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    .line 709
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "callingPkg":Ljava/lang/String;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getDisplayId(Landroid/os/IBinder;)I
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 636
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 637
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 638
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v3

    .line 639
    .local v3, "displayId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    move v2, v3

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 641
    .end local v3    # "displayId":I
    :cond_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 642
    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 730
    invoke-direct {p0}, Lcom/android/server/wm/ActivityClientController;->canGetLaunchedFrom()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 731
    return-object v1

    .line 733
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 734
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 735
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_16

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 736
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 719
    invoke-direct {p0}, Lcom/android/server/wm/ActivityClientController;->canGetLaunchedFrom()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 720
    return v1

    .line 722
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 723
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 724
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_16

    iget v1, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 725
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 776
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 780
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_12

    .line 781
    const/4 v2, -0x1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 783
    :cond_12
    :try_start_12
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 784
    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mOriginRequestOrientation:I

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 787
    :cond_1f
    :try_start_1f
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v2

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 789
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyRoot"    # Z

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 648
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 649
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1353
    if-nez p1, :cond_7

    .line 1354
    const-string v0, "invalidateHomeTaskSnapshot"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1357
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1359
    if-nez p1, :cond_25

    .line 1360
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1361
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1362
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    move-object v1, v2

    .line 1363
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_29

    .line 1364
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_25
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1367
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_29
    if-eqz v1, :cond_40

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1368
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 1369
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1368
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskSnapshotController;->removeSnapshotCache(I)V

    .line 1371
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1372
    return-void

    .line 1371
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 828
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 829
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 830
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_13

    .line 833
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 831
    :cond_13
    :try_start_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v2

    .line 834
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isInNewProcess(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 679
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_29

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 680
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 681
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_19

    .line 682
    const/4 v4, 0x0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_23

    .line 687
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 682
    return v4

    .line 684
    :cond_19
    :try_start_19
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mIsInNewProcess:Z

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_23

    .line 687
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 684
    return v4

    .line 685
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 687
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 688
    throw v2
.end method

.method public isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1160
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1161
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1162
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_12

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1163
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isTopOfTask(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 619
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 620
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 621
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v1, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 622
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z

    .line 345
    const-string/jumbo v0, "moveActivityTaskToBack"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 348
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_9e

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 349
    const/4 v3, 0x0

    if-nez p2, :cond_15

    const/4 v4, 0x1

    goto :goto_16

    :cond_15
    move v4, v3

    :goto_16
    invoke-static {p1, v4}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v4

    .line 350
    .local v4, "taskId":I
    iget-object v5, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 352
    .local v5, "task":Lcom/android/server/wm/Task;
    invoke-static {}, Lcom/xiaomi/mirror/MiuiMirrorStub;->getInstance()Lcom/xiaomi/mirror/MiuiMirrorStub;

    move-result-object v6

    invoke-interface {v6}, Lcom/xiaomi/mirror/MiuiMirrorStub;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 353
    invoke-static {}, Lcom/xiaomi/mirror/MiuiMirrorStub;->getInstance()Lcom/xiaomi/mirror/MiuiMirrorStub;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Lcom/xiaomi/mirror/MiuiMirrorStub;->notifyMoveTaskToBack(Landroid/os/IBinder;Z)V

    .line 356
    :cond_33
    iget-object v6, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    .line 357
    invoke-interface {v6, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v6

    .line 358
    .local v6, "mffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v5, :cond_7d

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v7

    if-eqz v7, :cond_7d

    if-eqz v6, :cond_7d

    invoke-virtual {v6}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->inPinMode()Z

    move-result v7

    if-nez v7, :cond_7d

    .line 359
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getEnableKeepFreeformState()Z

    move-result v7

    if-eqz v7, :cond_5d

    iget-object v7, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 360
    invoke-virtual {v5, v3}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    goto :goto_7d

    .line 361
    :cond_5d
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 362
    iget-object v7, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v7, v5}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->moveTaskToBack(Lcom/android/server/wm/Task;)V

    goto :goto_7d

    .line 364
    :cond_6b
    iget-object v7, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v8, v5, Lcom/android/server/wm/Task;->mTaskId:I

    const-string/jumbo v9, "moveActivityTaskToBack"

    invoke-virtual {v7, v8, v3, v3, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    .line 365
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_d .. :try_end_76} :catchall_98

    .line 374
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    return v3

    .line 369
    :cond_7d
    :goto_7d
    if-eqz v5, :cond_8f

    .line 370
    :try_start_7f
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v3

    monitor-exit v2
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_98

    .line 374
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    return v3

    .line 372
    .end local v4    # "taskId":I
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "mffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_8f
    :try_start_8f
    monitor-exit v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_98

    :try_start_90
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_9e

    .line 374
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    nop

    .line 376
    return v3

    .line 372
    :catchall_98
    move-exception v3

    :try_start_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    :try_start_9a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "nonRoot":Z
    throw v3
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_9e

    .line 374
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "nonRoot":Z
    :catchall_9e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    throw v2
.end method

.method public navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .registers 21
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .line 394
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 395
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v10, v0

    .line 396
    .local v10, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v10, :cond_15

    .line 397
    const/4 v0, 0x0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 399
    :cond_15
    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 402
    iget-object v0, v1, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v11, p2

    invoke-virtual {v0, v11, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v12

    .line 403
    .local v12, "destGrants":Lcom/android/server/uri/NeededUriGrants;
    iget-object v0, v1, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v10, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v13, p4

    invoke-virtual {v0, v13, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v14

    .line 405
    .local v14, "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    iget-object v15, v1, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v15

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 406
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    move-object v4, v10

    move-object/from16 v5, p2

    move-object v6, v12

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object v9, v14

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/Task;->navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z

    move-result v0

    monitor-exit v15
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 408
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v15
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 399
    .end local v10    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "destGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v14    # "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    :catchall_4d
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    :goto_52
    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_57
    move-exception v0

    goto :goto_52
.end method

.method public onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/app/IRequestFinishCallback;

    .line 1428
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1433
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8a

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1434
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1435
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_18

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_84

    .line 1476
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1435
    return-void

    .line 1437
    :cond_18
    :try_start_18
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v4, v4, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 1438
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskOrganizerController;->handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1441
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_84

    .line 1476
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1441
    return-void

    .line 1444
    :cond_30
    :try_start_30
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1445
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    const/4 v6, 0x0

    if-ne v5, v3, :cond_3d

    const/4 v5, 0x1

    goto :goto_3e

    :cond_3d
    move v5, v6

    .line 1447
    .local v5, "isLastRunningActivity":Z
    :goto_3e
    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v8, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1448
    .local v7, "isBaseActivity":Z
    if-eqz v7, :cond_4b

    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    goto :goto_4c

    :cond_4b
    const/4 v8, 0x0

    .line 1450
    .local v8, "baseActivityIntent":Landroid/content/Intent;
    :goto_4c
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityRecord;->isLaunchSourceType(I)Z

    move-result v9

    move v3, v9

    .line 1451
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "isBaseActivity":Z
    .local v3, "launchedFromHome":Z
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_84

    :try_start_53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1462
    if-eqz v8, :cond_73

    if-eqz v5, :cond_73

    if-eqz v3, :cond_62

    .line 1463
    invoke-static {v8}, Lcom/android/server/wm/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 1464
    :cond_62
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityClientController;->isLauncherActivity(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1465
    :cond_6c
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wm/ActivityClientController;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_8a

    .line 1476
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1466
    return-void

    .line 1471
    :cond_73
    :try_start_73
    invoke-interface {p2}, Landroid/app/IRequestFinishCallback;->requestFinish()V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_76} :catch_77
    .catchall {:try_start_73 .. :try_end_76} :catchall_8a

    .line 1474
    goto :goto_7f

    .line 1472
    :catch_77
    move-exception v2

    .line 1473
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_78
    const-string v4, "ActivityTaskManager"

    const-string v6, "Failed to invoke request finish callback"

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_8a

    .line 1476
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "launchedFromHome":Z
    .end local v5    # "isLastRunningActivity":Z
    .end local v8    # "baseActivityIntent":Landroid/content/Intent;
    :goto_7f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1477
    nop

    .line 1478
    return-void

    .line 1451
    :catchall_84
    move-exception v3

    :try_start_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "callback":Landroid/app/IRequestFinishCallback;
    throw v3
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8a

    .line 1476
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "callback":Landroid/app/IRequestFinishCallback;
    :catchall_8a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1477
    throw v2
.end method

.method onPictureInPictureStateChanged(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureUiState;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "pipState"    # Landroid/app/PictureInPictureUiState;

    .line 1039
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1044
    :try_start_6
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1045
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    .line 1044
    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 1046
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static {p2}, Landroid/app/servertransaction/PipStateTransactionItem;->obtain(Landroid/app/PictureInPictureUiState;)Landroid/app/servertransaction/PipStateTransactionItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1047
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_23

    .line 1051
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    goto :goto_42

    .line 1048
    :catch_23
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send pip state transaction item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1050
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1049
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_42
    return-void

    .line 1040
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity is not in PIP mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onSystemReady()V
    .registers 3

    .line 137
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 138
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IActivityClientController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 145
    :catch_5
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ActivityClientController"

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 20
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enterAnim"    # I
    .param p4, "exitAnim"    # I
    .param p5, "backgroundColor"    # I

    .line 1260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1261
    .local v1, "origId":J
    move-object v3, p0

    iget-object v4, v3, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1262
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1263
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1b

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-nez v5, :cond_2b

    :cond_1b
    if-eqz v0, :cond_5c

    .line 1266
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_53

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 1267
    :cond_2b
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-boolean v13, v0, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 1270
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_6c

    .line 1271
    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    :try_start_4a
    invoke-static {v7, v8, v9, v10, v6}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v6

    .line 1270
    const/4 v11, 0x0

    invoke-virtual {v5, v6, v11, v11}, Lcom/android/server/wm/TransitionController;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    goto :goto_64

    .line 1266
    :cond_53
    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    goto :goto_64

    .line 1263
    :cond_5c
    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 1275
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_64
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1276
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1277
    return-void

    .line 1275
    :catchall_6c
    move-exception v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    :goto_75
    :try_start_75
    monitor-exit v4
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_7a
    move-exception v0

    goto :goto_75
.end method

.method public registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 1393
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 1396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1398
    .local v0, "origId":J
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_39

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1399
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1400
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_2a

    .line 1401
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityRecord;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 1403
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_33

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    .line 1405
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1406
    nop

    .line 1407
    return-void

    .line 1403
    :catchall_33
    move-exception v3

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "definition":Landroid/view/RemoteAnimationDefinition;
    throw v3
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .line 1405
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "definition":Landroid/view/RemoteAnimationDefinition;
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1406
    throw v2
.end method

.method public releaseActivityInstance(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 415
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_3b

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 416
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 417
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_2c

    .line 420
    :cond_17
    const-string v4, "app-req"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 421
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_35

    .line 424
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    return v4

    .line 418
    :cond_2c
    :goto_2c
    const/4 v4, 0x0

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_35

    .line 424
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    return v4

    .line 422
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_35
    move-exception v3

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    .line 424
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 425
    throw v2
.end method

.method public reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "restoredFromBundle"    # Z

    .line 1244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1246
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_22

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1247
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1248
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_13

    .line 1249
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityRecord;->reportFullyDrawnLocked(Z)V

    .line 1251
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_22

    .line 1253
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1254
    nop

    .line 1255
    return-void

    .line 1251
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "restoredFromBundle":Z
    throw v3
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .line 1253
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "restoredFromBundle":Z
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1254
    throw v2
.end method

.method public reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sizeConfigurations"    # Landroid/window/SizeConfigurationBuckets;

    .line 314
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v0, :cond_1e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x4dcf03d2    # 4.3414176E8f

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 316
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 317
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 318
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2d

    .line 319
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setSizeConfigurations(Landroid/window/SizeConfigurationBuckets;)V

    .line 321
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 322
    return-void

    .line 321
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public requestCompatCameraControl(Landroid/os/IBinder;ZZLandroid/app/ICompatCameraControlCallback;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showControl"    # Z
    .param p3, "transformationApplied"    # Z
    .param p4, "callback"    # Landroid/app/ICompatCameraControlCallback;

    .line 912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 914
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_22

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 915
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 916
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_13

    .line 917
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->updateCameraCompatState(ZZLandroid/app/ICompatCameraControlCallback;)V

    .line 919
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_22

    .line 921
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 922
    nop

    .line 923
    return-void

    .line 919
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "showControl":Z
    .end local p3    # "transformationApplied":Z
    .end local p4    # "callback":Landroid/app/ICompatCameraControlCallback;
    throw v3
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .line 921
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "showControl":Z
    .restart local p3    # "transformationApplied":Z
    .restart local p4    # "callback":Landroid/app/ICompatCameraControlCallback;
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 922
    throw v2
.end method

.method requestPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1007
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_65

    .line 1011
    const/4 v0, 0x0

    const-string/jumbo v1, "requestPictureInPictureMode"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    .line 1013
    .local v0, "canEnterPictureInPicture":Z
    if-eqz v0, :cond_5d

    .line 1018
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1019
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    .line 1020
    return-void

    .line 1024
    :cond_20
    :try_start_20
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1025
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    .line 1024
    invoke-static {v1, v2}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v1

    .line 1026
    .local v1, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static {}, Landroid/app/servertransaction/EnterPipRequestedItem;->obtain()Landroid/app/servertransaction/EnterPipRequestedItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1027
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3c} :catch_3d

    .line 1031
    .end local v1    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    goto :goto_5c

    .line 1028
    :catch_3d
    move-exception v1

    .line 1029
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send enter pip requested item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1030
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1029
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1032
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5c
    return-void

    .line 1014
    :cond_5d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Requested PIP on an activity that doesn\'t support it"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1008
    .end local v0    # "canEnterPictureInPicture":Z
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity is already in PIP mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restartActivityProcessIfVisible(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1330
    const-string/jumbo v0, "restartActivityProcess"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1333
    .local v0, "callingId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_28

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1334
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1335
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_19

    .line 1336
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 1338
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_22

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    .line 1340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1341
    nop

    .line 1342
    return-void

    .line 1338
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    .line 1340
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1341
    throw v2
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immersive"    # Z

    .line 839
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 840
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 841
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_35

    .line 844
    iput-boolean p2, v1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 847
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isFocusedActivityOnDisplay()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 848
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IMMERSIVE_enabled:Z

    if-eqz v2, :cond_2b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x270c1967

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 849
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_2b
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 851
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 852
    return-void

    .line 842
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_35
    :try_start_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "immersive":Z
    throw v2

    .line 851
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "immersive":Z
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "inheritShowWhenLocked"    # Z

    .line 1214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1216
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_22

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1217
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1218
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_13

    .line 1219
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityRecord;->setInheritShowWhenLocked(Z)V

    .line 1221
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_22

    .line 1223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1224
    nop

    .line 1225
    return-void

    .line 1221
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "inheritShowWhenLocked":Z
    throw v3
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .line 1223
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "inheritShowWhenLocked":Z
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1224
    throw v2
.end method

.method public setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 871
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 873
    .local v0, "origId":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/wm/ActivityClientController;->ensureSetPipAspectRatioQuotaTracker()V

    .line 874
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_26

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 875
    const-string/jumbo v3, "setPictureInPictureParams"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityClientController;->ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 877
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityRecord;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 878
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_20

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_26

    .line 880
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 881
    nop

    .line 882
    return-void

    .line 878
    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "params":Landroid/app/PictureInPictureParams;
    throw v3
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    .line 880
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "params":Landroid/app/PictureInPictureParams;
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 881
    throw v2
.end method

.method public setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z

    .line 1316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1318
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_22

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1319
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1320
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_13

    .line 1321
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityRecord;->setRecentsScreenshotEnabled(Z)V

    .line 1323
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_22

    .line 1325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1326
    nop

    .line 1327
    return-void

    .line 1323
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "enabled":Z
    throw v3
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .line 1325
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "enabled":Z
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1326
    throw v2
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I

    .line 760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 762
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_22

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 763
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 764
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_13

    .line 765
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityRecord;->setRequestedOrientation(I)V

    .line 767
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_22

    .line 769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 770
    nop

    .line 771
    return-void

    .line 767
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "requestedOrientation":I
    throw v3
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .line 769
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "requestedOrientation":I
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 770
    throw v2
.end method

.method public setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "shouldDockBigOverlays"    # Z

    .line 886
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 888
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_20

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 889
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 890
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityRecord;->setShouldDockBigOverlays(Z)V

    .line 891
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_1a

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_20

    .line 893
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 894
    nop

    .line 895
    return-void

    .line 891
    :catchall_1a
    move-exception v3

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "shouldDockBigOverlays":Z
    throw v3
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_20

    .line 893
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "shouldDockBigOverlays":Z
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 894
    throw v2
.end method

.method public setShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWhenLocked"    # Z

    .line 1199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1201
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_22

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1202
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1203
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_13

    .line 1204
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityRecord;->setShowWhenLocked(Z)V

    .line 1206
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_22

    .line 1208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1209
    nop

    .line 1210
    return-void

    .line 1206
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "showWhenLocked":Z
    throw v3
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .line 1208
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "showWhenLocked":Z
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1209
    throw v2
.end method

.method public setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1123
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1124
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1125
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_f

    .line 1126
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1128
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1129
    return-void

    .line 1128
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTurnScreenOn(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "turnScreenOn"    # Z

    .line 1229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1231
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_22

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1232
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1233
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_13

    .line 1234
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityRecord;->setTurnScreenOn(Z)V

    .line 1236
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_22

    .line 1238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1239
    nop

    .line 1240
    return-void

    .line 1236
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "turnScreenOn":Z
    throw v3
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .line 1238
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "turnScreenOn":Z
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1239
    throw v2
.end method

.method public setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "packageName"    # Landroid/content/ComponentName;

    .line 1281
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 1283
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 1285
    .local v0, "vrService":Lcom/android/server/vr/VrManagerInternal;
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1286
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1287
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1288
    if-eqz v2, :cond_57

    .line 1293
    iget v1, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, p3, v1}, Lcom/android/server/vr/VrManagerInternal;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result v1

    move v3, v1

    .local v3, "err":I
    if-eqz v1, :cond_27

    .line 1294
    return v3

    .line 1298
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1300
    .local v4, "callingId":J
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_52

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1301
    if-eqz p2, :cond_35

    move-object v6, p3

    goto :goto_36

    :cond_35
    const/4 v6, 0x0

    :goto_36
    iput-object v6, v2, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 1304
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isFocusedActivityOnDisplay()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 1305
    iget-object v6, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1307
    :cond_43
    const/4 v6, 0x0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_4c

    .line 1310
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    return v6

    .line 1308
    :catchall_4c
    move-exception v6

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "err":I
    .end local v4    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "enabled":Z
    .end local p3    # "packageName":Landroid/content/ComponentName;
    throw v6
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_52

    .line 1310
    .restart local v0    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    .restart local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "err":I
    .restart local v4    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "enabled":Z
    .restart local p3    # "packageName":Landroid/content/ComponentName;
    :catchall_52
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1311
    throw v1

    .line 1289
    .end local v3    # "err":I
    .end local v4    # "callingId":J
    :cond_57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1287
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 382
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 383
    .local v1, "srec":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_19

    .line 384
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/Task;->shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 386
    .end local v1    # "srec":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 387
    const/4 v0, 0x0

    return v0

    .line 386
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1135
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8c

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1136
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1137
    .local v3, "caller":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1138
    .local v4, "topRootTask":Lcom/android/server/wm/Task;
    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    .line 1139
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_1d

    :cond_1c
    move-object v6, v5

    .line 1140
    .local v6, "top":Lcom/android/server/wm/ActivityRecord;
    :goto_1d
    const/4 v7, 0x0

    if-eq v6, v3, :cond_4b

    .line 1141
    const-string v5, "ActivityTaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showAssistFromActivity failed: caller "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not current top "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_86

    .line 1154
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1143
    return v7

    .line 1145
    :cond_4b
    :try_start_4b
    iget-boolean v8, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v8, :cond_76

    .line 1146
    const-string v5, "ActivityTaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showAssistFromActivity failed: caller "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not visible"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_4b .. :try_end_6f} :catchall_86

    .line 1154
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1148
    return v7

    .line 1150
    .end local v3    # "caller":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "topRootTask":Lcom/android/server/wm/Task;
    .end local v6    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_76
    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_86

    :try_start_77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1151
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/16 v3, 0x8

    invoke-virtual {v2, p2, v3, v5, p1}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v2
    :try_end_82
    .catchall {:try_start_77 .. :try_end_82} :catchall_8c

    .line 1154
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1151
    return v2

    .line 1150
    :catchall_86
    move-exception v3

    :try_start_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    :try_start_88
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "args":Landroid/os/Bundle;
    throw v3
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8c

    .line 1154
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "args":Landroid/os/Bundle;
    :catchall_8c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1155
    throw v2
.end method

.method public showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1114
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1115
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1116
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 1118
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1119
    return-void

    .line 1118
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public splashScreenAttached(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 902
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 903
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 904
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->splashScreenAttachedLocked(Landroid/os/IBinder;)V

    .line 905
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 906
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    return-void

    .line 905
    :catchall_15
    move-exception v3

    :try_start_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "callingActivity"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1168
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity tried to startLocalVoiceInteraction"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1170
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1171
    .local v1, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1a

    .line 1172
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 1173
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_1b
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne v3, v2, :cond_63

    .line 1176
    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v3, :cond_57

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v3, :cond_57

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_34

    goto :goto_57

    .line 1181
    :cond_34
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    if-eqz v3, :cond_44

    .line 1182
    const-string v3, "ActivityTaskManager"

    const-string v4, "Pending start of voice interaction already."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1185
    :cond_44
    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 1186
    .end local v1    # "topRootTask":Lcom/android/server/wm/Task;
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1187
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 1188
    invoke-virtual {v0, p1, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1189
    return-void

    .line 1178
    .restart local v1    # "topRootTask":Lcom/android/server/wm/Task;
    .restart local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_57
    :goto_57
    :try_start_57
    const-string v3, "ActivityTaskManager"

    const-string v4, "Already in a voice interaction, cannot start new voice interaction"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1174
    :cond_63
    :try_start_63
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only focused activity can call startVoiceInteraction"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "callingActivity":Landroid/os/IBinder;
    .end local p2    # "options":Landroid/os/Bundle;
    throw v3

    .line 1186
    .end local v1    # "topRootTask":Lcom/android/server/wm/Task;
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "callingActivity":Landroid/os/IBinder;
    .restart local p2    # "options":Landroid/os/Bundle;
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1099
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1100
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1101
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_16

    .line 1102
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskMode(Lcom/android/server/wm/Task;Z)V

    .line 1104
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1105
    return-void

    .line 1104
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "callingActivity"    # Landroid/os/IBinder;

    .line 1193
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 1194
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 1195
    return-void
.end method

.method public stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Landroid/os/IBinder;Z)V

    .line 1110
    return-void
.end method

.method public toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1058
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8a

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1059
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1060
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_6a

    .line 1066
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1067
    .local v4, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_61

    .line 1072
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2d

    .line 1073
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    if-ne v5, v6, :cond_24

    goto :goto_2d

    .line 1074
    :cond_24
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "toggleFreeformWindowingMode: You can only toggle between fullscreen and freeform."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v5

    .line 1078
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_2d
    :goto_2d
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1079
    invoke-virtual {v4, v6}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    goto :goto_50

    .line 1080
    :cond_37
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 1083
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1087
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    goto :goto_50

    .line 1089
    :cond_4c
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 1091
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "rootTask":Lcom/android/server/wm/Task;
    :goto_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_84

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_8a

    .line 1093
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1094
    nop

    .line 1095
    return-void

    .line 1081
    .restart local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "rootTask":Lcom/android/server/wm/Task;
    :cond_59
    :try_start_59
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "This activity is currently not freeform-enabled"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v5

    .line 1068
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_61
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "toggleFreeformWindowingMode: the activity doesn\'t have a root task"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v5

    .line 1061
    .end local v4    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_6a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "toggleFreeformWindowingMode: No activity record matching token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v4

    .line 1091
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_84
    move-exception v3

    monitor-exit v2
    :try_end_86
    .catchall {:try_start_59 .. :try_end_86} :catchall_84

    :try_start_86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8a

    .line 1093
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_8a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1094
    throw v2
.end method

.method public unregisterRemoteAnimations(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1411
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "unregisterRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1415
    .local v0, "origId":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_2e

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1416
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1417
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1f

    .line 1418
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->unregisterRemoteAnimations()V

    .line 1420
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_28

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2e

    .line 1422
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    nop

    .line 1424
    return-void

    .line 1420
    :catchall_28
    move-exception v3

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    .line 1422
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityClientController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    throw v2
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 628
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 629
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_14

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 630
    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
