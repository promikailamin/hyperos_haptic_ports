.class public final Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;
.super Ljava/lang/Object;
.source "DisplayRotationImmersiveAppCompatPolicy.java"


# instance fields
.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayRotation:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public static synthetic $r8$lambda$goMWfxf-NANK8C-U8-jjfWI8u4E(Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;Lcom/android/server/wm/WindowOrientationListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->lambda$deferOrientationUpdate$0(Lcom/android/server/wm/WindowOrientationListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 67
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 68
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method public static createIfNeeded(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;
    .registers 4

    .line 50
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isDisplayRotationImmersiveAppCompatPolicyEnabledAtBuildTime()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_8
    new-instance v0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;-><init>(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)V

    return-object v0
.end method


# virtual methods
.method public deferOrientationUpdate()Z
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 78
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLastOrientation()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_13

    goto :goto_43

    .line 81
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 82
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 84
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->getProposedRotation()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v3

    if-ne v2, v3, :cond_28

    goto :goto_43

    .line 90
    :cond_28
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-nez v2, :cond_33

    return v1

    .line 93
    :cond_33
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;Lcom/android/server/wm/WindowOrientationListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_43
    :goto_43
    return v1
.end method

.method public final hasRequestedToHideStatusAndNavBars(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 173
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    .line 177
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result p0

    .line 178
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return p1
.end method

.method public isRotationLockEnforced(I)Z
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isDisplayRotationImmersiveAppCompatPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 128
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->isRotationLockEnforcedLocked(I)Z

    move-result p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_1d
    move-exception p0

    .line 129
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final isRotationLockEnforcedLocked(I)Z
    .registers 6

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 137
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    .line 143
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->hasRequestedToHideStatusAndNavBars(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 149
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 150
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    goto :goto_45

    .line 155
    :cond_2c
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v2

    if-eqz v2, :cond_33

    return v1

    .line 159
    :cond_33
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 165
    :cond_3a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->surfaceRotationToConfigurationOrientation(I)I

    move-result p0

    if-eq v0, p0, :cond_45

    return v3

    :cond_45
    :goto_45
    return v1
.end method

.method public final synthetic lambda$deferOrientationUpdate$0(Lcom/android/server/wm/WindowOrientationListener;)V
    .registers 2

    .line 94
    invoke-virtual {p1}, Lcom/android/server/wm/WindowOrientationListener;->getProposedRotation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->isRotationLockEnforcedLocked(I)Z

    move-result p1

    if-nez p1, :cond_12

    .line 95
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    :cond_12
    return-void
.end method

.method public final surfaceRotationToConfigurationOrientation(I)I
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 185
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
