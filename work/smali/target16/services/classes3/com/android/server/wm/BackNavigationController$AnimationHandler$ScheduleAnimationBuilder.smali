.class public Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# instance fields
.field public final mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

.field public mCloseTarget:Lcom/android/server/wm/WindowContainer;

.field public mIsLaunchBehind:Z

.field public final mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

.field public mOpenTargets:[Lcom/android/server/wm/WindowContainer;

.field public mSnapshot:Landroid/window/TaskSnapshot;

.field public final synthetic this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;


# direct methods
.method public static synthetic $r8$lambda$5-TMGNN5bJg5OrHMzzAUjDRpoUs(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->lambda$build$0([Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareTransitionIfNeeded(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->prepareTransitionIfNeeded([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler;Landroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V
    .registers 4

    .line 1916
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1917
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    .line 1918
    iput-object p3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    return-void
.end method


# virtual methods
.method public final applyPreviewStrategy(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;[Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 1987
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isSupportWindowlessSurface()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmShowWindowlessSurface(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    if-nez v0, :cond_2b

    .line 1989
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_18
    if-ltz v0, :cond_22

    .line 1991
    aget-object v2, p2, v0

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 1995
    :cond_22
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mSnapshot:Landroid/window/TaskSnapshot;

    if-nez p0, :cond_28

    if-nez v1, :cond_2b

    .line 1996
    :cond_28
    invoke-virtual {p1, p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->createStartingSurface(Landroid/window/TaskSnapshot;)V

    :cond_2b
    return-void
.end method

.method public build()Ljava/lang/Runnable;
    .registers 5

    .line 2002
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    if-eqz v2, :cond_71

    array-length v0, v0

    if-nez v0, :cond_d

    goto :goto_71

    .line 2005
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isSupportWindowlessSurface()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_1d

    :cond_1b
    move v0, v2

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 2006
    :goto_1e
    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$smgetTopOpenActivities([Lcom/android/server/wm/WindowContainer;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v0, :cond_30

    if-nez v3, :cond_30

    .line 2009
    const-string p0, "CoreBackPreview"

    const-string v0, "No opening activity"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_30
    if-nez v0, :cond_44

    .line 2013
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmShowWindowlessSurface(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2014
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    aget-object v0, v0, v2

    invoke-static {v0, v3}, Lcom/android/server/wm/BackNavigationController;->getSnapshot(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 2017
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0, p0, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$mcomposeAnimations(Lcom/android/server/wm/BackNavigationController$AnimationHandler;Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_4d

    return-object v1

    .line 2020
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2021
    invoke-virtual {v0}, Lcom/android/server/wm/ActivitySnapshotController;->clearOnBackPressedActivities()V

    .line 2022
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->applyPreviewStrategy(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;[Lcom/android/server/wm/ActivityRecord;)V

    .line 2024
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->makeAnimationFinishedCallback()Landroid/window/IBackAnimationFinishedCallback;

    move-result-object v0

    .line 2025
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->getAnimationTargets()[Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    .line 2027
    new-instance v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V

    return-object v2

    :cond_71
    :goto_71
    return-object v1
.end method

.method public containTarget(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5

    .line 1935
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 1936
    array-length v0, v0

    sub-int/2addr v0, v1

    :goto_7
    if-ltz v0, :cond_24

    .line 1937
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    aget-object v2, v2, v0

    if-eq p1, v2, :cond_23

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    aget-object v2, v2, v0

    .line 1938
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_23
    :goto_23
    return v1

    .line 1943
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    if-eq p1, v0, :cond_39

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_39

    :cond_37
    const/4 p0, 0x0

    return p0

    :cond_39
    :goto_39
    return v1
.end method

.method public final synthetic lambda$build$0([Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V
    .registers 5

    .line 2029
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->hasTargetDetached()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$smvalidateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_35

    .line 2033
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    invoke-virtual {v0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    move-result-object v0

    .line 2034
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 2035
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    .line 2033
    :goto_31
    invoke-interface {v0, p1, p0, p2}, Landroid/window/IBackAnimationRunner;->onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/os/IBinder;Landroid/window/IBackAnimationFinishedCallback;)V

    return-void

    .line 2030
    :cond_35
    :goto_35
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    const-string p2, "cancelAnimation"

    invoke-static {p1, p2}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->-$$Nest$mcancelBackNavigating(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Ljava/lang/String;)V

    .line 2031
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    invoke-virtual {p0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    move-result-object p0

    invoke-interface {p0}, Landroid/window/IBackAnimationRunner;->onAnimationCancelled()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception p0

    .line 2039
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final makeAnimationFinishedCallback()Landroid/window/IBackAnimationFinishedCallback;
    .registers 2

    .line 2045
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    return-object v0
.end method

.method public final prepareTransitionIfNeeded([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .registers 11

    .line 1948
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 1951
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1952
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_12
    if-ltz v2, :cond_27

    .line 1953
    aget-object v4, p1, v2

    .line 1954
    iget-boolean v5, v4, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v5, :cond_24

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_24

    .line 1957
    :cond_21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    :goto_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    :cond_27
    const/4 v2, 0x0

    .line 1959
    aget-object v4, p1, v2

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/16 v5, 0xd

    .line 1960
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v5

    .line 1962
    invoke-virtual {v4, p2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1963
    invoke-virtual {v5, p2, v3}, Lcom/android/server/wm/Transition;->setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1964
    array-length p2, p3

    sub-int/2addr p2, v3

    :goto_3a
    if-ltz p2, :cond_49

    .line 1965
    aget-object v6, p3, p2

    invoke-virtual {v4, v6}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1966
    aget-object v6, p3, p2

    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/Transition;->setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_3a

    .line 1968
    :cond_49
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_52

    .line 1969
    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$smsetLaunchBehind([Lcom/android/server/wm/ActivityRecord;)V

    .line 1971
    :cond_52
    invoke-virtual {v4, v5, v1, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 1974
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5, p0, v3}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-object v5
.end method

.method public varargs setComposeTarget(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
    .registers 3

    .line 1923
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 1924
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public setIsLaunchBehind(Z)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
    .registers 2

    .line 1929
    iput-boolean p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    return-object p0
.end method
