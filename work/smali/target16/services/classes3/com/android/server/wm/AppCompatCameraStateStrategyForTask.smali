.class public Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;
.super Ljava/lang/Object;
.source "AppCompatCameraStateStrategyForTask.java"


# instance fields
.field public final mCameraAppInfoSet:Lcom/android/server/wm/CameraIdAppPairsSet;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mPendingCameraUpdateRepository:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;


# direct methods
.method public static synthetic $r8$lambda$kRaDIofZ94uvYbqjGvWQ67yqL5Q(Ljava/lang/String;Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 235
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 236
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 237
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$ymPzVVsCuzCSHqhOaWKfZ3mlMKE(Lcom/android/server/wm/CameraAppInfo;Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 172
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget p0, p0, Lcom/android/server/wm/CameraAppInfo;->mTaskId:I

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/wm/CameraIdAppPairsSet;

    invoke-direct {v0}, Lcom/android/server/wm/CameraIdAppPairsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mCameraAppInfoSet:Lcom/android/server/wm/CameraIdAppPairsSet;

    .line 43
    new-instance v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;

    invoke-direct {v0}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mPendingCameraUpdateRepository:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final createCameraAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wm/CameraAppInfo;
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_5

    move-object p0, v0

    goto :goto_9

    .line 208
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->findUniqueActivityWithPackageName(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    :goto_9
    if-nez p0, :cond_d

    move-object v1, v0

    goto :goto_11

    .line 209
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_11
    if-nez p0, :cond_14

    goto :goto_16

    .line 211
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 212
    :goto_16
    new-instance p0, Lcom/android/server/wm/CameraAppInfo;

    const/4 v2, -0x1

    if-nez v0, :cond_1d

    move v0, v2

    goto :goto_21

    .line 213
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    :goto_21
    if-nez v1, :cond_24

    goto :goto_26

    .line 214
    :cond_24
    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_26
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/wm/CameraAppInfo;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object p0
.end method

.method public final findUniqueActivityWithPackageName(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 229
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v0

    .line 233
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 241
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p0, :cond_3b

    .line 242
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_3a

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x6326f51d939c3ac1L    # 4.3320338262024386E169

    invoke-static {p0, v0, v1, p1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3a
    return-object v3

    .line 246
    :cond_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_48

    .line 247
    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0

    .line 252
    :cond_48
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_58

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x4f05aa45e3bb3673L    # 4.784871182315693E72

    invoke-static {p0, v0, v1, p1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_58
    return-object v3
.end method

.method public final getAppProcessForCallingId(I)Lcom/android/server/wm/WindowProcessController;
    .registers 2

    .line 264
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    return-object p0
.end method

.method public isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 192
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mCameraAppInfoSet:Lcom/android/server/wm/CameraIdAppPairsSet;

    .line 193
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraIdAppPairsSet;->containsAnyCameraForTaskId(I)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isCameraWithIdRunningForActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 4

    .line 200
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mCameraAppInfoSet:Lcom/android/server/wm/CameraIdAppPairsSet;

    .line 201
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/CameraIdAppPairsSet;->containsCameraIdAndTask(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public notifyPolicyCameraClosedIfNeeded(Lcom/android/server/wm/CameraAppInfo;Lcom/android/server/wm/AppCompatCameraStatePolicy;)Z
    .registers 7

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mPendingCameraUpdateRepository:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;->removePendingCameraClose(Lcom/android/server/wm/CameraAppInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 171
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CameraAppInfo;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 173
    iget-object v2, p1, Lcom/android/server/wm/CameraAppInfo;->mCameraId:Ljava/lang/String;

    .line 174
    invoke-interface {p2, v2, v0}, Lcom/android/server/wm/AppCompatCameraStatePolicy;->canCameraBeClosed(Ljava/lang/String;Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    if-eqz v1, :cond_3b

    .line 177
    iget-object v2, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mCameraAppInfoSet:Lcom/android/server/wm/CameraIdAppPairsSet;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/CameraIdAppPairsSet;->remove(Lcom/android/server/wm/CameraAppInfo;)Z

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mCameraAppInfoSet:Lcom/android/server/wm/CameraIdAppPairsSet;

    iget v3, p1, Lcom/android/server/wm/CameraAppInfo;->mTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/CameraIdAppPairsSet;->containsAnyCameraForTaskId(I)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 179
    iget p1, p1, Lcom/android/server/wm/CameraAppInfo;->mPid:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->getAppProcessForCallingId(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    .line 183
    invoke-interface {p2, p0, v0}, Lcom/android/server/wm/AppCompatCameraStatePolicy;->onCameraClosed(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V

    :cond_3b
    return v1
.end method

.method public notifyPolicyCameraOpenedIfNeeded(Lcom/android/server/wm/CameraAppInfo;Lcom/android/server/wm/AppCompatCameraStatePolicy;)V
    .registers 12

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mPendingCameraUpdateRepository:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;->removePendingCameraOpen(Lcom/android/server/wm/CameraAppInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6e

    .line 88
    :cond_9
    iget v0, p1, Lcom/android/server/wm/CameraAppInfo;->mPid:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->getAppProcessForCallingId(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_6e

    .line 93
    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->findUniqueActivityWithPackageName(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 96
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_23

    goto :goto_6e

    .line 101
    :cond_23
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_54

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/CameraAppInfo;->mPid:I

    int-to-long v3, v3

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/android/server/wm/CameraAppInfo;->mTaskId:I

    int-to-long v6, v6

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0x178f1f5ab483c95eL    # -1.2320430849225037E195

    const/16 v5, 0x44

    invoke-static {v8, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 106
    :cond_54
    iget-object v2, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mCameraAppInfoSet:Lcom/android/server/wm/CameraIdAppPairsSet;

    .line 107
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/CameraIdAppPairsSet;->containsAnyCameraForTaskId(I)Z

    move-result v2

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mCameraAppInfoSet:Lcom/android/server/wm/CameraIdAppPairsSet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraIdAppPairsSet;->add(Lcom/android/server/wm/CameraAppInfo;)V

    if-nez v2, :cond_6e

    .line 126
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/android/server/wm/AppCompatCameraStatePolicy;->onCameraOpened(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCameraAppInfoSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mCameraAppInfoSet:Lcom/android/server/wm/CameraIdAppPairsSet;

    .line 259
    invoke-virtual {p0}, Lcom/android/server/wm/CameraIdAppPairsSet;->getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trackOnCameraClosed(Ljava/lang/String;)Lcom/android/server/wm/CameraAppInfo;
    .registers 7

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mCameraAppInfoSet:Lcom/android/server/wm/CameraIdAppPairsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/CameraIdAppPairsSet;->getAnyCameraAppStateForCameraId(Ljava/lang/String;)Lcom/android/server/wm/CameraAppInfo;

    move-result-object v0

    if-nez v0, :cond_21

    .line 149
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x2ff6eae7e6d8c3e8L    # -3.6304292233551667E77

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 151
    :cond_1b
    new-instance v0, Lcom/android/server/wm/CameraAppInfo;

    const/4 v2, -0x1

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/android/server/wm/CameraAppInfo;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 153
    :cond_21
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mPendingCameraUpdateRepository:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;->trackPendingCameraClose(Lcom/android/server/wm/CameraAppInfo;)V

    return-object v0
.end method

.method public trackOnCameraOpened(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wm/CameraAppInfo;
    .registers 7

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->createCameraAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wm/CameraAppInfo;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v1, -0x33b0f32bdf2c954L

    const/4 p2, 0x1

    invoke-static {v3, v1, v2, p2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 73
    :cond_2b
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->mPendingCameraUpdateRepository:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;->trackPendingCameraOpen(Lcom/android/server/wm/CameraAppInfo;)V

    return-object v0
.end method
