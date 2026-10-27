.class Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FixedRotationTransitionListener"
.end annotation


# instance fields
.field private mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

.field private mRecentsWillBeTop:Z

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimatingRecents(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayContent;

    .line 6989
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method getAnimatingRecents()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 6999
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method notifyRecentsWillBeTop()V
    .registers 2

    .line 7065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    .line 7066
    return-void
.end method

.method public onAppTransitionCancelledLocked(Z)V
    .registers 3
    .param p1, "keyguardGoingAway"    # Z

    .line 7143
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 7144
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 7145
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 7092
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 7097
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_5a

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v1, :cond_d

    goto :goto_5a

    .line 7100
    :cond_d
    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    if-eqz v1, :cond_14

    .line 7106
    return-void

    .line 7108
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_20

    .line 7112
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->finishFixedRotationTransform()V

    .line 7113
    return-void

    .line 7115
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform(Lcom/android/server/wm/WindowToken;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 7116
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->hasAnimatingFixedRotationTransition()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 7119
    return-void

    .line 7126
    :cond_39
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 7127
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_59

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq v1, v2, :cond_4c

    goto :goto_59

    .line 7131
    :cond_4c
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isAppTransitioning()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 7132
    return-void

    .line 7137
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_53
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 7138
    return-void

    .line 7129
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    :cond_59
    :goto_59
    return-void

    .line 7098
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_5a
    :goto_5a
    return-void
.end method

.method public onAppTransitionTimeoutLocked()V
    .registers 2

    .line 7149
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 7150
    return-void
.end method

.method onFinishRecentsAnimation()V
    .registers 6

    .line 7034
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 7035
    .local v0, "animatingRecents":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    .line 7036
    .local v1, "recentsWillBeTop":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 7037
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    .line 7038
    if-eqz v1, :cond_d

    .line 7041
    return-void

    .line 7044
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->recoveryFloatWindowState(Z)V

    .line 7046
    if-eqz v0, :cond_31

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v3}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne v0, v3, :cond_31

    .line 7047
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eq v0, v3, :cond_31

    .line 7054
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_36

    .line 7060
    :cond_31
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 7062
    :goto_36
    return-void
.end method

.method onStartRecentsAnimation(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 7011
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 7012
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    .line 7019
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->rotateInDifferentOrientationIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 7020
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 7023
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V

    .line 7025
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hideFloatWindows(Z)V

    .line 7027
    :cond_33
    return-void
.end method

.method shouldDeferRotation()Z
    .registers 4

    .line 7073
    const/4 v0, 0x0

    .line 7074
    .local v0, "source":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 7075
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 7076
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 7077
    move-object v0, v1

    .line 7079
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1e
    goto :goto_2d

    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 7080
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 7082
    :goto_2d
    const/4 v1, 0x0

    if-eqz v0, :cond_43

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(Z)I

    move-result v2

    if-nez v2, :cond_38

    goto :goto_43

    .line 7087
    :cond_38
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, v1}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate(Z)Z

    move-result v1

    return v1

    .line 7084
    :cond_43
    :goto_43
    return v1
.end method
