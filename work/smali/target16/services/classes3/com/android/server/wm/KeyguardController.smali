.class public Lcom/android/server/wm/KeyguardController;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# static fields
.field public static final ENABLE_NEW_KEYGUARD_SHELL_TRANSITIONS:Z = false

.field public static final REMOVE_DEFAULT_DISPLAY_USAGE:Z = true


# instance fields
.field public final mDisplayStates:Landroid/util/SparseArray;

.field public final mGoingAwayTimeout:Ljava/lang/Runnable;

.field public final mResetWaitTransition:Ljava/lang/Runnable;

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

.field public mWaitingForWakeTransition:Z

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$YvZEvwSShUAQJF9tGNSmKT7fzbU(Lcom/android/server/wm/KeyguardController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$dd9qFZWezuQZkMmVMxnnt8OrEnw(Lcom/android/server/wm/KeyguardController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskSupervisor(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskSupervisor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleDismissInsecureKeyguard(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->handleDismissInsecureKeyguard(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOccludedChanged(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/KeyguardController;->handleOccludedChanged(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleGoingAwayTimeout(Lcom/android/server/wm/KeyguardController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->scheduleGoingAwayTimeout(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

    .line 636
    new-instance v0, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/KeyguardController;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mResetWaitTransition:Ljava/lang/Runnable;

    .line 679
    new-instance v0, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/KeyguardController;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mGoingAwayTimeout:Ljava/lang/Runnable;

    .line 104
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 105
    iput-object p2, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-void
.end method


# virtual methods
.method public canDismissKeyguard()Z
    .registers 2

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardTrustedLw()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 593
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 416
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 417
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 419
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmDismissingKeyguardActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eq p0, p1, :cond_2e

    :cond_2c
    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public canShowWhileOccluded(ZZ)Z
    .registers 3

    if-nez p2, :cond_15

    if-eqz p1, :cond_13

    .line 426
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 427
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 436
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->canShowWithInsecureKeyguard()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    .line 440
    :cond_10
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    .line 444
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 445
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result p0

    return p0

    :cond_38
    return v1
.end method

.method public final convertTransitFlags(I)I
    .registers 3

    .line 0
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_7

    const/16 p0, 0x101

    goto :goto_9

    :cond_7
    const/16 p0, 0x100

    :goto_9
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_f

    or-int/lit8 p0, p0, 0x2

    :cond_f
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_15

    or-int/lit8 p0, p0, 0x4

    :cond_15
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1b

    or-int/lit8 p0, p0, 0x8

    :cond_1b
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_21

    or-int/lit16 p0, p0, 0x200

    :cond_21
    return p0
.end method

.method public dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 6

    .line 363
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 364
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_b

    goto :goto_3e

    .line 368
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity requesting to dismiss Keyguard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p1

    const-string v1, "dismissKeyguard"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(ILjava/lang/String;)V

    .line 376
    :cond_38
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void

    .line 365
    :cond_3e
    :goto_3e
    invoke-virtual {p0, p2}, Lcom/android/server/wm/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 893
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KeyguardController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mKeyguardShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mAodShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mKeyguardGoingAway="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 899
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  mDismissalRequested="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    const/4 v0, 0x0

    .line 904
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 905
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v1, 0x10800000003L

    .line 906
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000001L

    .line 907
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000005L

    .line 908
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x20b00000004L

    .line 909
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/KeyguardController;->writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 910
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 914
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 915
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .registers 3

    .line 381
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 383
    const-string p1, "ActivityTaskManager"

    const-string v0, "Failed to call callback"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getDismissKeyguardActivity(I)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmDismissingKeyguardActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    .registers 5

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    if-nez v0, :cond_39

    .line 615
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz p1, :cond_2c

    if-eqz v0, :cond_2c

    .line 617
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardAlwaysUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2c

    .line 620
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 621
    new-instance v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2, p1, v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILcom/android/server/wm/KeyguardController$KeyguardDisplayState;)V

    goto :goto_33

    .line 618
    :cond_2c
    :goto_2c
    new-instance v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    .line 623
    :goto_33
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v1

    :cond_39
    return-object v0
.end method

.method public getTopOccludingActivity(I)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmTopOccludesActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final handleDismissInsecureKeyguard(Lcom/android/server/wm/DisplayContent;)V
    .registers 10

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v1, "kgDisInsec"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v7

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 550
    :try_start_f
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v2

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActionChain;)Lcom/android/server/wm/Transition;

    .line 552
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 553
    sget-boolean p1, Lcom/android/server/wm/KeyguardController;->REMOVE_DEFAULT_DISPLAY_USAGE:Z

    if-eqz p1, :cond_2b

    .line 554
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_30

    :catchall_28
    move-exception v0

    move-object p1, v0

    goto :goto_3d

    .line 556
    :cond_2b
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_28

    .line 559
    :goto_30
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 560
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    return-void

    .line 559
    :goto_3d
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 560
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    .line 561
    throw p1
.end method

.method public final handleDismissKeyguard(I)V
    .registers 4

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 575
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    const/4 p1, 0x1

    .line 577
    invoke-static {p0, p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    return-void
.end method

.method public final handleOccludedChanged(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)V
    .registers 13

    .line 477
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz v0, :cond_8

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(Lcom/android/server/wm/DisplayContent;)V

    return-void

    .line 487
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 488
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v1

    .line 490
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v0

    .line 491
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v8

    .line 494
    invoke-static {v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmOccluded(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v3

    const/16 v4, 0x2000

    const/16 v5, 0x1000

    if-eqz v3, :cond_27

    const/16 v3, 0x8

    move v9, v4

    move v4, v5

    goto :goto_2a

    :cond_27
    const/16 v3, 0x9

    move v9, v5

    .line 504
    :goto_2a
    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmOccluded(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->onKeyguardOccludedChangedLw(Z)V

    .line 505
    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v6, "kgOccludeChg"

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v7

    .line 506
    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    if-eqz v0, :cond_7e

    .line 509
    :try_start_46
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 510
    invoke-static {v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmOccluded(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    if-eqz v0, :cond_5e

    if-eqz p2, :cond_5e

    .line 511
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    :goto_58
    move-object v6, p1

    move-object v5, p2

    goto :goto_60

    :catchall_5b
    move-exception v0

    move-object p1, v0

    goto :goto_b3

    :cond_5e
    const/4 p2, 0x0

    goto :goto_58

    .line 512
    :goto_60
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActionChain;)Lcom/android/server/wm/Transition;

    move-object p2, v5

    .line 513
    invoke-virtual {v7}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    .line 514
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result v0

    and-int/2addr v0, v9

    if-eqz v0, :cond_73

    .line 515
    invoke-virtual {p1, v9}, Lcom/android/server/wm/Transition;->removeFlag(I)V

    goto :goto_76

    .line 517
    :cond_73
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :goto_76
    if-eqz p2, :cond_9e

    .line 520
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_9e

    :cond_7c
    move-object v6, p1

    goto :goto_9e

    :cond_7e
    move-object v6, p1

    .line 524
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result p1

    if-eqz p1, :cond_97

    .line 525
    iget-object p1, v2, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/WindowManagerPolicy;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 527
    :cond_97
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardOcclusionChange()I

    .line 530
    :cond_9e
    :goto_9e
    invoke-virtual {p0, v6}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(Lcom/android/server/wm/DisplayContent;)V

    if-nez v8, :cond_a6

    .line 532
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V
    :try_end_a6
    .catchall {:try_start_46 .. :try_end_a6} :catchall_5b

    .line 535
    :cond_a6
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 536
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    return-void

    .line 535
    :goto_b3
    iget-object p2, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 536
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    .line 537
    throw p1
.end method

.method public isAodShowing(I)Z
    .registers 2

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    return p0
.end method

.method public isKeyguardGoingAway(I)Z
    .registers 2

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    .line 178
    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardLocked(I)Z
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    .line 155
    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardOccluded(I)Z
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    .line 161
    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-nez p1, :cond_18

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmOccluded(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardOrAodShowing(I)Z
    .registers 2

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    .line 123
    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_1e

    :cond_10
    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmOccluded(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardShowing(I)Z
    .registers 2

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    .line 147
    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-nez p1, :cond_18

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmOccluded(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardUnoccludedOrAodShowing(I)Z
    .registers 4

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    if-nez p1, :cond_13

    .line 135
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 136
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 138
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result p0

    return p0
.end method

.method public keyguardGoingAway(I)V
    .registers 14

    const-wide/16 v1, 0x20

    .line 305
    const-string v0, "keyguardGoingAway"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 307
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 308
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_14
    if-ltz v4, :cond_4d

    .line 309
    iget-object v6, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 310
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isRemoving()Z

    move-result v7

    if-nez v7, :cond_4a

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 311
    iget v7, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, v7}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v7

    .line 312
    invoke-static {v7}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v8

    if-eqz v8, :cond_4a

    invoke-static {v7}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 313
    invoke-static {v7, v5}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 314
    invoke-virtual {v7, v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->writeEventLog(Ljava/lang/String;)V

    .line 315
    iget v7, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, v7}, Lcom/android/server/wm/KeyguardController;->scheduleGoingAwayTimeout(I)V

    .line 316
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 320
    :cond_4d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 321
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 325
    :cond_57
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v4, "kgGoAway"

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v11

    .line 328
    :try_start_66
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->convertTransitFlags(I)I

    move-result v8

    .line 329
    sget-boolean p1, Lcom/android/server/wm/KeyguardController;->ENABLE_NEW_KEYGUARD_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_7d

    .line 330
    invoke-virtual {v11}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    if-eqz p1, :cond_8e

    const/16 v0, 0x100

    .line 332
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Transition;->addFlag(I)V

    goto :goto_8e

    :catchall_7a
    move-exception v0

    move-object p1, v0

    goto :goto_cc

    .line 335
    :cond_7d
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    .line 339
    iget-object p1, v10, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActionChain;)Lcom/android/server/wm/Transition;

    .line 342
    :cond_8e
    :goto_8e
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 345
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 346
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 347
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->addStartingWindowsForVisibleActivities()V

    .line 348
    sget-boolean p1, Lcom/android/server/wm/KeyguardController;->REMOVE_DEFAULT_DISPLAY_USAGE:Z

    if-eqz p1, :cond_b7

    .line 349
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v5

    :goto_a9
    if-ltz p1, :cond_bc

    .line 350
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_a9

    .line 353
    :cond_b7
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_bc
    .catchall {:try_start_66 .. :try_end_bc} :catchall_7a

    .line 356
    :cond_bc
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 357
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    .line 358
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 356
    :goto_cc
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 357
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    .line 358
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 359
    throw p1
.end method

.method public final synthetic lambda$new$0()V
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 638
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->updateDeferTransitionForAod(Z)V

    .line 639
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$new$1()V
    .registers 6

    .line 680
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 681
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v2

    .line 682
    invoke-static {v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 683
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    goto :goto_35

    .line 685
    :cond_1a
    :try_start_1a
    invoke-static {v2, v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 686
    const-string v1, "goingAwayTimeout"

    invoke-virtual {v2, v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->writeEventLog(Ljava/lang/String;)V

    .line 687
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 688
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2904

    sub-long/2addr v1, v3

    .line 687
    invoke-interface {p0, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->startKeyguardExitAnimation(J)V

    .line 689
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    if-eqz v0, :cond_16

    .line 631
    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->onRemoved(Lcom/android/server/wm/DisplayContent;)V

    .line 632
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_16
    return-void
.end method

.method public final scheduleGoingAwayTimeout(I)V
    .registers 4

    if-eqz p1, :cond_3

    goto :goto_24

    .line 696
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 697
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mGoingAwayTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 698
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mGoingAwayTimeout:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2904

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_24
    :goto_24
    return-void

    .line 701
    :cond_25
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mGoingAwayTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setKeyguardShown(IZZ)V
    .registers 16

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 187
    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_1f

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setKeyguardShown called on non-existent display "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 191
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardAlwaysUnlocked()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setKeyguardShown ignoring always unlocked display "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v1

    .line 197
    invoke-static {v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p3, v2, :cond_48

    move v2, v3

    goto :goto_49

    :cond_48
    move v2, v4

    .line 198
    :goto_49
    invoke-static {v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v5

    if-eqz v5, :cond_53

    if-nez p3, :cond_53

    move v5, v3

    goto :goto_54

    :cond_53
    move v5, v4

    .line 199
    :goto_54
    invoke-static {v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v6

    if-eqz v6, :cond_5e

    if-eqz p2, :cond_5e

    move v6, v3

    goto :goto_5f

    :cond_5e
    move v6, v4

    .line 202
    :goto_5f
    invoke-static {v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v7

    if-ne p2, v7, :cond_6b

    if-eqz v6, :cond_6a

    if-nez v5, :cond_6a

    goto :goto_6b

    :cond_6a
    move v3, v4

    :cond_6b
    :goto_6b
    if-eqz v5, :cond_70

    .line 205
    invoke-virtual {p0, v4}, Lcom/android/server/wm/KeyguardController;->updateDeferTransitionForAod(Z)V

    :cond_70
    if-nez v3, :cond_78

    if-nez v2, :cond_78

    .line 208
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->setWakeTransitionReady()V

    return-void

    .line 212
    :cond_78
    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v7, "setKGShown"

    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v5

    .line 214
    sget-boolean v7, Lcom/android/server/wm/KeyguardController;->ENABLE_NEW_KEYGUARD_SHELL_TRANSITIONS:Z

    const v8, 0x8000

    const/16 v9, 0x800

    if-eqz v7, :cond_bf

    .line 215
    invoke-virtual {v5}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v10

    if-eqz v10, :cond_bf

    if-nez p1, :cond_bf

    if-nez p2, :cond_a1

    .line 217
    invoke-static {v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v11

    if-eqz v11, :cond_a1

    const/16 v11, 0x100

    .line 218
    invoke-virtual {v10, v11}, Lcom/android/server/wm/Transition;->addFlag(I)V

    goto :goto_ac

    :cond_a1
    if-eqz p2, :cond_ac

    .line 219
    invoke-static {v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v11

    if-nez v11, :cond_ac

    .line 220
    invoke-virtual {v10, v9}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 222
    :cond_ac
    :goto_ac
    iget-object v11, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v11, :cond_bf

    if-eqz p3, :cond_bf

    invoke-static {v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v11

    if-nez v11, :cond_bf

    .line 223
    invoke-virtual {v10, v8}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_bf
    if-nez p1, :cond_e4

    xor-int v10, p3, p2

    if-nez v10, :cond_cb

    if-eqz p3, :cond_e4

    if-eqz v2, :cond_e4

    if-eqz v3, :cond_e4

    .line 236
    :cond_cb
    invoke-static {v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v10

    if-nez v10, :cond_e4

    .line 239
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    iget v10, v10, Landroid/view/DisplayInfo;->state:I

    invoke-static {v10}, Landroid/view/Display;->isOnState(I)Z

    move-result v10

    if-eqz v10, :cond_e4

    .line 240
    iget-object v10, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v10, v4}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 243
    :cond_e4
    invoke-static {v1, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 244
    invoke-static {v1, p3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 245
    const-string v10, "setKeyguardShown"

    invoke-virtual {v1, v10}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->writeEventLog(Ljava/lang/String;)V

    if-nez v3, :cond_fb

    .line 247
    iget-object v10, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v10, :cond_142

    if-eqz v2, :cond_142

    :cond_fb
    if-eqz v3, :cond_105

    .line 250
    invoke-static {v1, v4}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    if-eqz p2, :cond_105

    .line 252
    invoke-static {v1, v4}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    :cond_105
    if-nez v6, :cond_11f

    if-eqz p2, :cond_115

    .line 256
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p2

    iget p2, p2, Landroid/view/DisplayInfo;->state:I

    invoke-static {p2}, Landroid/view/Display;->isOffState(I)Z

    move-result p2

    if-eqz p2, :cond_11f

    :cond_115
    iget-object p2, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz p2, :cond_13f

    if-eqz p3, :cond_13f

    :cond_11f
    if-nez v7, :cond_137

    const/4 p2, 0x0

    const/4 v1, 0x3

    if-eqz v3, :cond_128

    .line 262
    invoke-virtual {v0, v1, v9, p2, v5}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActionChain;)V

    .line 265
    :cond_128
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v3, :cond_137

    if-eqz v2, :cond_137

    if-eqz p3, :cond_137

    .line 266
    invoke-virtual {v0, v1, v8, p2, v5}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActionChain;)V

    .line 270
    :cond_137
    iget-object p2, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p2}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 271
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 273
    :cond_13f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->scheduleGoingAwayTimeout(I)V

    .line 278
    :cond_142
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 279
    iget-object p2, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 280
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p2

    invoke-virtual {p2, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(ZI)V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->setWakeTransitionReady()V

    if-eqz v2, :cond_15d

    .line 285
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 287
    :cond_15d
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    return-void
.end method

.method public final setWakeTransitionReady()V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_21

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 294
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 293
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    :cond_21
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 110
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    return-void
.end method

.method public topActivityOccludesKeyguard(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 169
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmTopOccludesActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public updateDeferTransitionForAod(Z)V
    .registers 5

    .line 644
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useFullReadyTracking()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    if-ne p1, v0, :cond_1d

    goto :goto_81

    .line 649
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mWaitingForWakeTransition:Z

    if-ne p1, v0, :cond_1d

    goto :goto_81

    .line 653
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_81

    :cond_2a
    if-eqz p1, :cond_61

    .line 657
    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->isAodShowing(I)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 658
    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mWaitingForWakeTransition:Z

    .line 659
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->deferTransitionReady()V

    .line 660
    new-instance p1, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string v0, "AOD hidden"

    .line 661
    invoke-direct {p1, v0, v2}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

    .line 662
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TransitionController;->waitFor(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 663
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mResetWaitTransition:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_61
    if-nez p1, :cond_81

    .line 666
    iput-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mWaitingForWakeTransition:Z

    .line 667
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    .line 668
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mResetWaitTransition:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 669
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

    .line 671
    invoke-virtual {p1}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    :cond_81
    :goto_81
    return-void
.end method

.method public final updateKeyguardSleepToken()V
    .registers 3

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 599
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 600
    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(Lcom/android/server/wm/DisplayContent;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final updateKeyguardSleepToken(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 605
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result p0

    const-string v0, "keyguard"

    if-eqz p0, :cond_e

    .line 606
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->addSleepToken(Ljava/lang/String;)V

    return-void

    .line 607
    :cond_e
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->hasSleepToken(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 608
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->removeSleepToken(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public updateVisibility()V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_38

    .line 459
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 460
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_35

    .line 461
    :cond_1f
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, v2}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v2

    .line 462
    invoke-virtual {v2, p0, v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->updateVisibility(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V

    .line 463
    invoke-static {v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmRequestDismissKeyguard(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 464
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->handleDismissKeyguard(I)V

    :cond_35
    :goto_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_38
    return-void
.end method

.method public final writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6

    const/4 v0, 0x0

    .line 920
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 921
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method
