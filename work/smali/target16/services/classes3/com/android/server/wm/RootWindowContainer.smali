.class public Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

.field public mCloseSystemDialogsReason:Ljava/lang/String;

.field public mCurrentUser:I

.field public mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

.field public mDestroyAllActivitiesReason:Ljava/lang/String;

.field public final mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

.field public mDeviceStateAutoRotateSettingController:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

.field public final mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

.field public final mDisplayAccessUIDs:Landroid/util/SparseArray;

.field public final mDisplayBrightnessOverrides:Landroid/util/SparseArray;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

.field public final mDisplayTransactions:Landroid/util/SparseArray;

.field public mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

.field public final mHandler:Landroid/os/Handler;

.field public mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

.field public mObscureApplicationContentOnSecondaryDisplays:Z

.field public final mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

.field public mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mSustainedPerformanceModeCurrent:Z

.field public mSustainedPerformanceModeEnabled:Z

.field public mTaskLayersChanged:Z

.field public mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

.field public mTmpOccludingRegion:Landroid/graphics/Region;

.field public mTmpTaskLayerRank:I

.field public mTmpTaskRegion:Landroid/graphics/Region;

.field public final mTopFocusedAppByProcess:Landroid/util/ArrayMap;

.field public mTopFocusedDisplayId:I

.field public mUserActivityTimeout:J

.field public mUserRootTaskInFront:Landroid/util/SparseIntArray;

.field public mUserVisibleRootTasks:Landroid/util/SparseArray;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$-Afol0a76F80-he3gkr4awEBAjE(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1688
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1689
    new-instance v0, Lcom/android/server/wm/ActivityAssistInfo;

    invoke-direct {v0, p1}, Lcom/android/server/wm/ActivityAssistInfo;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method

.method public static synthetic $r8$lambda$-dntTSotU83HgpSQ1TFO1trgA7U(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 3650
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_a

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$-eoL2oSzxua0H4f-CX8SdxhLu_M([ZLcom/android/server/wm/Task;)Z
    .registers 4

    .line 3597
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 3599
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    const/4 v1, 0x1

    if-nez p1, :cond_d

    return v1

    .line 3602
    :cond_d
    aput-boolean v1, p0, v0

    :cond_f
    return v0
.end method

.method public static synthetic $r8$lambda$1pha2RT22ZlceH6WytQ0FtHD6BQ(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Transition;Lcom/android/server/wm/DisplayContent;IZ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->lambda$onDisplayRemoved$32(Lcom/android/server/wm/Transition;Lcom/android/server/wm/DisplayContent;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Rg3uGoREfylO9nvOWOfC8V6cqA(Landroid/os/IBinder;Lcom/android/server/wm/Task;)V
    .registers 2

    .line 3499
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->finishIfVoiceTask(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Z_1Gc3dnQ9iw4hl9rc_O0Wd_2c(Lcom/android/server/policy/PermissionPolicyInternal;ILjava/lang/String;[ILcom/android/server/wm/TaskFragment;)Z
    .registers 12

    .line 3811
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/policy/PermissionPolicyInternal;)V

    invoke-virtual {p4, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3c

    .line 3816
    invoke-virtual {p4, p1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3817
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 3818
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-object v4, p4, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3819
    invoke-virtual {p4}, Lcom/android/server/wm/WindowToken;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v3, p2

    .line 3818
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PermissionPolicyInternal;->shouldShowNotificationDialogForTask(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 3820
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    aput p0, p3, v0

    const/4 p0, 0x1

    return p0

    :cond_3c
    return v0
.end method

.method public static synthetic $r8$lambda$3yGgnQUIvWsfjQH65KxH8WzL4Og(ILcom/android/server/wm/Task;)V
    .registers 2

    .line 1900
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->switchUser(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4-fSb2VpiTcBPqNnzCdDEtdDy2k(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .registers 4

    if-eqz p0, :cond_16

    .line 562
    iget-object p2, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 563
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 565
    :cond_16
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    if-ne p0, p2, :cond_1f

    .line 566
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    return-void
.end method

.method public static synthetic $r8$lambda$46XxZOX7gnE1QWjtABwHZMB6q4E(Lcom/android/server/wm/RootWindowContainer;ZLcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->lambda$applySleepTokens$26(ZLcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5M5x9a8oIkJrRNBBx6QNsBR_msw([ZLjava/io/PrintWriter;Ljava/lang/String;[ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 13

    const/4 v0, 0x0

    .line 3916
    aget-boolean v1, p0, v0

    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    aget-boolean v5, p3, v0

    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;

    invoke-direct {v7, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;-><init>(Ljava/io/PrintWriter;)V

    const-string v6, "    Resumed: "

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    or-int/2addr p1, v1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public static synthetic $r8$lambda$5YXru38LJ4rx-mQf3x-5Gf6cxy0(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 615
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isSecure()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setSecure(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7vgiML4AABiI3ykVxCVLuSA5s_U(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$findTask$21(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$860yVRlJa1D7RrhJ7i1DYOPC4Lk(Ljava/io/PrintWriter;)V
    .registers 2

    .line 3918
    const-string v0, "  Resumed activities in task display areas (from top to bottom):"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9U-N7La01u5jw5YT4adQAmL69Wo(Lcom/android/server/wm/RootWindowContainer;ILjava/lang/String;ZZLcom/android/server/wm/TaskDisplayArea;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/RootWindowContainer;->lambda$startHomeOnDisplay$12(ILjava/lang/String;ZZLcom/android/server/wm/TaskDisplayArea;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CChIDIlTuUP1Vrjh8-9JoCuvgTk(Lcom/android/server/wm/RootWindowContainer;ILcom/android/server/wm/Task;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$lockAllProfileTasks$50(ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cr5cDFyuZZ1G7HNJM1O5O5yV0Vg(ILjava/lang/String;Landroid/content/pm/ApplicationInfo;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 3477
    iget v0, p3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p0, :cond_f

    iget-object p0, p3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 3478
    invoke-virtual {p3, p2}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$F9KvYnHnC4KfYnfvTtxWcxTDJPQ(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$onDisplayRemoved$31(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FY2Gm3ji_PIAPXLeXdV82nbLrZ0(Lcom/android/server/am/AppTimeTracker;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 3049
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v0, p0, :cond_7

    const/4 p0, 0x0

    .line 3050
    iput-object p0, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :cond_7
    return-void
.end method

.method public static synthetic $r8$lambda$FxxhUOF6EKNbQiofOgqN_1CjbN0(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$new$0(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KQX5ebdMKLpDWIegwLCO9iNvbf0(Ljava/io/PrintWriter;)V
    .registers 2

    .line 3926
    const-string v0, "  Activities waiting to finish:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LRupeuArO4Sx-jJir5ctvlaNIdw(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$reclaimSomeSurfaceMemory$7(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LlQfoQfrc_CPgaYG7_z5YiFXyjk([Z[ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 8

    .line 3763
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-nez p3, :cond_8

    const/4 p3, 0x0

    goto :goto_a

    .line 3765
    :cond_8
    iget-object p3, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    :goto_a
    const/4 v0, 0x0

    .line 3767
    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    if-nez p3, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v0

    :goto_13
    and-int/2addr v1, v3

    aput-boolean v1, p0, v0

    if-eqz p3, :cond_24

    .line 3769
    aget-boolean p0, p1, v0

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3770
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v2

    and-int/2addr p0, p2

    aput-boolean p0, p1, v0

    :cond_24
    return-void
.end method

.method public static synthetic $r8$lambda$MOSfBoSBPiGCy5iWRc7FAArthOo(Lcom/android/server/wm/Task;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 1698
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1701
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_11

    .line 1702
    invoke-virtual {p3, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void

    .line 1704
    :cond_11
    invoke-virtual {p3, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MSqNWBTfh50XBjrB0lWVGzHx5WY(Lcom/android/server/wm/RootWindowContainer;ILcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$onDisplayChanged$33(ILcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R9QzoLgHdRInbCaF-PJ_NIXMszA(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$closeSystemDialogActivities$40(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RYZJPTfEZROQ0EIBTZlNbNOMMcs(ILandroid/util/ArrayMap;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 3486
    iget v0, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, p0, :cond_5

    goto :goto_12

    .line 3490
    :cond_5
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_12

    .line 3492
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public static synthetic $r8$lambda$S16D5rTegj_G5YG9kOdTOISvWhc([ZLcom/android/server/wm/Task;)Z
    .registers 8

    .line 3615
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    .line 3616
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 3617
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_36

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x3489ca4e4f813473L    # 1.3147600156425601E-55

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v4, v5, v0, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3619
    :cond_36
    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {p1}, Lcom/android/internal/protolog/WmProtoLogGroups;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 3620
    aput-boolean v0, p0, v0

    return v0

    :cond_41
    return v2

    :cond_42
    return v0
.end method

.method public static synthetic $r8$lambda$VJolOm3Y-L3j-kMtlLJM6EiXQ2o(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->matchesActivity(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W-D5jaYMORamU8P0Lym2iESdOkw(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$rankTaskLayers$36(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WO_kOW_5CzQRHOVa6pISco2kFeQ(Lcom/android/server/wm/RootWindowContainer;Landroid/util/IntArray;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$switchUser$18(Landroid/util/IntArray;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xs3X9fSvmhfM119M4pxCz3VGvp4(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$startHomeOnEmptyDisplays$11(Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y63F4mj8SRBrHImegOfKF86uRqo(Lcom/android/server/wm/Task;)Z
    .registers 6

    .line 3556
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_2e

    .line 3559
    :cond_8
    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->getNotYetIdleActivity(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 3561
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v2, 0x1

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_27

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x7ade58d8be923c5dL    # 7.051029260039047E283

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v3, v4, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_27
    return v2

    .line 3564
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_2f

    :goto_2e
    return v1

    .line 3568
    :cond_2f
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda43;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_wNvC51dJj1quF06cHnzYHP7JUg(Lcom/android/server/policy/PermissionPolicyInternal;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 3813
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3814
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyInternal;->isIntentToPermissionDialog(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$aar6l4m4Fu4KJwfP9WgawJ2FeCc(IZLjava/util/ArrayList;Ljava/lang/String;ILcom/android/server/wm/Task;)Z
    .registers 8

    .line 3849
    iget v0, p5, Lcom/android/server/wm/Task;->effectiveUid:I

    const/4 v1, 0x0

    if-ne v0, p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    move p0, v1

    :goto_8
    if-eqz p1, :cond_15

    const/4 p1, 0x0

    .line 3850
    invoke-virtual {p5, p1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_15

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    return v1

    .line 3851
    :cond_15
    :goto_15
    invoke-virtual {p5, p3, p4}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return v1
.end method

.method public static synthetic $r8$lambda$duiRZ8o9OFmknC4bfox9QU5nVF8(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 842
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 843
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 844
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    return-void
.end method

.method public static synthetic $r8$lambda$eArwFHXGjCulKLvhPFCF9ORMHR8(Landroid/util/ArrayMap;Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 2932
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$eKkyatC0lG_JXh5p1UbC_e1uOkc([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 7

    const/4 v0, 0x0

    .line 2481
    aget-object v1, p0, v0

    if-nez v1, :cond_13

    .line 2482
    invoke-virtual {p4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq p1, v1, :cond_11

    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_11
    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    move p1, v0

    .line 2483
    :goto_14
    invoke-virtual {p4, p2, p3}, Lcom/android/server/wm/Task;->finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p1, :cond_1c

    .line 2485
    aput-object p2, p0, v0

    :cond_1c
    return-void
.end method

.method public static synthetic $r8$lambda$er8brQgAL9GAoqI0PwzhTy4cycs(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$getAllRootTaskInfos$29(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fYx-oU5K0INjddjJjRGPEcjBhIk([ILandroid/app/ActivityTaskManager$RootTaskInfo;Lcom/android/server/wm/Task;)V
    .registers 8

    const/4 v0, 0x0

    .line 2753
    aget v1, p0, v0

    .line 2754
    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    iget v3, p2, Lcom/android/server/wm/Task;->mTaskId:I

    aput v3, v2, v1

    .line 2755
    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 2756
    :cond_14
    iget-object v3, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 2757
    :cond_1d
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 2758
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_2c

    :cond_2a
    const-string v3, "unknown"

    :goto_2c
    aput-object v3, v2, v1

    .line 2759
    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    iget-object v3, p2, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2760
    iget-object p1, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    iget p2, p2, Lcom/android/server/wm/Task;->mUserId:I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 2761
    aput v1, p0, v0

    return-void
.end method

.method public static synthetic $r8$lambda$gZYbVGwna62SD32Umbx7pGqBRMM(Lcom/android/server/wm/WindowState;)V
    .registers 1

    .line 629
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    return-void
.end method

.method public static synthetic $r8$lambda$ghfUWOeUqv6BRITadwxV-I7rOx4(Ljava/io/PrintWriter;)V
    .registers 2

    .line 3930
    const-string v0, "  Activities waiting to stop:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hIl0MJTJ3BWQB81XSnm23OHY0Us(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 2148
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_25

    .line 2151
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->clearAdjacentTaskFragments()V

    .line 2152
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->clearCompanionTaskFragment()V

    .line 2153
    sget-object v0, Landroid/window/TaskFragmentAnimationParams;->DEFAULT:Landroid/window/TaskFragmentAnimationParams;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->setAnimationParams(Landroid/window/TaskFragmentAnimationParams;)V

    .line 2154
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V

    .line 2161
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->updateRequestedOverrideConfiguration(Landroid/content/res/Configuration;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public static synthetic $r8$lambda$iDMYmoyr4APLHu-mqHVQbqqD3ns(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2960
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2961
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v1, :cond_1b

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    .line 2962
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 2963
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public static synthetic $r8$lambda$mXu828qxSkGkGpILm_XAIPyLcHQ(Lcom/android/server/wm/Task;[ZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 9

    .line 2535
    invoke-virtual {p6}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2536
    invoke-virtual {p6}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_33

    if-nez v0, :cond_d

    goto :goto_33

    :cond_d
    const/4 v1, 0x0

    if-ne p6, p0, :cond_16

    .line 2544
    aget-boolean p0, p1, v1

    or-int/2addr p0, p2

    aput-boolean p0, p1, v1

    return-void

    .line 2547
    :cond_16
    sget-object p0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-eqz p0, :cond_24

    if-ne v0, p3, :cond_24

    .line 2550
    invoke-virtual {p6, p4}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    return-void

    .line 2551
    :cond_24
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 2552
    aget-boolean p0, p1, v1

    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    or-int/2addr p0, p2

    aput-boolean p0, p1, v1

    :cond_33
    :goto_33
    return-void
.end method

.method public static synthetic $r8$lambda$nJ2rL6TlzNa4Uu5vy3kVhyeDco4(Lcom/android/server/wm/TaskFragment;)V
    .registers 1

    .line 2663
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->awakeFromSleeping()V

    return-void
.end method

.method public static synthetic $r8$lambda$pneID1hVlxF8QzbuUZ9xL3bJqlw(Lcom/android/server/wm/TaskFragment;)Z
    .registers 6

    .line 3569
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_28

    .line 3572
    :cond_8
    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->getNotYetIdleActivity(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 3574
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x7ade58d8be923c5dL    # 7.051029260039047E283

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v3, v4, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_27
    return v2

    :cond_28
    :goto_28
    return v1
.end method

.method public static synthetic $r8$lambda$raD4SzuAP9s-iukE5PkbR5u7mVg(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1693
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1694
    new-instance v0, Lcom/android/server/wm/ActivityAssistInfo;

    invoke-direct {v0, p1}, Lcom/android/server/wm/ActivityAssistInfo;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method

.method public static synthetic $r8$lambda$sct6Je9RAkQzTklmPK4OMkBPJkU(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 612
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setSecureLocked(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$svsf3YYQ06Uvr3QXzJWxifxCyU0(Z[ZZLcom/android/server/wm/Task;)V
    .registers 5

    if-eqz p0, :cond_d

    const/4 p0, 0x0

    .line 3074
    aget-boolean v0, p1, p0

    invoke-virtual {p3, p2}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result p2

    and-int/2addr p2, v0

    aput-boolean p2, p1, p0

    return-void

    :cond_d
    const/4 p0, 0x0

    .line 3076
    invoke-virtual {p3, p0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFz9kam2KhsMv0KSHtc2qK81-UA(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$getAllRootTaskInfos$30(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tPwf3_a7s6Ip2Tm29L2kZ4JA9GA(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .registers 4

    .line 621
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 622
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    :cond_d
    return-void
.end method

.method public static synthetic $r8$lambda$u4w1GtKD5PIwIVuZRnboBvynzs4(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 1134
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne p0, v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result p0

    if-eqz p0, :cond_16

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0x7d5

    if-eq p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$uiA_TRy_hsbkALt80gpSOErbaUc(I[ZLcom/android/server/wm/WindowState;)Z
    .registers 7

    .line 3368
    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_e

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3369
    aput-boolean v1, p1, v2

    .line 3371
    :cond_e
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f8

    if-ne v0, v3, :cond_1f

    .line 3372
    aget-boolean p1, p1, v2

    if-eqz p1, :cond_1f

    iget p1, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq p1, p0, :cond_1f

    return v1

    :cond_1f
    return v2
.end method

.method public static synthetic $r8$lambda$vJ_uWMYQvcQvwQ23ybcvgqldGSE(Lcom/android/server/wm/Task;[Z[ILcom/android/server/wm/Task;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p3, :cond_7

    .line 2734
    aput-boolean v0, p1, v1

    return v0

    .line 2737
    :cond_7
    aget p0, p2, v1

    add-int/2addr p0, v0

    aput p0, p2, v1

    return v1
.end method

.method public static synthetic $r8$lambda$vWSK9tAG1n9sXCtWvi6gTIbsQyQ(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 634
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$vzA6tdzQZ3lOJEF5V6-d4gRywIs(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Task;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$rankTaskLayers$37(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ws8C-MnKyiV9UUM1mmOZCTSMaxo([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[ZLcom/android/server/wm/Task;)V
    .registers 17

    const/4 v0, 0x0

    .line 3909
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_8

    .line 3910
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_8
    const/4 v8, 0x0

    move-object v4, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v2, p7

    .line 3912
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result p1

    aput-boolean p1, p0, v0

    .line 3913
    aget-boolean p0, p6, v0

    or-int/2addr p0, p1

    aput-boolean p0, p6, v0

    return-void
.end method

.method public static synthetic $r8$lambda$ydQIhDqx9cp31U7kcEBd7Txg_C4(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->lambda$sendSleepTransition$24(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zBxOdbOEipswS0PLsfP2ilGzGbw(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .registers 8

    if-eqz p0, :cond_a

    .line 1052
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 1053
    :cond_a
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Window #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p3, :cond_36

    if-eqz p0, :cond_34

    goto :goto_36

    :cond_34
    move p0, v1

    goto :goto_37

    :cond_36
    :goto_36
    move p0, v0

    .line 1054
    :goto_37
    const-string p3, "    "

    invoke-virtual {p4, p1, p3, p0}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1055
    aget p0, p2, v1

    add-int/2addr p0, v0

    aput p0, p2, v1

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDestroyAllActivitiesReason(Lcom/android/server/wm/RootWindowContainer;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaybeAbortPipEnterRunnable(Lcom/android/server/wm/RootWindowContainer;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskLayersChanged(Lcom/android/server/wm/RootWindowContainer;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmMaybeAbortPipEnterRunnable(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTaskLayersChanged(Lcom/android/server/wm/RootWindowContainer;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 435
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 187
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayBrightnessOverrides:Landroid/util/SparseArray;

    const-wide/16 v0, -0x1

    .line 189
    iput-wide v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 195
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 196
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    const/4 v0, -0x1

    .line 204
    iput v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 207
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    .line 241
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 242
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransactions:Landroid/util/SparseArray;

    .line 248
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 249
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserVisibleRootTasks:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 256
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    .line 261
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$1;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    .line 287
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 289
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 425
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    .line 3388
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    .line 436
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 437
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 438
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 439
    iput-object p0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 440
    new-instance v0, Lcom/android/server/wm/DeviceStateController;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DeviceStateController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerGlobalLock;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 441
    new-instance v1, Lcom/android/server/wm/DisplayRotationCoordinator;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayRotationCoordinator;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    .line 442
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 443
    invoke-static {v1, v0, p1}, Lcom/android/server/wm/DisplayRotation;->createDeviceStateAutoRotateDependencies(Landroid/content/Context;Lcom/android/server/wm/DeviceStateController;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateAutoRotateSettingController:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    return-void
.end method

.method private applySurfaceChangesTransaction()V
    .registers 7

    .line 858
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 859
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 860
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 861
    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 862
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 863
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_17

    .line 864
    invoke-virtual {v4, v2, v1, v3}, Lcom/android/server/wm/Watermark;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    .line 866
    :cond_17
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_20

    .line 867
    invoke-virtual {v4, v2, v1, v3}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    .line 869
    :cond_20
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_2d

    .line 871
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 870
    invoke-virtual {v4, v2, v1, v0, v3}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(IIILandroid/view/SurfaceControl$Transaction;)V

    .line 874
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_34
    if-ge v1, v0, :cond_4f

    .line 876
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 877
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction()V

    .line 878
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransactions:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 883
    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransactions:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;Landroid/util/SparseArray;)V

    .line 884
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransactions:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public static getNotYetIdleActivity(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 3531
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_31

    .line 3532
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 3533
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_17

    goto :goto_2e

    .line 3536
    :cond_17
    iget-boolean p0, v1, Lcom/android/server/wm/ActivityRecord;->idle:Z

    if-nez p0, :cond_31

    sget-object p0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-nez p0, :cond_2d

    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez p0, :cond_31

    .line 3538
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result p0

    if-eqz p0, :cond_31

    :cond_2d
    return-object v1

    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public static matchesActivity(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z
    .registers 7

    .line 3099
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, p1, :cond_c

    goto :goto_21

    :cond_c
    const/4 p1, 0x1

    if-eqz p2, :cond_18

    .line 3102
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_21

    return p1

    .line 3108
    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    return p1

    :cond_21
    :goto_21
    return v1
.end method


# virtual methods
.method public addStartingWindowsForVisibleActivities()V
    .registers 3

    .line 2958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2959
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda56;

    invoke-direct {v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda56;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public allPausedActivitiesComplete()Z
    .registers 4

    const/4 v0, 0x1

    .line 3613
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 3614
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda21;

    invoke-direct {v0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda21;-><init>([Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_12

    return v2

    .line 3630
    :cond_12
    aget-boolean p0, v1, v2

    return p0
.end method

.method public allResumedActivitiesIdle()Z
    .registers 6

    .line 3548
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_2e

    .line 3549
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3550
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_2b

    .line 3555
    :cond_15
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    return v4

    .line 3584
    :cond_22
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return v4

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3590
    :cond_2e
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->endPowerMode(I)V

    return v1
.end method

.method public allResumedActivitiesVisible()Z
    .registers 4

    const/4 v0, 0x1

    .line 3595
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 3596
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;

    invoke-direct {v2, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;-><init>([Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_12

    return v1

    .line 3609
    :cond_12
    aget-boolean p0, v0, v1

    return p0
.end method

.method public anyTaskForId(I)Lcom/android/server/wm/Task;
    .registers 3

    const/4 v0, 0x2

    .line 3659
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public anyTaskForId(II)Lcom/android/server/wm/Task;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3663
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;
    .registers 14

    const/4 v0, 0x2

    if-eq p2, v0, :cond_e

    if-nez p3, :cond_6

    goto :goto_e

    .line 3678
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Should not specify activity options for non-restore lookup"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3682
    :cond_e
    :goto_e
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;-><init>()V

    const-class v2, Lcom/android/server/wm/Task;

    .line 3683
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3682
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 3684
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 3685
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    const/4 v1, 0x0

    if-eqz v2, :cond_4c

    if-eqz p3, :cond_4b

    .line 3694
    invoke-virtual {p0, v1, p3, v2, p4}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 3697
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eq p0, v3, :cond_4b

    .line 3698
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eq p0, v3, :cond_4b

    if-eqz p4, :cond_42

    const/4 v0, 0x0

    :cond_42
    move v5, v0

    const/4 v7, 0x1

    .line 3701
    const-string v8, "anyTaskForId"

    const/4 v6, 0x1

    move v4, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    :cond_4b
    return-object v2

    :cond_4c
    move v4, p4

    if-nez p2, :cond_50

    return-object v1

    .line 3716
    :cond_50
    iget-object p4, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p4, p1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_5b

    return-object v1

    :cond_5b
    const/4 p4, 0x1

    if-ne p2, p4, :cond_5f

    goto :goto_68

    .line 3731
    :cond_5f
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p1, p3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z

    move-result p0

    if-nez p0, :cond_68

    return-object v1

    :cond_68
    :goto_68
    return-object p1
.end method

.method public applySleepTokens(Z)V
    .registers 14

    .line 2609
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    const/4 v4, 0x3

    if-ltz v0, :cond_a3

    .line 2611
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 2612
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v6

    .line 2613
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v7

    if-ne v6, v7, :cond_1d

    goto/16 :goto_9f

    .line 2616
    :cond_1d
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v7

    .line 2617
    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->setIsSleeping(Z)V

    .line 2619
    iget-object v8, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_4a

    if-nez v3, :cond_4a

    if-eqz v6, :cond_4a

    .line 2622
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isScreenSleeping()Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 2625
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_49

    .line 2626
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 2627
    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v8, 0x3e8

    .line 2626
    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_49
    move v3, v1

    :cond_4a
    if-nez p1, :cond_4d

    goto :goto_9f

    .line 2636
    :cond_4d
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v8, "sleepTokens"

    invoke-virtual {v4, v8}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v4

    if-nez v6, :cond_90

    .line 2638
    iget-object v8, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_90

    .line 2639
    invoke-virtual {v4}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v8

    if-nez v8, :cond_90

    .line 2644
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isKeyguardOccluded()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_77

    .line 2645
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getTaskOccludingKeyguard()Lcom/android/server/wm/Task;

    move-result-object v8

    const/16 v10, 0x1000

    const/16 v11, 0x8

    goto :goto_7a

    :cond_77
    move v10, v2

    move v11, v10

    move-object v8, v9

    :goto_7a
    if-eqz v7, :cond_7e

    const/16 v11, 0xb

    .line 2652
    :cond_7e
    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2653
    invoke-virtual {v7, v11, v10}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v7

    .line 2652
    invoke-virtual {v4, v7}, Lcom/android/server/wm/ActionChain;->attachTransition(Lcom/android/server/wm/Transition;)V

    .line 2654
    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v4

    invoke-virtual {v7, v4, v8, v9, v9}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 2658
    :cond_90
    new-instance v4, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v6, v5}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/RootWindowContainer;ZLcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 2682
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {v4}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    :goto_9f
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    :cond_a3
    if-nez v3, :cond_aa

    .line 2686
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_aa
    return-void
.end method

.method public attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 11

    const/4 v0, 0x1

    .line 1792
    iput-boolean v0, p1, Lcom/android/server/wm/WindowProcessController;->mHasEverAttached:Z

    .line 1793
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    .line 1796
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    if-ltz v2, :cond_84

    .line 1797
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 1798
    iget v7, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v8, :cond_81

    iget-object v7, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    goto :goto_81

    .line 1803
    :cond_2c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1804
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v7, :cond_81

    .line 1805
    iget-boolean v8, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v8, :cond_81

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v8, :cond_81

    .line 1807
    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v8

    if-eqz v8, :cond_81

    .line 1808
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v8

    if-nez v8, :cond_4a

    goto :goto_81

    .line 1812
    :cond_4a
    :try_start_4a
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-ne v6, v8, :cond_60

    .line 1813
    invoke-virtual {v7, v6}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v7

    if-nez v7, :cond_60

    move v7, v0

    goto :goto_61

    :catch_5e
    move-exception v3

    goto :goto_6b

    :cond_60
    move v7, v4

    .line 1814
    :goto_61
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v8, v6, p1, v7, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z

    move-result v6
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_67} :catch_5e

    if-eqz v6, :cond_81

    move v5, v0

    goto :goto_81

    .line 1819
    :goto_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in new process when starting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowManager"

    invoke-static {v7, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_81
    :goto_81
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :cond_84
    if-nez v3, :cond_87

    return v5

    .line 1824
    :cond_87
    throw v3
.end method

.method public final canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 4

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    .line 3271
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 3272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not allow to launch "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on display "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_29
    return p0
.end method

.method public final canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 6

    const/4 v0, 0x0

    .line 3246
    const-string v1, "WindowManager"

    if-nez p2, :cond_1a

    .line 3247
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "canLaunchOnDisplay(), invalid task: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3251
    :cond_1a
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-nez v2, :cond_35

    .line 3252
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "canLaunchOnDisplay(), Task is not attached: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3256
    :cond_35
    sget-object v2, Landroid/window/DesktopExperienceFlags;->ENABLE_MIRROR_DISPLAY_NO_ACTIVITY:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 3257
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->shouldKeepNoTask()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 3258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "canLaunchOnDisplay(), Task display area should keep no task: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3263
    :cond_5c
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method public canShowStrictModeViolation(I)Z
    .registers 3

    .line 634
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda55;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda55;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .registers 9

    .line 1602
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    if-nez v1, :cond_d

    return v2

    .line 1609
    :cond_d
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1610
    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-nez p3, :cond_22

    if-eqz v0, :cond_22

    .line 1611
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result p3

    if-eqz p3, :cond_22

    return v2

    :cond_22
    if-eqz p2, :cond_2b

    .line 1616
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->canHostHomeTask()Z

    move-result p3

    if-nez p3, :cond_2b

    return v2

    :cond_2b
    if-eqz p2, :cond_32

    .line 1620
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p3

    goto :goto_33

    :cond_32
    const/4 p3, -0x1

    .line 1622
    :goto_33
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->shouldPlacePrimaryHomeOnDisplay(I)Z

    move-result p3

    if-eqz p3, :cond_3a

    return v3

    .line 1626
    :cond_3a
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    if-nez p0, :cond_41

    return v2

    .line 1630
    :cond_41
    iget p0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4a

    const/4 p1, 0x3

    if-eq p0, p1, :cond_4a

    return v3

    :cond_4a
    return v2
.end method

.method public final clearDisplayInfoCaches(I)V
    .registers 3

    .line 2926
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->removePossibleDisplayInfos(I)V

    .line 2927
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateDisplayImePolicyCache()V

    return-void
.end method

.method public final clearFrameChangingWindows()V
    .registers 3

    .line 908
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mFrameChangingWindows:Ljava/util/ArrayList;

    .line 909
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_18

    .line 910
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->updateLastFrames()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 912
    :cond_18
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 3

    .line 3048
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/AppTimeTracker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public closeSystemDialogActivities(Ljava/lang/String;)V
    .registers 3

    .line 3346
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 3

    .line 639
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 640
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final computeNonOccludedFreeformAreaRatio(Lcom/android/server/wm/Task;)V
    .registers 6

    .line 3031
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpOccludingRegion:Landroid/graphics/Region;

    if-nez v0, :cond_12

    .line 3032
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpOccludingRegion:Landroid/graphics/Region;

    .line 3033
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskRegion:Landroid/graphics/Region;

    .line 3035
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3036
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3038
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskRegion:Landroid/graphics/Region;

    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3040
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpOccludingRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3041
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskRegion:Landroid/graphics/Region;

    invoke-static {v1}, Lcom/android/server/wm/utils/RegionUtils;->getAreaSize(Landroid/graphics/Region;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    .line 3042
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    .line 3044
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpOccludingRegion:Landroid/graphics/Region;

    sget-object p1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public bridge synthetic dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V
    .registers 3

    .line 171
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->dispatchConfigurationToChild(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchConfigurationToChild(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
    .registers 3

    .line 602
    iget-boolean p0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p0, :cond_8

    .line 604
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I

    return-void

    .line 606
    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6

    .line 3861
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3862
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topDisplayFocusedRootTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3864
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_32

    .line 3865
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3866
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 3868
    :cond_32
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateAutoRotateSettingController:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    if-eqz p0, :cond_39

    .line 3869
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_39
    return-void
.end method

.method public dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;I)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v9, p6

    const/4 v13, 0x1

    .line 3894
    new-array v8, v13, [Z

    const/4 v14, 0x0

    aput-boolean v14, v8, v14

    .line 3895
    new-array v2, v13, [Z

    aput-boolean v14, v2, v14

    .line 3896
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v13

    move v10, v3

    :goto_16
    if-ltz v10, :cond_62

    .line 3897
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    .line 3898
    aget-boolean v3, v8, v14

    if-eqz v3, :cond_26

    .line 3899
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_26
    const/4 v3, -0x1

    if-eq v9, v3, :cond_31

    .line 3901
    iget v3, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eq v3, v9, :cond_31

    move-object/from16 v7, p5

    move-object v15, v8

    goto :goto_5e

    .line 3905
    :cond_31
    const-string v3, "Display #"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3906
    iget v3, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3907
    const-string v3, " (activities from top to bottom):"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3908
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;-><init>([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[Z)V

    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    move-object v15, v8

    invoke-virtual {v11, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 3915
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;

    invoke-direct {v3, v15, v1, v7, v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;-><init>([ZLjava/io/PrintWriter;Ljava/lang/String;[Z)V

    invoke-virtual {v11, v3}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    :goto_5e
    add-int/lit8 v10, v10, -0x1

    move-object v8, v15

    goto :goto_16

    :cond_62
    move-object/from16 v7, p5

    move-object v15, v8

    .line 3923
    aget-boolean v16, v15, v14

    iget-object v2, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    xor-int/lit8 v7, p3, 0x1

    new-instance v11, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;

    invoke-direct {v11, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Fin"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v9, p5

    move-object v2, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v3

    move-object v1, v2

    or-int v12, v16, v3

    aput-boolean v12, v15, v14

    .line 3927
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    xor-int/lit8 v6, p3, 0x1

    new-instance v10, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda3;

    invoke-direct {v10, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    const/4 v11, 0x0

    const-string v3, "  "

    const-string v4, "Stop"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v0

    or-int/2addr v0, v12

    aput-boolean v0, v15, v14

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 7

    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1074
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 1075
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1077
    iget-object p4, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p4

    const-wide v0, 0x10b00000005L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/KeyguardController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1078
    iget-object p4, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget p0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 1079
    invoke-virtual {p4, p0}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result p0

    const-wide v0, 0x10800000006L

    .line 1078
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1080
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 3879
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3880
    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3881
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_31

    .line 3883
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3884
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3885
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3886
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3887
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3888
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_31
    return-void
.end method

.method public dumpDisplayContents(Ljava/io/PrintWriter;)V
    .registers 7

    .line 1017
    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_26

    .line 1019
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_25

    .line 1021
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1022
    const-string v3, "  "

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_25
    return-void

    .line 1025
    :cond_26
    const-string p0, "  NO DISPLAY"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1038
    :cond_7
    const-string v0, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_2d

    .line 1041
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1042
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1043
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1046
    :cond_2d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 5

    .line 1061
    const-string v0, "  All tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_1d

    .line 1063
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public dumpTopFocusedDisplayId(Ljava/io/PrintWriter;)V
    .registers 3

    .line 1030
    const-string v0, "  mTopFocusedDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 7

    const/4 v0, 0x1

    .line 1050
    new-array v1, v0, [I

    .line 1051
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda58;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda58;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public ensureActivitiesVisible()V
    .registers 2

    const/4 v0, 0x0

    .line 1834
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x1

    .line 1838
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method public ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 7

    .line 1845
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->inActivityVisibilityUpdate()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1846
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->isRootVisibilityUpdateDeferred()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_45

    .line 1850
    :cond_11
    const-string v0, "RWC_ensureActivitiesVisible"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1851
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    .line 1854
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_23
    if-ltz v0, :cond_33

    .line 1855
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 1856
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_31

    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :catchall_31
    move-exception p1

    goto :goto_3c

    .line 1859
    :cond_33
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 1860
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1859
    :goto_3c
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 1860
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1861
    throw p1

    :cond_45
    :goto_45
    return-void
.end method

.method public ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1654
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    const/4 p0, 0x1

    .line 1659
    invoke-virtual {p2, p0}, Lcom/android/server/wm/DisplayContent;->updateOrientationAndComputeConfig(Z)Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p1, :cond_f

    .line 1664
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->reportDescendantOrientationChangeIfNeeded()V

    .line 1668
    :cond_f
    invoke-virtual {p2, p0, p1, p3}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    return-void
.end method

.method public ensureVisibilityOnVisibleActivityDiedOrCrashed(Ljava/lang/String;)V
    .registers 4

    .line 2492
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 2493
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_10

    .line 2495
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;

    .line 2497
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    move-result p1

    if-nez p1, :cond_19

    .line 2501
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    :cond_19
    return-void
.end method

.method public executeAppTransitionForAllDisplay()V
    .registers 3

    .line 2414
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    .line 2415
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2416
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    return-void
.end method

.method public findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 13

    .line 3083
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3084
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 3085
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    move-object v8, v0

    .line 3087
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 3089
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;

    invoke-direct {v3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;-><init>()V

    const-class v0, Lcom/android/server/wm/ActivityRecord;

    .line 3090
    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    .line 3091
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v7, p1

    .line 3089
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 3092
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 3093
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object p0
.end method

.method public findTask(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 20

    move-object/from16 v0, p5

    .line 2430
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_31

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x36e3a4f36cb337fdL    # 2.7527582584529757E-44

    const/16 v6, 0xc00

    invoke-static {v1, v4, v5, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2433
    :cond_31
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    move v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p6

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->init(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)V

    const/4 p1, 0x0

    if-eqz v0, :cond_52

    .line 2439
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    .line 2440
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_4d

    return-object v3

    .line 2442
    :cond_4d
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_52

    goto :goto_53

    :cond_52
    move-object v1, p1

    .line 2447
    :goto_53
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda48;

    invoke-direct {v3, p0, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda48;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_61

    return-object p0

    .line 2462
    :cond_61
    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {p0}, Lcom/android/internal/protolog/WmProtoLogGroups;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7a

    if-nez v1, :cond_7a

    .line 2463
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_7a

    const-wide v2, 0x27428b51d2773e63L

    const/4 v0, 0x0

    invoke-static {p0, v2, v3, v0, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7a
    return-object v1
.end method

.method public findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 11

    .line 2423
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootWindowContainer;->findTask(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z
    .registers 7

    .line 3469
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->process(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z

    move-result p0

    return p0
.end method

.method public finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 7

    .line 2478
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    .line 2479
    new-array v2, v1, [Lcom/android/server/wm/Task;

    .line 2480
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;

    invoke-direct {v3, v2, v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;-><init>([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    const/4 p0, 0x0

    .line 2488
    aget-object p0, v2, p0

    return-object p0
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 3

    .line 3498
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 3499
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;-><init>(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllDisplayPolicies(Ljava/util/function/Consumer;)V
    .registers 4

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1110
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public forAllDisplays(Ljava/util/function/Consumer;)V
    .registers 4

    .line 1103
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1104
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public getAllRootTaskInfos(I)Ljava/util/ArrayList;
    .registers 4

    .line 2789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_11

    .line 2791
    new-instance p1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-object v0

    .line 2796
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-nez p1, :cond_18

    return-object v0

    .line 2800
    :cond_18
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 1119
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 1120
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1121
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_17

    return-object v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultDisplay()Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 1182
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1257
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 1197
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .registers 5

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    .line 1222
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1223
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v2, p1, :cond_13

    return-object v1

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;
    .registers 5

    .line 1208
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_26

    .line 1209
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1210
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1211
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    return-object v1

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .registers 4

    .line 1237
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 1241
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 1245
    :cond_d
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_14

    return-object v1

    .line 1251
    :cond_14
    new-instance v0, Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/DeviceStateController;)V

    const/high16 p1, -0x80000000

    .line 1252
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-object v0
.end method

.method public getDisplayContextsWithNonToastVisibleWindows(ILjava/util/List;)V
    .registers 6

    if-nez p2, :cond_3

    goto :goto_2a

    .line 1132
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_2a

    .line 1133
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1134
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;

    invoke-direct {v2, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1136
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_2a
    :goto_2a
    return-void
.end method

.method public getDisplayRotationCoordinator()Lcom/android/server/wm/DisplayRotationCoordinator;
    .registers 1

    .line 1187
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    return-object p0
.end method

.method public getDisplayUiContext(I)Landroid/content/Context;
    .registers 3

    .line 1143
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1144
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDumpActivities(Ljava/lang/String;ZZI)Ljava/util/ArrayList;
    .registers 11

    if-eqz p3, :cond_13

    .line 3836
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 3838
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 3840
    :cond_d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 3843
    :cond_13
    iget-object p3, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p3

    if-eqz p3, :cond_23

    .line 3845
    invoke-virtual {p3}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result p3

    :goto_21
    move v1, p3

    goto :goto_25

    :cond_23
    const/4 p3, -0x1

    goto :goto_21

    .line 3847
    :goto_25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3848
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;

    move-object v4, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;-><init>(IZLjava/util/ArrayList;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 1085
    const-string p0, "ROOT"

    return-object p0
.end method

.method public getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .registers 8

    .line 3308
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_10

    .line 3312
    iget v0, p1, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3313
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3315
    :cond_10
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_17

    return-object v1

    .line 3321
    :cond_17
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isHomeSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    return-object v2

    .line 3329
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_27
    if-ltz v1, :cond_42

    .line 3330
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 3331
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v3, v4, :cond_34

    goto :goto_3f

    .line 3335
    :cond_34
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 3336
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_3f

    return-object v3

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    :cond_42
    return-object v2
.end method

.method public getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;
    .registers 18

    move-object/from16 v5, p6

    if-eqz p2, :cond_15

    .line 3150
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3151
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v0

    :cond_15
    const/4 v9, 0x0

    if-eqz v5, :cond_1b

    .line 3156
    iget-object v0, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredRootTask:Lcom/android/server/wm/Task;

    goto :goto_1c

    :cond_1b
    move-object v0, v9

    :goto_1c
    if-eqz v0, :cond_25

    .line 3157
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_25

    return-object v0

    :cond_25
    const/4 v0, -0x1

    if-eqz p2, :cond_44

    .line 3163
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    if-eq v1, v0, :cond_44

    .line 3166
    invoke-virtual {p2, v0}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    const/4 v2, 0x2

    .line 3167
    invoke-virtual {p0, v1, v2, p2, p5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 3169
    invoke-virtual {p2, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 3170
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 3171
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_44
    if-eqz v5, :cond_4c

    .line 3179
    iget-object v1, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_4c

    :cond_4a
    :goto_4a
    move-object v0, v1

    goto :goto_74

    :cond_4c
    if-eqz p2, :cond_73

    .line 3182
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 3184
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_60

    :cond_5f
    move-object v1, v9

    :goto_60
    if-nez v1, :cond_4a

    .line 3186
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    if-eq v2, v0, :cond_4a

    .line 3188
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 3190
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_4a

    :cond_73
    move-object v0, v9

    .line 3196
    :goto_74
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v7

    if-eqz v0, :cond_91

    .line 3198
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_90

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v8, p5

    move/from16 v6, p7

    .line 3199
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_90
    move-object v0, v9

    :cond_91
    if-eqz p3, :cond_98

    .line 3210
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_99

    :cond_98
    move-object v4, v9

    :goto_99
    if-nez v4, :cond_a1

    if-eqz p1, :cond_a1

    .line 3213
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    :cond_a1
    if-eqz v5, :cond_a6

    .line 3215
    iget v6, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_a7

    :cond_a6
    const/4 v6, 0x0

    :goto_a7
    if-eqz v4, :cond_ca

    .line 3218
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 3219
    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 3220
    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v8

    if-eqz v8, :cond_cd

    if-nez v6, :cond_bf

    .line 3222
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v6

    .line 3227
    :cond_bf
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result v6

    if-nez v6, :cond_cc

    iget-boolean v6, v4, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v6, :cond_ca

    goto :goto_cc

    :cond_ca
    move-object v9, v0

    goto :goto_cd

    :cond_cc
    :goto_cc
    return-object v4

    :cond_cd
    :goto_cd
    if-nez v9, :cond_d3

    .line 3239
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    :cond_d3
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v8, p5

    move/from16 v6, p7

    move-object v0, v9

    .line 3241
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .registers 13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 3127
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getRootTask(I)Lcom/android/server/wm/Task;
    .registers 4

    .line 2691
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    .line 2692
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_15

    return-object v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootTask(II)Lcom/android/server/wm/Task;
    .registers 5

    .line 2702
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    .line 2703
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_15

    return-object v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRootTask(III)Lcom/android/server/wm/Task;
    .registers 4

    .line 2713
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2717
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getRootTaskInfo(I)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 2

    .line 2770
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2772
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 3

    .line 2778
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2779
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootTaskInfo(III)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 4

    .line 2783
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(III)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2784
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 8

    .line 2721
    new-instance p0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    invoke-direct {p0}, Landroid/app/ActivityTaskManager$RootTaskInfo;-><init>()V

    .line 2722
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 2724
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 2727
    iput v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    goto :goto_28

    :cond_13
    const/4 v3, 0x1

    .line 2730
    new-array v4, v3, [I

    .line 2731
    new-array v3, v3, [Z

    .line 2732
    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;

    invoke-direct {v5, p1, v3, v4}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/Task;[Z[I)V

    invoke-virtual {v0, v5, v2}, Lcom/android/server/wm/DisplayArea;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    .line 2740
    aget-boolean v0, v3, v2

    if-eqz v0, :cond_26

    aget v1, v4, v2

    :cond_26
    iput v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    :goto_28
    const/4 v0, 0x0

    .line 2742
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    .line 2743
    iget-object v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 2745
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDescendantTaskCount()I

    move-result v1

    .line 2746
    new-array v3, v1, [I

    iput-object v3, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    .line 2747
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    .line 2748
    new-array v3, v1, [Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    .line 2749
    new-array v1, v1, [I

    iput-object v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    .line 2750
    filled-new-array {v2}, [I

    move-result-object v1

    .line 2752
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;

    invoke-direct {v3, v1, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;-><init>([ILandroid/app/ActivityTaskManager$RootTaskInfo;)V

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2764
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 2765
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_60
    iput-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getRunningTasks(ILjava/util/List;IILandroid/util/ArraySet;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;II",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p6, v0, :cond_c

    .line 3747
    invoke-virtual {p0, p6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p6

    if-nez p6, :cond_a

    return-void

    :cond_a
    move-object v5, p6

    goto :goto_d

    :cond_c
    move-object v5, p0

    .line 3752
    :goto_d
    iget-object p6, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p6}, Lcom/android/server/wm/ActivityTaskSupervisor;->getRunningTasks()Lcom/android/server/wm/RunningTasks;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RunningTasks;->getTasks(ILjava/util/List;ILcom/android/server/wm/RecentTasks;Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)V

    return-void
.end method

.method public getTaskToShowPermissionDialogOn(Ljava/lang/String;I)I
    .registers 6

    .line 3804
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    return v1

    .line 3809
    :cond_a
    filled-new-array {v1}, [I

    move-result-object v1

    .line 3810
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda59;

    invoke-direct {v2, v0, p2, p1, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda59;-><init>(Lcom/android/server/policy/PermissionPolicyInternal;ILjava/lang/String;[I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    const/4 p0, 0x0

    .line 3826
    aget p0, v1, p0

    return p0
.end method

.method public getTopDisplayFocusedLeafTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 1766
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1768
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopLeafTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 1755
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    .line 1756
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_15

    return-object v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 488
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    const/4 v0, 0x0

    .line 489
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    return-object p0
.end method

.method public getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1774
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1778
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1779
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_13

    return-object v0

    .line 1784
    :cond_13
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public getTopVisibleActivities(I)Ljava/util/List;
    .registers 8

    .line 1679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_d

    .line 1681
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    if-eqz p1, :cond_15

    .line 1683
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1686
    :goto_19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1687
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;

    invoke-direct {v3, v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;-><init>(Ljava/util/ArrayList;)V

    .line 1692
    new-instance v4, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda14;

    invoke-direct {v4, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda14;-><init>(Ljava/util/ArrayList;)V

    .line 1697
    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda15;

    invoke-direct {v5, v1, v3, v4}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/Task;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_33

    .line 1709
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    goto :goto_36

    .line 1712
    :cond_33
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    :goto_36
    const/4 p0, 0x0

    .line 1714
    invoke-virtual {v0, p0, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-object v0
.end method

.method public getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 4

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 574
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 575
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1

    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 589
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_22

    .line 590
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 591
    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    if-ne v3, p1, :cond_1f

    return-object v2

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_22
    return-object v0
.end method

.method public getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x10

    .line 551
    :try_start_2
    invoke-static {p2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_6} :catch_b

    const/4 v0, 0x0

    move-object v1, v0

    move v0, p2

    move-object p2, v1

    goto :goto_c

    :catch_b
    const/4 v0, 0x0

    .line 556
    :goto_c
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public final getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 5

    .line 560
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda61;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda61;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .registers 13

    .line 923
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    .line 926
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_39

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v5, v5, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v1, v3, v8, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v3, -0x6ad75c6e4209c9faL    # -9.593013447397445E-207

    const/16 v5, 0x1fc

    invoke-static {v7, v3, v4, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_39
    const/4 v1, 0x0

    if-nez v0, :cond_3d

    return v1

    :cond_3d
    if-nez p3, :cond_69

    .line 933
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v3, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_69

    iget-wide v7, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v0, v7, v5

    if-gez v0, :cond_69

    .line 934
    iput-wide v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 935
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_69

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x77a4fb15be5c3accL    # 2.1648519881517276E268

    invoke-static {v0, v4, v5, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 938
    :cond_69
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-nez v0, :cond_7f

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7e

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz v3, :cond_7e

    .line 939
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_7e

    goto :goto_7f

    :cond_7e
    return v1

    :cond_7f
    :goto_7f
    if-nez p3, :cond_b6

    .line 940
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_b6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_b6

    iget-object p3, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayBrightnessOverrides:Landroid/util/SparseArray;

    .line 942
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result p3

    if-nez p3, :cond_b6

    .line 943
    new-instance p3, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;

    invoke-direct {p3}, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;-><init>()V

    .line 944
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p3, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;->brightness:F

    .line 945
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p3, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;->tag:Ljava/lang/CharSequence;

    .line 946
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    invoke-virtual {v0, v3, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 951
    :cond_b6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    if-eqz p3, :cond_d4

    .line 952
    iget-boolean v0, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_d4

    .line 956
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result p2

    if-nez p2, :cond_d0

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result p2

    if-eqz p2, :cond_d2

    .line 957
    :cond_d0
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    :cond_d2
    :goto_d2
    move v1, v2

    goto :goto_eb

    :cond_d4
    if-eqz p3, :cond_eb

    .line 960
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v0, :cond_d2

    .line 962
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->isKeyguardAlwaysUnlocked()Z

    move-result p3

    if-nez p3, :cond_d2

    if-eqz p2, :cond_eb

    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p3, 0x7d9

    if-ne p2, p3, :cond_eb

    goto :goto_d2

    .line 968
    :cond_eb
    :goto_eb
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p2, 0x10000

    and-int/2addr p1, p2

    if-eqz p1, :cond_f6

    .line 969
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    :cond_f6
    return v1
.end method

.method public final handleResizingWindows()V
    .registers 4

    .line 891
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_2f

    .line 892
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 893
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v2, :cond_1f

    goto :goto_2c

    .line 898
    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->updateSurfacePositionIfNeeded()V

    .line 899
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 900
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_2f
    return-void
.end method

.method public final handleRootTaskLaunchOnUserSwitch(I)V
    .registers 4

    .line 1949
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_e

    .line 1951
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 1953
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1954
    const-string p0, "switchUserOnHomeDisplay"

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    return-void

    .line 1957
    :cond_1a
    const-string p1, "switchUserOnOtherDisplay"

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    return-void
.end method

.method public hasAwakeDisplay()Z
    .registers 4

    .line 3116
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_18

    .line 3117
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3118
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .registers 5

    .line 646
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v0, p1, :cond_1a

    .line 648
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    return v1
.end method

.method public hasVisibleWindowAboveButDoesNotOwnNotificationShade(I)Z
    .registers 5

    const/4 v0, 0x1

    .line 3363
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 3367
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda33;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda33;-><init>(I[Z)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public invalidateTaskLayers()V
    .registers 2

    .line 2974
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 2975
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 2976
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method public invalidateTaskLayersAndUpdateOomAdjIfNeeded()V
    .registers 3

    .line 2969
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->mCheckUpdateOomAdj:Z

    .line 2970
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    return-void
.end method

.method public final isAlwaysVisibleUser(I)Z
    .registers 2

    .line 1963
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    .line 1964
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 1965
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isAttached()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final isHomeTask(I)Z
    .registers 2

    .line 1944
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1945
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isLayoutNeeded()Z
    .registers 5

    .line 537
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 539
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 540
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public isOnTop()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 1788
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$applySleepTokens$26(ZLcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .registers 5

    if-eqz p1, :cond_7

    const/4 p0, 0x0

    .line 2660
    invoke-virtual {p3, p0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    return-void

    .line 2662
    :cond_7
    new-instance p1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda46;

    invoke-direct {p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda46;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/android/server/wm/Task;->forAllLeafTasksAndLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 2665
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2666
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p0

    iget p1, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2667
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result p0

    if-nez p0, :cond_27

    .line 2673
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked()Z

    :cond_27
    const/4 p0, 0x0

    .line 2679
    invoke-virtual {p3, p0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final synthetic lambda$closeSystemDialogActivities$40(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 3347
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_10

    .line 3348
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/RootWindowContainer;->shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    return-void

    :cond_10
    :goto_10
    const/4 p0, 0x1

    .line 3349
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    return-void
.end method

.method public final synthetic lambda$findTask$21(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    const/4 v0, 0x0

    if-ne p2, p1, :cond_4

    return-object v0

    .line 2452
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    .line 2453
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_10

    return-object p0

    :cond_10
    return-object v0
.end method

.method public final synthetic lambda$getAllRootTaskInfos$29(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 2792
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic lambda$getAllRootTaskInfos$30(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 2801
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic lambda$lockAllProfileTasks$50(ILcom/android/server/wm/Task;)V
    .registers 6

    .line 3641
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 3642
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_2b

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3643
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3645
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3644
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_43

    .line 3650
    :cond_2b
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 3652
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p0

    .line 3653
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    .line 3652
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    :cond_43
    :goto_43
    return-void
.end method

.method public final synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 426
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_b

    .line 428
    :try_start_4
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {p1, p0}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public final synthetic lambda$onDisplayChanged$33(ILcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 2904
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->clearDisplayInfoCaches(I)V

    .line 2905
    sget-object p0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p0

    if-eqz p0, :cond_33

    const-wide/16 v0, 0x20

    .line 2906
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 2907
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfoChangeApplied, displayId="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2911
    :cond_27
    :try_start_27
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoChangeApplied()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    .line 2913
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2914
    throw p0

    :cond_33
    return-void
.end method

.method public final synthetic lambda$onDisplayRemoved$31(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 2877
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeDisplayContent(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public final synthetic lambda$onDisplayRemoved$32(Lcom/android/server/wm/Transition;Lcom/android/server/wm/DisplayContent;IZ)V
    .registers 6

    .line 2864
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 2865
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 2866
    new-instance p4, Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-direct {p4, p3}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    .line 2868
    iget-object p3, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 2869
    invoke-virtual {p3, v0}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    move-result p3

    .line 2868
    invoke-virtual {p4, p3}, Landroid/window/TransitionRequestInfo$DisplayChange;->setDisconnectReparentDisplay(I)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 2872
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, v0, p4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 2874
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;

    invoke-direct {p3, p0, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic lambda$rankTaskLayers$36(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 3003
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3004
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    :cond_e
    return-void
.end method

.method public final synthetic lambda$rankTaskLayers$37(Lcom/android/server/wm/Task;)V
    .registers 5

    .line 2989
    iget v0, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 2990
    iget v1, p1, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    const/4 v2, 0x0

    .line 2991
    iput v2, p1, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    .line 2992
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2993
    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    iput v2, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 2994
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2995
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->computeNonOccludedFreeformAreaRatio(Lcom/android/server/wm/Task;)V

    goto :goto_22

    :cond_1f
    const/4 v2, -0x1

    .line 2998
    iput v2, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 3000
    :cond_22
    :goto_22
    iget v2, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    if-ne v2, v0, :cond_2c

    iget v0, p1, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    if-eq v0, v1, :cond_2b

    goto :goto_2c

    :cond_2b
    return-void

    .line 3002
    :cond_2c
    :goto_2c
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$reclaimSomeSurfaceMemory$7(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 680
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_18

    .line 683
    :cond_b
    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 684
    iget-object p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_18

    .line 685
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, p0, p0}, Landroid/util/SparseIntArray;->append(II)V

    :cond_18
    :goto_18
    return-void
.end method

.method public final synthetic lambda$sendSleepTransition$24(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;Z)V
    .registers 5

    if-eqz p3, :cond_c

    .line 2581
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result p3

    if-nez p3, :cond_c

    .line 2582
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    .line 2584
    :cond_c
    iget-object p3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v0, "enterPip1"

    invoke-virtual {p3, v0, p2}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    .line 2585
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, p3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 2587
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 2589
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->playNow()V

    return-void
.end method

.method public final synthetic lambda$startHomeOnDisplay$12(ILjava/lang/String;ZZLcom/android/server/wm/TaskDisplayArea;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 8

    .line 1294
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    move v0, p4

    move p4, p3

    move-object p3, p5

    move p5, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    move-result p0

    or-int/2addr p0, p6

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$startHomeOnEmptyDisplays$11(Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 11

    .line 1271
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_18

    .line 1272
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getUserAssignedToDisplay(I)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    .line 1273
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    :cond_18
    return-void
.end method

.method public final synthetic lambda$switchUser$18(Landroid/util/IntArray;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 1877
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1882
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    goto :goto_22

    .line 1884
    :cond_d
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget v0, p2, Lcom/android/server/wm/Task;->mUserId:I

    if-eq p0, v0, :cond_19

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result p0

    if-eqz p0, :cond_21

    .line 1885
    :cond_19
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    if-eqz p0, :cond_2b

    .line 1888
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IntArray;->add(I)V

    :cond_2b
    return-void
.end method

.method public lockAllProfileTasks(I)V
    .registers 3

    .line 3640
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2074
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTaskInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public moveActivityToPinnedRootTaskAndRequestStart(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 2083
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTaskInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public final moveActivityToPinnedRootTaskInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Landroid/graphics/Rect;Z)V
    .registers 19

    move-object/from16 v0, p4

    .line 2090
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 2091
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2094
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2096
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->deferTransitionReady()V

    .line 2097
    new-instance v4, Lcom/android/server/wm/Transition$ReadyCondition;

    .line 2098
    const-string v5, "movedToPip"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Z)V

    .line 2099
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TransitionController;->waitFor(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 2100
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2103
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->isRootVisibilityUpdateDeferred()Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_2f

    .line 2104
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    move v5, v6

    goto :goto_30

    :cond_2f
    move v5, v7

    .line 2113
    :goto_30
    :try_start_30
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_43

    .line 2114
    filled-new-array {v9}, [I

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    goto :goto_53

    :catchall_3f
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1d1

    .line 2116
    :cond_43
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_53

    .line 2118
    invoke-virtual {v3, v8}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2119
    filled-new-array {v9}, [I

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 2123
    :cond_53
    :goto_53
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2128
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v8

    if-nez v8, :cond_63

    .line 2129
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 2132
    :cond_63
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    .line 2133
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v10

    .line 2134
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v11

    if-ne v11, v6, :cond_88

    .line 2139
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->maybeApplyLastRecentsAnimationTransaction()V

    .line 2141
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    if-eq v10, v1, :cond_7d

    .line 2144
    invoke-virtual {v2, v1, v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2147
    :cond_7d
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;

    invoke-direct {v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;)V

    move-object v11, v2

    goto/16 :goto_13b

    .line 2168
    :cond_88
    new-instance v11, Lcom/android/server/wm/Task$Builder;

    iget-object v12, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v11, v12}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 2169
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v11

    .line 2170
    invoke-virtual {v11, v6}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v11

    .line 2171
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getNextRootTaskId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2172
    invoke-virtual {v11, v12}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2173
    invoke-virtual {v11, v12}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v11

    .line 2174
    invoke-virtual {v11, v6}, Lcom/android/server/wm/Task$Builder;->setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v11

    .line 2175
    invoke-virtual {v11, v6}, Lcom/android/server/wm/Task$Builder;->setHasBeenVisible(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v11

    .line 2176
    invoke-virtual {v11}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v11

    const v12, 0x7fffffff

    .line 2178
    invoke-virtual {v1, v11, v12}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 2184
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 2187
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setLastParentBeforePip(Lcom/android/server/wm/ActivityRecord;)V

    .line 2191
    iget-object v1, v2, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v1}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 2197
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/server/wm/Task;->setBoundsUnchecked(Landroid/graphics/Rect;)I

    .line 2203
    iput-boolean v6, v11, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 2206
    iget-object v1, v2, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v1, :cond_e6

    .line 2207
    iget-object v10, v2, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v1, v10}, Lcom/android/server/wm/Task;->setLastRecentsAnimationTransaction(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    .line 2210
    invoke-virtual {v2, v7}, Lcom/android/server/wm/Task;->clearLastRecentsAnimationTransaction(Z)V

    goto :goto_e9

    .line 2213
    :cond_e6
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->resetSurfaceControlTransforms()V

    :goto_e9
    if-eqz v8, :cond_f9

    .line 2219
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v1

    if-ne v1, v6, :cond_f9

    .line 2220
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne v1, p1, :cond_f9

    .line 2221
    iput-boolean v6, v8, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    .line 2224
    :cond_f9
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v1

    if-eqz v1, :cond_103

    .line 2225
    invoke-virtual {v3, v11}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_106

    .line 2227
    :cond_103
    invoke-virtual {v3, v11}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2230
    :goto_106
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 2235
    invoke-virtual {v11, v9}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    .line 2240
    :cond_10f
    invoke-virtual {v11, v7}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    move-object/from16 v1, p3

    .line 2245
    invoke-virtual {p1, v11, v12, v1}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 2246
    invoke-virtual {v11, v6}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    .line 2249
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->maybeApplyLastRecentsAnimationTransaction()V

    .line 2251
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2252
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->getTransientHideTransitionForContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v1

    if-eqz v1, :cond_127

    move v1, v6

    goto :goto_128

    :cond_127
    move v1, v7

    .line 2253
    :goto_128
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v10

    if-eqz v10, :cond_13b

    if-eqz v1, :cond_13b

    .line 2257
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2263
    :cond_13b
    :goto_13b
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V

    .line 2267
    invoke-virtual {v11, v9}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    .line 2270
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    if-eqz v1, :cond_164

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v1

    if-eqz v1, :cond_164

    .line 2271
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v1

    if-nez v1, :cond_164

    .line 2273
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2277
    :cond_164
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v1

    if-eqz v1, :cond_16f

    if-eqz v0, :cond_16f

    .line 2279
    invoke-virtual {v11, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2282
    :cond_16f
    invoke-virtual {v11, v7}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 2284
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v0

    if-nez v0, :cond_17a

    .line 2288
    iput-boolean v6, p1, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 2292
    :cond_17a
    iput-boolean v7, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v8, :cond_18f

    .line 2294
    iget-boolean v0, v8, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    if-eqz v0, :cond_18f

    .line 2295
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->isTaskVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 2298
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V
    :try_end_18f
    .catchall {:try_start_30 .. :try_end_18f} :catchall_3f

    .line 2302
    :cond_18f
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-eqz v5, :cond_1a8

    .line 2305
    :try_start_196
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 2306
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V
    :try_end_19e
    .catchall {:try_start_196 .. :try_end_19e} :catchall_19f

    goto :goto_1a8

    :catchall_19f
    move-exception v0

    move-object p0, v0

    .line 2309
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    .line 2310
    invoke-virtual {v4}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 2311
    throw p0

    .line 2309
    :cond_1a8
    :goto_1a8
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    .line 2310
    invoke-virtual {v4}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 2315
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz p5, :cond_1bd

    if-eqz v0, :cond_1bd

    const/4 v1, 0x0

    .line 2319
    invoke-virtual {v3, v0, v11, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 2323
    invoke-virtual {v0, v11, v6}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 2326
    :cond_1bd
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 2328
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 2330
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result p1

    if-nez p1, :cond_1d0

    .line 2333
    invoke-virtual {p0, v11}, Lcom/android/server/wm/RootWindowContainer;->scheduleTimeoutAbortPipEnter(Lcom/android/server/wm/Task;)V

    :cond_1d0
    return-void

    .line 2302
    :goto_1d1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-eqz v5, :cond_1ea

    .line 2305
    :try_start_1d8
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 2306
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V
    :try_end_1e0
    .catchall {:try_start_1d8 .. :try_end_1e0} :catchall_1e1

    goto :goto_1ea

    :catchall_1e1
    move-exception v0

    move-object p0, v0

    .line 2309
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    .line 2310
    invoke-virtual {v4}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 2311
    throw p0

    .line 2309
    :cond_1ea
    :goto_1ea
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    .line 2310
    invoke-virtual {v4}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 2312
    throw p1
.end method

.method public moveRootTaskToDisplay(IIZ)V
    .registers 5

    .line 2047
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2053
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToTaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Z)V

    return-void

    .line 2049
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "moveRootTaskToDisplay: Unknown displayId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public moveRootTaskToTaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Z)V
    .registers 5

    .line 2010
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 2016
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_4d

    if-eqz p2, :cond_36

    if-eq p1, p2, :cond_17

    .line 2031
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2034
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    return-void

    .line 2028
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to move rootTask="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to its current taskDisplayArea="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2023
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "moveRootTaskToTaskDisplayArea: Unknown taskDisplayArea="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2018
    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "moveRootTaskToTaskDisplayArea: rootTask="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not attached to any task display area."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2012
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "moveRootTaskToTaskDisplayArea: Unknown rootTaskId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    if-eqz v1, :cond_12

    .line 2400
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_36

    .line 2402
    :cond_12
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 2404
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    if-eqz p2, :cond_36

    .line 2405
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    .line 2406
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 2407
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2410
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setPipVisibilityLw(Z)V

    return-void
.end method

.method public onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 500
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p1, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 502
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string p1, "onChildPositionChanged"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 5

    .line 2809
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2810
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_15

    .line 2812
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception p0

    goto :goto_29

    .line 2815
    :cond_15
    :try_start_15
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->setShouldShowSystemDecorationsForNewDisplay(Lcom/android/server/wm/DisplayContent;)V

    .line 2817
    const-string v2, "displayAdded"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->startSystemDecorations(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    .line 2821
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->removePossibleDisplayInfos(I)V

    .line 2822
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_29
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onDisplayChanged(I)V
    .registers 5

    .line 2899
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2900
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 2902
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/wm/RootWindowContainer;ILcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->requestDisplayUpdate(Ljava/lang/Runnable;)V

    goto :goto_1c

    :catchall_17
    move-exception p0

    goto :goto_21

    .line 2918
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->clearDisplayInfoCaches(I)V

    .line 2920
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_21
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onDisplayManagerReceivedDeviceState(I)V
    .registers 2

    .line 1177
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DeviceStateController;->onDeviceStateReceivedByDisplayManager(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 9

    if-eqz p1, :cond_45

    .line 2854
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2855
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_17

    .line 2857
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p0

    goto :goto_40

    .line 2859
    :cond_17
    :try_start_17
    sget-object v2, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_DISCONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2860
    new-instance v2, Lcom/android/server/wm/Transition;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 v5, 0x2

    const/high16 v6, 0x20000

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 2863
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v4, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;

    invoke-direct {v4, p0, v2, v1, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Transition;Lcom/android/server/wm/DisplayContent;I)V

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z

    goto :goto_3b

    .line 2881
    :cond_38
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->removeDisplayContent(Lcom/android/server/wm/DisplayContent;)V

    .line 2883
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_17 .. :try_end_3c} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 2851
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t remove the primary display."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSettingsRetrieved()V
    .registers 6

    .line 514
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_38

    .line 516
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 517
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayWindowSettings;->updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_35

    .line 523
    :cond_1d
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 528
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_35

    .line 529
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 530
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 529
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    .line 531
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Z)Z

    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_38
    return-void
.end method

.method public performSurfacePlacement()V
    .registers 9

    .line 743
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 744
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v1, 0x3

    .line 745
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 749
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const-wide/16 v0, -0x1

    .line 750
    iput-wide v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 751
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 752
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 753
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 756
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 759
    const-string v1, "applySurfaceChanges"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 761
    :try_start_31
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction()V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_34} :catch_3b
    .catchall {:try_start_31 .. :try_end_34} :catchall_38

    .line 765
    :goto_34
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_44

    :catchall_38
    move-exception p0

    goto/16 :goto_13d

    :catch_3b
    move-exception v1

    .line 763
    :try_start_3c
    const-string v6, "WindowManager"

    const-string v7, "Unhandled exception in Window Manager"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_38

    goto :goto_34

    .line 769
    :goto_44
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()V

    .line 770
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->clearFrameChangingWindows()V

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ClientLifecycleManager;->dispatchPendingTransactions()V

    .line 776
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingEvents()V

    .line 777
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingEvents()V

    .line 778
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v1}, Lcom/android/server/wm/BLASTSyncEngine;->onSurfacePlacement()V

    .line 780
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 781
    invoke-virtual {v1, v4}, Lcom/android/server/wm/BackNavigationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    .line 783
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_85

    .line 784
    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 785
    invoke-virtual {v1, v5, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 789
    :cond_85
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 790
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 798
    :cond_90
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ce

    :cond_9a
    add-int/lit8 v0, v0, -0x1

    .line 802
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 803
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 804
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 805
    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v6, v1, :cond_b4

    const/4 v6, 0x0

    .line 806
    invoke-virtual {v4, v6}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 808
    :cond_b4
    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 809
    iget v6, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 811
    :cond_c2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    if-gtz v0, :cond_9a

    .line 813
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 816
    :cond_ce
    :goto_ce
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_e8

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 818
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v1, :cond_e5

    .line 819
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_e5
    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    .line 826
    :cond_e8
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 828
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 830
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq v0, v1, :cond_115

    .line 831
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 832
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v5, v0}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 837
    :cond_115
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_12a

    .line 838
    :cond_125
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 841
    :cond_12a
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 849
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 851
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void

    .line 765
    :goto_13d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 766
    throw p0
.end method

.method public prepareForShutdown()V
    .registers 4

    const/4 v0, 0x0

    .line 2952
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2953
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    const-string v2, "shutdown"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->addSleepTokenOnly(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public putTasksToSleep(ZZ)Z
    .registers 6

    const/4 v0, 0x1

    .line 3071
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 3072
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda54;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda54;-><init>(Z[ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 3079
    aget-boolean p0, v1, v2

    return p0
.end method

.method public rankTaskLayers()V
    .registers 6

    .line 2982
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2983
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 2984
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2986
    :cond_10
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    .line 2988
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3010
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpOccludingRegion:Landroid/graphics/Region;

    if-eqz v0, :cond_22

    .line 3011
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 3015
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->startBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v0

    .line 3017
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->inActivityVisibilityUpdate()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 3018
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()Z

    move-result v2

    goto :goto_3c

    :catchall_39
    move-exception p0

    goto :goto_51

    :cond_3b
    move v2, v1

    .line 3020
    :goto_3c
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    iget-boolean v4, v3, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->mCheckUpdateOomAdj:Z

    if-eqz v4, :cond_4b

    .line 3021
    iput-boolean v1, v3, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->mCheckUpdateOomAdj:Z

    if-eqz v2, :cond_4b

    .line 3023
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V
    :try_end_4b
    .catchall {:try_start_2a .. :try_end_4b} :catchall_39

    :cond_4b
    if-eqz v0, :cond_50

    .line 3026
    invoke-virtual {v0}, Lcom/android/server/am/psc/BatchSession;->close()V

    :cond_50
    return-void

    :goto_51
    if-eqz v0, :cond_5b

    .line 3015
    :try_start_53
    invoke-virtual {v0}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    throw p0
.end method

.method public reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 659
    const-string v2, "WindowManager"

    iget-object v3, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 662
    iget-object v4, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v6, p2

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/EventLogTags;->writeWmNoSurfaceMemory(Ljava/lang/String;ILjava/lang/String;)V

    .line 664
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 669
    :try_start_1b
    const-string v6, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_29
    if-ge v8, v6, :cond_3e

    .line 672
    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v10

    or-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :catchall_3b
    move-exception v0

    goto/16 :goto_db

    :cond_3e
    if-nez v9, :cond_8b

    .line 676
    const-string v10, "No leaked surfaces; killing applications!"

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    move v11, v7

    move v12, v11

    :goto_4c
    if-ge v11, v6, :cond_8c

    .line 679
    iget-object v13, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    new-instance v14, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;

    invoke-direct {v14, v0, v10}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v13, v14, v7}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 689
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-lez v13, :cond_86

    .line 690
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    new-array v14, v13, [I

    move v15, v7

    :goto_6b
    if-ge v15, v13, :cond_76

    .line 692
    invoke-virtual {v10, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    aput v16, v14, v15
    :try_end_73
    .catchall {:try_start_1b .. :try_end_73} :catchall_3b

    add-int/lit8 v15, v15, 0x1

    goto :goto_6b

    .line 695
    :cond_76
    :try_start_76
    iget-object v13, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v15, "Free memory"
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7c} :catch_86
    .catchall {:try_start_76 .. :try_end_7c} :catchall_3b

    move/from16 v8, p3

    :try_start_7e
    invoke-interface {v13, v14, v15, v8}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    move-result v13
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_82} :catch_88
    .catchall {:try_start_7e .. :try_end_82} :catchall_3b

    if-eqz v13, :cond_88

    const/4 v12, 0x1

    goto :goto_88

    :catch_86
    :cond_86
    move/from16 v8, p3

    :catch_88
    :cond_88
    :goto_88
    add-int/lit8 v11, v11, 0x1

    goto :goto_4c

    :cond_8b
    move v12, v7

    :cond_8c
    if-nez v9, :cond_90

    if-eqz v12, :cond_d2

    .line 707
    :cond_90
    :try_start_90
    const-string v6, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_cb

    .line 710
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_b2

    iget-object v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v10, 0xc041a026a68384fL

    invoke-static {v3, v10, v11, v7, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 712
    :cond_b2
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 713
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 714
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 715
    iget-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_cb

    .line 716
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V
    :try_end_cb
    .catchall {:try_start_90 .. :try_end_cb} :catchall_3b

    .line 721
    :cond_cb
    :try_start_cb
    iget-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_d2} :catch_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_3b

    .line 726
    :catch_d2
    :cond_d2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v9, :cond_d9

    if-eqz v12, :cond_da

    :cond_d9
    const/4 v7, 0x1

    :cond_da
    return v7

    :goto_db
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 727
    throw v0
.end method

.method public refreshSecureSurfaceState()V
    .registers 3

    .line 611
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 614
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda31;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeAllMaybeAbortPipEnterRunnable()V
    .registers 3

    .line 3061
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    return-void

    .line 3064
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3065
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public removeChild(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 1090
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1091
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    if-ne v0, p1, :cond_12

    .line 1092
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_12
    return-void
.end method

.method public bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 171
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeChild(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public final removeDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 2887
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 2891
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->remove()V

    .line 2892
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2893
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->removePossibleDisplayInfos(I)V

    return-void

    .line 2888
    :cond_1a
    :goto_1a
    const-string p0, "WindowManager"

    const-string p1, "DisplayContent already removed or removing."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs removeRootTasksInWindowingModes([I)V
    .registers 4

    .line 3507
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 3508
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeRootTasksInWindowingModes([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public varargs removeRootTasksWithActivityTypes([I)V
    .registers 4

    .line 3513
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 3514
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeRootTasksWithActivityTypes([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public removeUser(I)V
    .registers 2

    .line 1970
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserVisibleRootTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public resolveActivities(ILandroid/content/Intent;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1489
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1490
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1491
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v3, 0x400

    move v5, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 1492
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    .line 1495
    :catch_1d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I
    .registers 4

    if-eqz p1, :cond_7

    .line 3282
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    if-nez p0, :cond_10

    if-eqz p3, :cond_10

    .line 3284
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p0

    :cond_10
    if-eqz p0, :cond_13

    return p0

    :cond_13
    if-eqz p2, :cond_19

    .line 3290
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p0

    :cond_19
    if-eqz p0, :cond_1c

    return p0

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 12

    .line 1379
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 1384
    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/16 v3, 0x400

    invoke-interface {v2, v0, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move v5, p1

    move-object v3, p2

    goto :goto_3b

    :catch_14
    move v5, p1

    move-object v3, p2

    goto :goto_3a

    .line 1386
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1387
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1388
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1389
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2d} :catch_14

    const/16 v6, 0x400

    move v5, p1

    move-object v3, p2

    .line 1388
    :try_start_31
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 1391
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    :cond_3a
    :goto_3a
    move-object v0, v1

    :goto_3b
    if-nez v0, :cond_52

    .line 1399
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 1400
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1399
    const-string p2, "WindowManager"

    const-string v0, "No home screen found for %s and user %d"

    invoke-static {p2, p0, v0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 1404
    :cond_52
    new-instance p1, Landroid/content/pm/ActivityInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 1405
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p1
.end method

.method public resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1412
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq p2, v0, :cond_9a

    .line 1417
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1418
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    .line 1424
    :goto_16
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_26

    .line 1425
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getCustomHomeComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_27

    :cond_26
    move-object v4, v5

    :goto_27
    if-eqz v4, :cond_34

    .line 1428
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1429
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-eqz v4, :cond_34

    move v3, v2

    move-object v1, v4

    :cond_34
    if-eqz v3, :cond_80

    .line 1438
    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    move-object v1, v5

    goto :goto_80

    .line 1444
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1445
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveActivities(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 1446
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1447
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move v6, v2

    :goto_5b
    if-ge v6, v4, :cond_73

    .line 1450
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1453
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 1454
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_74

    :cond_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    :cond_73
    move-object v1, v5

    :goto_74
    if-nez v1, :cond_80

    if-lez v4, :cond_80

    .line 1460
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_80
    :goto_80
    if-eqz v1, :cond_89

    .line 1466
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p2

    if-nez p2, :cond_89

    move-object v1, v5

    :cond_89
    if-nez v1, :cond_95

    .line 1474
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1475
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1477
    :cond_95
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1413
    :cond_9a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "resolveSecondaryHomeActivity: Should not be default task container"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resumeFocusedTasksTopActivities()Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2506
    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p0

    return p0
.end method

.method public resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2511
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p0

    return p0
.end method

.method public resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 15

    .line 2518
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_1d

    .line 2523
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2524
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p1, :cond_1d

    .line 2525
    :cond_18
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p4

    goto :goto_1e

    :cond_1d
    move p4, v1

    .line 2529
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v6, p4

    :goto_25
    if-ltz v0, :cond_66

    .line 2530
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p4

    check-cast p4, Lcom/android/server/wm/DisplayContent;

    .line 2532
    new-array v5, v2, [Z

    .line 2533
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 2534
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;

    move-object v4, p1

    move-object v9, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/wm/Task;[ZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p4, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 2555
    aget-boolean p1, v5, v1

    or-int p2, v6, p1

    if-nez p1, :cond_5f

    .line 2561
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 2563
    invoke-virtual {p1, v9, v8, v1}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p1

    :goto_4e
    or-int/2addr p1, p2

    move v6, p1

    goto :goto_60

    :cond_51
    if-nez v4, :cond_5f

    .line 2566
    const-string p1, "no-focusable-task"

    .line 2567
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    const/4 p4, 0x0

    .line 2566
    invoke-virtual {p0, p4, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p1

    goto :goto_4e

    :cond_5f
    move v6, p2

    :goto_60
    add-int/lit8 v0, v0, -0x1

    move-object p1, v4

    move-object p3, v8

    move-object p2, v9

    goto :goto_25

    :cond_66
    return v6
.end method

.method public resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 10

    .line 1502
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    if-nez p3, :cond_18

    .line 1508
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    :cond_18
    move-object v3, p3

    .line 1511
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " resumeHomeActivity"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_40

    .line 1515
    iget-boolean p2, p3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p2, :cond_40

    .line 1516
    invoke-virtual {p3, v2}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 1517
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    .line 1519
    :cond_40
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->getUserAssignedToDisplay(I)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1520
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    move-result p0

    return p0
.end method

.method public scheduleDestroyAllActivities(Ljava/lang/String;)V
    .registers 2

    .line 3056
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    .line 3057
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleTimeoutAbortPipEnter(Lcom/android/server/wm/Task;)V
    .registers 6

    .line 2338
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 2341
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2342
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2345
    :cond_e
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 2348
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer$2;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Task;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 2384
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2385
    const-string p0, "WindowManager"

    const-string p1, "a delayed check for potentially aborting PiP if in a wrong state is scheduled."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendSleepTransition(Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    .line 2578
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 2580
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda50;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    .line 2592
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v2

    if-nez v2, :cond_35

    .line 2595
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 2596
    const-string p0, "WindowManager"

    const-string v2, "Ongoing sync outside of a transition."

    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :cond_2c
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 2599
    invoke-interface {v1, v4}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    return-void

    .line 2601
    :cond_35
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z

    return-void
.end method

.method public final setShouldShowSystemDecorationsForNewDisplay(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 2826
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2827
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateShouldShowSystemDecorations()V

    .line 2828
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 2829
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    .line 2830
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerInternal;->onDisplayBelongToTopologyChanged(IZ)V

    :cond_1c
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 7

    .line 1148
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1149
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1150
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1151
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1153
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 1154
    :goto_29
    array-length v2, p1

    if-ge v1, v2, :cond_47

    .line 1155
    aget-object v2, p1, v1

    .line 1156
    new-instance v3, Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    invoke-direct {v3, v2, p0, v4}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/DeviceStateController;)V

    const/high16 v2, -0x80000000

    .line 1158
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1159
    iget v2, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_41

    .line 1160
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    goto :goto_44

    .line 1162
    :cond_41
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->setShouldShowSystemDecorationsForNewDisplay(Lcom/android/server/wm/DisplayContent;)V

    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1166
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    const/4 v1, 0x1

    .line 1167
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    const p1, 0x7fffffff

    .line 1168
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public final shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 4

    .line 3379
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 3380
    :cond_8
    const-string p1, "assist"

    if-ne p2, p1, :cond_d

    return v0

    .line 3385
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    return p0
.end method

.method public shouldPlacePrimaryHomeOnDisplay(I)Z
    .registers 3

    if-eqz p1, :cond_16

    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    .line 1532
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    if-eq p1, v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1534
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->shouldPlacePrimaryHomeOnDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 5

    .line 1544
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq v0, p1, :cond_66

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 1551
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->canHostHomeTask()Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 1556
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v1, :cond_1e

    return v0

    .line 1561
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1562
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    .line 1561
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_65

    .line 1569
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-static {p0}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_37

    return v0

    .line 1574
    :cond_37
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_65

    .line 1575
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result p1

    if-nez p1, :cond_65

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isHomeSupported()Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_65

    .line 1580
    :cond_4a
    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_63

    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_MIRROR_DISPLAY_NO_ACTIVITY:Landroid/window/DesktopExperienceFlags;

    .line 1581
    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 1582
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->canHostTasks()Z

    move-result p0

    if-nez p0, :cond_63

    return v0

    :cond_63
    const/4 p0, 0x1

    return p0

    :cond_65
    :goto_65
    return v0

    .line 1545
    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "shouldPlaceSecondaryHomeOnDisplay: Should not be on default task container"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startHomeOnAllDisplays(ILjava/lang/String;)Z
    .registers 6

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_7
    if-ltz v0, :cond_19

    .line 1263
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1264
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_19
    return v1
.end method

.method public startHomeOnDisplay(ILjava/lang/String;I)Z
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 1280
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    move-result p0

    return p0
.end method

.method public startHomeOnDisplay(ILjava/lang/String;IZZ)Z
    .registers 12

    const/4 v0, -0x1

    if-ne p3, v0, :cond_f

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_e

    .line 1289
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p3

    goto :goto_f

    :cond_e
    const/4 p3, 0x0

    .line 1292
    :cond_f
    :goto_f
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    .line 1293
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/wm/RootWindowContainer;ILjava/lang/String;ZZ)V

    .line 1296
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1293
    invoke-virtual {p3, v0, p0}, Lcom/android/server/wm/WindowContainer;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public startHomeOnEmptyDisplays(Ljava/lang/String;)V
    .registers 3

    .line 1270
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda57;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z
    .registers 10

    if-nez p3, :cond_11

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_d

    .line 1315
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    goto :goto_11

    .line 1316
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    .line 1322
    :cond_11
    :goto_11
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 1323
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->shouldKeepNoTask()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1324
    invoke-virtual {p3, v1}, Lcom/android/server/wm/TaskDisplayArea;->setShouldKeepNoTask(Z)Lcom/android/server/wm/Task;

    .line 1329
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq p3, v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1331
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    .line 1330
    invoke-virtual {v0, v2, p1}, Lcom/android/server/wm/WindowManagerService;->shouldPlacePrimaryHomeOnDisplay(II)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_4c

    .line 1334
    :cond_36
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1335
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;

    move-result-object v0

    .line 1336
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 1337
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    goto :goto_56

    :cond_49
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_56

    .line 1332
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1333
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    :goto_56
    if-eqz v2, :cond_df

    if-nez v0, :cond_5c

    goto/16 :goto_df

    .line 1344
    :cond_5c
    invoke-virtual {p0, v2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p4

    if-nez p4, :cond_63

    return v1

    .line 1348
    :cond_63
    iget-object p4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p4, p1}, Landroid/app/ActivityManagerInternal;->shouldDelayHomeLaunch(I)Z

    move-result p4

    if-eqz p4, :cond_84

    .line 1349
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ThemeHomeDelay: Home launch was deferred with user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1354
    :cond_84
    new-instance p4, Landroid/content/ComponentName;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p4, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1355
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result p4

    const/high16 v1, 0x10000000

    or-int/2addr p4, v1

    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p4, 0x1

    if-eqz p5, :cond_a4

    .line 1358
    const-string p5, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1360
    :cond_a4
    const-string p5, "android.intent.extra.EXTRA_START_REASON"

    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1364
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1366
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    invoke-virtual {p0, v0, v2, p1, p3}, Lcom/android/server/wm/ActivityStartController;->startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V

    return p4

    :cond_df
    :goto_df
    return v1
.end method

.method public startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_23

    if-eqz p2, :cond_23

    .line 3757
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_23

    .line 3760
    new-array p1, v0, [Z

    const/4 v1, 0x0

    aput-boolean v0, p1, v1

    .line 3761
    new-array v2, v0, [Z

    aput-boolean v0, v2, v1

    .line 3762
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;

    invoke-direct {v3, p1, v2, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;-><init>([Z[ZLcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    .line 3773
    aget-boolean p1, p1, v1

    if-nez p1, :cond_23

    aget-boolean p1, v2, v1

    if-nez p1, :cond_23

    return-void

    :cond_23
    if-eqz p2, :cond_2a

    .line 3787
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result p1

    goto :goto_30

    :cond_2a
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result p1

    :goto_30
    if-eqz p1, :cond_50

    if-eqz p2, :cond_50

    const/4 p1, 0x3

    .line 3789
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityRecord;->isLaunchSourceType(I)Z

    move-result v1

    if-nez v1, :cond_50

    .line 3790
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object p2

    if-eqz p2, :cond_4f

    .line 3791
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 3792
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    move-result-object p2

    iget p2, p2, Landroid/app/ActivityOptions$SourceInfo;->type:I

    if-eq p2, p1, :cond_50

    :cond_4f
    const/4 v0, 0x5

    .line 3796
    :cond_50
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->startPowerMode(I)V

    return-void
.end method

.method public startSystemDecorations(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V
    .registers 5

    .line 2839
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 2843
    :cond_11
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    .line 2844
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayAddSystemDecorations()V

    return-void
.end method

.method public switchUser(ILcom/android/server/am/UserState;)Z
    .registers 10

    .line 1865
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    .line 1867
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    const/4 v3, 0x2

    .line 1871
    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 1873
    sget-object v3, Landroid/window/DesktopModeFlags;->ENABLE_TOP_VISIBLE_ROOT_TASK_PER_USER_TRACKING:Landroid/window/DesktopModeFlags;

    invoke-virtual {v3}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_33

    .line 1874
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 1875
    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/IntArray;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 1891
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mUserVisibleRootTasks:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3a

    .line 1893
    :cond_33
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1896
    :goto_3a
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 1898
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1899
    new-instance p2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda18;

    invoke-direct {p2, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda18;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_70

    .line 1904
    iget p2, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->isAlwaysVisibleUser(I)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 1905
    const-string p2, "WindowManager"

    const-string v0, "Persisting top task because it belongs to an always-visible user"

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserVisibleRootTasks:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/IntArray;

    .line 1910
    invoke-virtual {p2, v2}, Landroid/util/IntArray;->add(I)V

    .line 1911
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserVisibleRootTasks:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v0, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1918
    :cond_70
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 1919
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserVisibleRootTasks:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/IntArray;

    const/4 p2, 0x1

    if-eqz p1, :cond_a5

    .line 1922
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_87

    goto :goto_a5

    .line 1928
    :cond_87
    :goto_87
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    if-ge v4, v0, :cond_97

    .line 1929
    invoke-virtual {p1, v4}, Landroid/util/IntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->handleRootTaskLaunchOnUserSwitch(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    .line 1932
    :cond_97
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result p1

    .line 1933
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->isHomeTask(I)Z

    move-result p0

    return p0

    .line 1925
    :cond_a5
    :goto_a5
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->handleRootTaskLaunchOnUserSwitch(I)V

    return p2
.end method

.method public topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 3519
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    .line 3520
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_15

    return-object v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateActivityApplicationInfo(ILandroid/util/ArrayMap;)V
    .registers 4

    .line 3485
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;-><init>(ILandroid/util/ArrayMap;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateActivityApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 3474
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3475
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3476
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1, v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;-><init>(ILjava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateAppOpsState()V
    .registers 3

    .line 628
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda41;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public updateDisplayImePolicyCache()V
    .registers 3

    .line 2931
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2932
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 2933
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayImePolicyCache:Ljava/util/Map;

    return-void
.end method

.method public updateFocusedWindowLocked(IZ)Z
    .registers 14

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v5, v2

    move v4, v3

    :goto_11
    if-ltz v0, :cond_53

    .line 456
    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 457
    invoke-virtual {v6, p1, p2, v4}, Lcom/android/server/wm/DisplayContent;->updateFocusedWindowLocked(IZI)Z

    move-result v7

    or-int/2addr v5, v7

    .line 458
    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_46

    .line 460
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    .line 461
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3f

    .line 462
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v9, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    if-ne v4, v3, :cond_50

    .line 465
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    goto :goto_50

    :cond_46
    if-ne v4, v3, :cond_50

    .line 467
    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_50

    .line 471
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    :cond_50
    :goto_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_53
    if-ne v4, v3, :cond_56

    goto :goto_57

    :cond_56
    move v2, v4

    .line 477
    :goto_57
    iget p1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    if-eq p1, v2, :cond_8b

    .line 478
    iput v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 479
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedDisplay(I)V

    .line 480
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->setTopFocusedDisplay(I)V

    .line 481
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AccessibilityController;->setFocusedDisplay(I)V

    .line 482
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_8b

    int-to-long p0, v2

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v2, 0x2e3af961ccfb3079L    # 5.423866530970794E-86

    invoke-static {p2, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_8b
    return v5
.end method

.method public updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .registers 4

    .line 620
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda49;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda49;-><init>(Landroid/util/ArraySet;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public updateUIDsPresentOnDisplay()V
    .registers 5

    .line 2938
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2939
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_27

    .line 2940
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2942
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2943
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2944
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v1

    .line 2943
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 2948
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    return-void
.end method

.method public updateUserRootTask(ILcom/android/server/wm/Task;)V
    .registers 6

    .line 1981
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-eq p1, v0, :cond_35

    if-nez p2, :cond_e

    .line 1983
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p2

    .line 1987
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserVisibleRootTasks:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    .line 1989
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 1991
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->remove(I)V

    .line 1993
    :cond_29
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    .line 1994
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserVisibleRootTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_35
    return-void
.end method
