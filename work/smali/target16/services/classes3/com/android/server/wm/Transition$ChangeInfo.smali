.class Lcom/android/server/wm/Transition$ChangeInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# static fields
.field static final FLAG_CHANGE_MOVED_TO_TOP:I = 0x20


# instance fields
.field public final mAbsoluteBounds:Landroid/graphics/Rect;

.field public mCommonAncestor:Lcom/android/server/wm/WindowContainer;

.field public final mContainer:Lcom/android/server/wm/WindowContainer;

.field public mDisplayId:I

.field public mEndParent:Lcom/android/server/wm/WindowContainer;

.field public mExistenceChanged:Z

.field public mFlags:I

.field public mKnownConfigChanges:I

.field public mReadyFlags:I

.field public mReadyMode:I

.field public mRestoringTransientHide:Z

.field public mRotation:I

.field public mShowWallpaper:Z

.field public mSnapshot:Landroid/view/SurfaceControl;

.field public mSnapshotLuma:F

.field public mStartParent:Lcom/android/server/wm/WindowContainer;

.field public mVisible:Z

.field public mWindowingMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 3829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3800
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 3804
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRestoringTransientHide:Z

    .line 3808
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    .line 3810
    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 3811
    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    .line 3815
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 3830
    iput-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3831
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 3832
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 3833
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3834
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 3835
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 3836
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 3837
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smgetDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;ZZ)V
    .registers 4

    .line 3842
    invoke-direct {p0, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 3843
    iput-boolean p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 3844
    iput-boolean p3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    const/4 p1, 0x0

    .line 3845
    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    return-void
.end method


# virtual methods
.method public getChangeFlags(Lcom/android/server/wm/WindowContainer;)I
    .registers 8

    .line 3908
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 3911
    :goto_e
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisTranslucent(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_16

    or-int/lit8 v0, v0, 0x4

    .line 3914
    :cond_16
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BackNavigationController;->isMonitorTransitionTarget(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 3917
    :cond_25
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 3921
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 3923
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 3925
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_46

    .line 3926
    invoke-virtual {v3}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    move-result v3

    if-eqz v3, :cond_46

    or-int/lit16 v0, v0, 0x800

    .line 3929
    :cond_46
    iget-boolean v3, v2, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_5d

    const/4 v3, 0x2

    const/16 v4, 0x100

    .line 3930
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 3931
    const-string v3, "Transition"

    const-string v4, "Unexpected launch-task-behind operation in shell transition"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x80000

    or-int/2addr v0, v3

    .line 3934
    :cond_5d
    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    const v3, 0x48000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_66

    or-int/2addr v0, v3

    .line 3939
    :cond_66
    iget-object v2, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_6c

    or-int/lit8 v0, v0, 0x10

    .line 3944
    :cond_6c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const/high16 v3, 0x400000

    if-eqz v2, :cond_89

    .line 3946
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 3947
    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v5, :cond_7e

    or-int/lit8 v0, v0, 0x10

    .line 3950
    :cond_7e
    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    or-int/2addr v0, v5

    .line 3951
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result v5

    if-eqz v5, :cond_8a

    or-int/2addr v0, v3

    goto :goto_8a

    :cond_89
    const/4 v4, 0x0

    .line 3955
    :cond_8a
    :goto_8a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_96

    if-nez v1, :cond_96

    .line 3957
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    :cond_96
    if-eqz v4, :cond_d1

    .line 3960
    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {v4, v1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_a5

    or-int/lit16 v0, v0, 0x200

    .line 3964
    :cond_a5
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_c8

    if-eq v1, v2, :cond_c6

    .line 3966
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_b6

    iget-object v5, v5, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_b6

    goto :goto_c6

    :cond_b6
    if-eqz v2, :cond_c8

    .line 3969
    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    .line 3970
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ge v2, v1, :cond_c8

    :cond_c6
    :goto_c6
    or-int/lit16 v0, v0, 0x4000

    .line 3974
    :cond_c8
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/Transition$ChangeInfo;->isWindowFillingTask(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_105

    or-int/lit16 p1, v0, 0x400

    goto :goto_e2

    .line 3979
    :cond_d1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_e4

    or-int/lit8 p1, v0, 0x20

    .line 3982
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result v1

    if-eqz v1, :cond_e2

    or-int/lit16 v0, v0, 0xa0

    goto :goto_105

    :cond_e2
    :goto_e2
    move v0, p1

    goto :goto_105

    .line 3985
    :cond_e4
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_ed

    or-int/lit8 v0, v0, 0x2

    goto :goto_105

    .line 3987
    :cond_ed
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisInputMethod(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_f6

    or-int/lit16 v0, v0, 0x100

    goto :goto_105

    .line 3991
    :cond_f6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result p1

    const/16 v1, 0x7d0

    if-lt p1, v1, :cond_105

    const/16 v1, 0xbb7

    if-gt p1, v1, :cond_105

    const/high16 p1, 0x10000

    or-int/2addr v0, p1

    .line 3998
    :cond_105
    :goto_105
    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_112

    and-int/lit8 p1, p0, 0x10

    if-nez p1, :cond_112

    const/high16 p1, 0x40000

    or-int/2addr v0, p1

    :cond_112
    and-int/lit8 p1, p0, 0x20

    if-eqz p1, :cond_119

    const/high16 p1, 0x100000

    or-int/2addr v0, p1

    :cond_119
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_120

    or-int p0, v0, v3

    return p0

    :cond_120
    return v0
.end method

.method public getTransitMode(Lcom/android/server/wm/WindowContainer;)I
    .registers 6

    .line 3888
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v1, :cond_e

    .line 3889
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz p0, :cond_d

    return v2

    :cond_d
    return v3

    :cond_e
    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x3

    if-eqz v0, :cond_14

    return v1

    .line 3894
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    .line 3895
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-ne p1, v0, :cond_1e

    const/4 p0, 0x6

    return p0

    .line 3898
    :cond_1e
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz p0, :cond_27

    if-eqz p1, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    return v2

    :cond_27
    if-eqz p1, :cond_2a

    return v1

    :cond_2a
    return v3
.end method

.method public hasChanged()Z
    .registers 5

    .line 3860
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 3862
    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6c

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6c

    :cond_13
    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_6c

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_1e

    goto :goto_6c

    .line 3870
    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    const/4 v3, 0x0

    if-ne v0, v2, :cond_26

    if-nez v2, :cond_26

    return v3

    :cond_26
    if-ne v0, v2, :cond_6c

    .line 3871
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    if-nez v0, :cond_6c

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3875
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v0, v2, :cond_6c

    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3876
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3877
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    if-ne v0, v2, :cond_6c

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3878
    invoke-static {v2}, Lcom/android/server/wm/Transition;->-$$Nest$smgetDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    if-ne v0, v2, :cond_6c

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_6c

    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRestoringTransientHide:Z

    if-eqz p0, :cond_6b

    goto :goto_6c

    :cond_6b
    return v3

    :cond_6c
    :goto_6c
    return v1
.end method

.method public final isWindowFillingTask(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;)Z
    .registers 8

    .line 4013
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 4014
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 4015
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 4016
    iget-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 4017
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4019
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_27

    .line 4020
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-ne v0, p0, :cond_25

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ne p2, p0, :cond_25

    goto :goto_27

    :cond_25
    move p0, v4

    goto :goto_28

    :cond_27
    :goto_27
    move p0, v3

    .line 4021
    :goto_28
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 4022
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-ne v0, p1, :cond_3b

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ne p2, p1, :cond_3b

    goto :goto_3d

    :cond_3b
    move p1, v4

    goto :goto_3e

    :cond_3d
    :goto_3d
    move p1, v3

    :goto_3e
    if-eqz p0, :cond_43

    if-eqz p1, :cond_43

    return v3

    :cond_43
    return v4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3850
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3851
    const-string v1, "ChangeInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3852
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3853
    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3854
    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 3855
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3856
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
