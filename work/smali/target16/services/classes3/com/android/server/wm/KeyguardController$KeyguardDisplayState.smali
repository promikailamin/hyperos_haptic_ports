.class public Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# instance fields
.field public mAodShowing:Z

.field public mDismissalRequested:Z

.field public mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mDisplayId:I

.field public mKeyguardGoingAway:Z

.field public mKeyguardShowing:Z

.field public mOccluded:Z

.field public mRequestDismissKeyguard:Z

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

.field public mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static synthetic $r8$lambda$UYxm3jSn5iwGFQ04QlWkFzJcydA(Lcom/android/server/wm/Task;)Z
    .registers 2

    if-eqz p0, :cond_10

    .line 856
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDismissingKeyguardActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOccluded(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestDismissKeyguard(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopOccludesActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 3

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 728
    iput p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILcom/android/server/wm/KeyguardController$KeyguardDisplayState;)V
    .registers 4

    .line 733
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    if-eqz p3, :cond_11

    .line 735
    iget-boolean p1, p3, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 736
    iget-boolean p1, p3, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 737
    iget-boolean p1, p3, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    :cond_11
    return-void
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 882
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 883
    iget v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000002L

    .line 884
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000003L

    .line 885
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000004L

    .line 886
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000005L

    .line 887
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 888
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const-string p2, " KeyguardShowing="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 863
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " AodShowing="

    .line 864
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 865
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " KeyguardGoingAway="

    .line 866
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 867
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " DismissalRequested="

    .line 868
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    .line 869
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  Occluded="

    .line 870
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 871
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " DismissingKeyguardActivity="

    .line 872
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 873
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " TurnScreenOnActivity="

    .line 874
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 875
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " at display="

    .line 876
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 877
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getRootTaskForControllingOccluding(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;
    .registers 2

    .line 855
    new-instance p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public onRemoved(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    const/4 v0, 0x0

    .line 742
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 743
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 744
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 745
    const-string p0, "keyguard"

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->hasSleepToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 746
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->removeSleepToken(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public updateVisibility(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V
    .registers 12

    .line 766
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 767
    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 769
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    .line 771
    iput-boolean v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 772
    iput-boolean v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    const/4 v4, 0x0

    .line 774
    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 775
    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 776
    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 778
    invoke-virtual {p0, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->getRootTaskForControllingOccluding(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 779
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    :cond_1c
    const/4 v6, 0x1

    if-eqz v4, :cond_8e

    .line 781
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 782
    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 784
    :cond_27
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->currentLaunchCanTurnScreenOn()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 785
    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 788
    :cond_35
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->-$$Nest$fgetmService(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v8

    .line 789
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v8

    .line 788
    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v7

    .line 790
    iget-boolean v8, v4, Lcom/android/server/wm/ActivityRecord;->mDismissKeyguardIfInsecure:Z

    if-eqz v8, :cond_52

    iget-boolean v8, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    if-eqz v8, :cond_52

    if-nez v7, :cond_52

    .line 791
    iput-boolean v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    goto :goto_5a

    .line 792
    :cond_52
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 793
    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 795
    :cond_5a
    :goto_5a
    iput-boolean v3, v4, Lcom/android/server/wm/ActivityRecord;->mDismissKeyguardIfInsecure:Z

    .line 799
    iget-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_75

    iget-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_73

    .line 801
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v5, v7, :cond_73

    .line 802
    invoke-virtual {p1, v6, v3}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v5

    if-eqz v5, :cond_73

    goto :goto_75

    :cond_73
    move v5, v3

    goto :goto_76

    :cond_75
    :goto_75
    move v5, v6

    :goto_76
    iput-boolean v5, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 805
    iget v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-eqz v7, :cond_8e

    .line 806
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->canShowWithInsecureKeyguard()Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 807
    invoke-virtual {p1}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v7

    if-eqz v7, :cond_8a

    move v7, v6

    goto :goto_8b

    :cond_8a
    move v7, v3

    :goto_8b
    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 811
    :cond_8e
    iget-object v5, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, v5, :cond_9e

    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-nez v2, :cond_9e

    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    if-nez v2, :cond_9e

    if-eqz v5, :cond_9e

    move v2, v6

    goto :goto_9f

    :cond_9e
    move v2, v3

    :goto_9f
    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 814
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eqz v2, :cond_c3

    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    if-eqz v2, :cond_c3

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v2

    if-nez v2, :cond_c3

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v2

    if-nez v2, :cond_c3

    iget-object v2, p2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 815
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_c3

    .line 818
    iget v2, p2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 821
    :cond_c3
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_f1

    iget-object v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 822
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->isInteractive(I)Z

    move-result v2

    if-nez v2, :cond_f1

    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    if-nez v2, :cond_df

    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eqz v2, :cond_f1

    .line 824
    :cond_df
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->-$$Nest$fgetmTaskSupervisor(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskSupervisor;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    const-string v7, "handleTurnScreenOn"

    invoke-virtual {v2, v5, v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(ILjava/lang/String;)V

    .line 825
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    :cond_f1
    if-nez v1, :cond_f9

    .line 828
    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    if-eqz v1, :cond_f9

    move v1, v6

    goto :goto_fa

    :cond_f9
    move v1, v3

    .line 829
    :goto_fa
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eq v0, v2, :cond_ff

    move v3, v6

    :cond_ff
    if-eqz v1, :cond_10e

    .line 832
    const-string v0, "dismissIfInsecure"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->writeEventLog(Ljava/lang/String;)V

    .line 833
    invoke-static {p1, p2}, Lcom/android/server/wm/KeyguardController;->-$$Nest$mhandleDismissInsecureKeyguard(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V

    .line 834
    iget v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    invoke-static {p1, v0}, Lcom/android/server/wm/KeyguardController;->-$$Nest$mscheduleGoingAwayTimeout(Lcom/android/server/wm/KeyguardController;I)V

    :cond_10e
    if-eqz v3, :cond_115

    .line 837
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/KeyguardController;->-$$Nest$mhandleOccludedChanged(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)V

    :cond_115
    if-eqz v4, :cond_124

    if-nez v1, :cond_11f

    if-eqz v3, :cond_124

    .line 842
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eqz p0, :cond_124

    .line 843
    :cond_11f
    iget-object p0, p2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_124
    return-void
.end method

.method public writeEventLog(Ljava/lang/String;)V
    .registers 8

    .line 751
    iget v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 753
    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 754
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 755
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 756
    iget-boolean v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    move-object v5, p1

    .line 751
    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIIIILjava/lang/String;)V

    return-void
.end method
