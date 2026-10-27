.class public final Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public static synthetic $r8$lambda$Ipp8VL7RVf6_VLMzK05AtllNhzs(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->lambda$onKeyUp$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$JVHy5f_3UKtAAlxz-tLRtoanuO8(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->lambda$onMultiPress$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JoYv1zuZQq9ZUPbSv7Frj_uHDhQ(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->lambda$onLongPress$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$nSwvshhJVDdt9yjlaj0c6KqKPsA(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->lambda$onPress$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 2790
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 p1, 0x108

    .line 2791
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getMaxMultiPressCount()I
    .registers 1

    .line 2801
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mgetMaxMultiPressStemPrimaryCount(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onKeyUp$3()V
    .registers 4

    .line 2907
    const-string v0, "StemPrimaryKeyRule: executing deferred onKeyUp"

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :try_start_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 2918
    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fputmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityTaskManager$RootTaskInfo;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    .line 2920
    const-string v2, "StemPrimaryKeyRule: onKeyUp: error while getting focused task info."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2928
    :goto_19
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void
.end method

.method public final synthetic lambda$onLongPress$1(J)V
    .registers 3

    .line 2843
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V

    return-void
.end method

.method public final synthetic lambda$onMultiPress$2(I)V
    .registers 2

    .line 2862
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void
.end method

.method public final synthetic lambda$onPress$0()V
    .registers 2

    .line 2831
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void
.end method

.method public onKeyGesture(Lcom/android/server/policy/SingleKeyGestureEvent;)V
    .registers 7

    .line 2806
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getStartTime()J

    move-result-wide v0

    .line 2807
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getPressCount()I

    move-result v2

    .line 2808
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_10

    goto :goto_18

    .line 2811
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getType()I

    move-result v3

    if-eqz v3, :cond_1d

    if-eq v3, v4, :cond_19

    :goto_18
    return-void

    .line 2820
    :cond_19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->onLongPress(J)V

    return-void

    .line 2813
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getPressCount()I

    move-result p1

    if-le p1, v4, :cond_27

    .line 2814
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->onMultiPress(JI)V

    return-void

    .line 2816
    :cond_27
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->onPress(J)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    .line 2896
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2897
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getMostRecentTaskFromBackground()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fputmBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 2899
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fputmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityTaskManager$RootTaskInfo;)V

    .line 2901
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->shouldHandleStemPrimaryEarlyShortPress()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 2903
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;

    move-result-object p1

    .line 2905
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;)V

    const/16 p0, 0x108

    .line 2903
    invoke-virtual {p1, p0, v0, v1, p2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(IJLjava/lang/Runnable;)V

    :cond_2e
    return-void
.end method

.method public final onLongPress(J)V
    .registers 5

    .line 2835
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmLongPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 2837
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V

    return-void

    .line 2840
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;J)V

    const/16 p0, 0x108

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(IJLjava/lang/Runnable;)V

    return-void
.end method

.method public final onMultiPress(JI)V
    .registers 7

    const/4 v0, 0x3

    const/16 v1, 0x108

    if-ne p3, v0, :cond_20

    .line 2850
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmTriplePressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    .line 2856
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/policy/DeferredKeyActionExecutor;->cancelQueuedAction(I)V

    .line 2857
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->undoEarlySinglePress()V

    .line 2858
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void

    .line 2861
    :cond_20
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;

    move-result-object v0

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;I)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(IJLjava/lang/Runnable;)V

    return-void
.end method

.method public final onPress(J)V
    .registers 5

    .line 2826
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->shouldHandleStemPrimaryEarlyShortPress()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2830
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;)V

    const/16 p0, 0x108

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(IJLjava/lang/Runnable;)V

    return-void
.end method

.method public final shouldHandleStemPrimaryEarlyShortPress()Z
    .registers 2

    .line 2936
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmShortPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public supportLongPress()Z
    .registers 1

    .line 2796
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhasLongPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p0

    return p0
.end method

.method public final undoEarlySinglePress()V
    .registers 4

    .line 2871
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->shouldHandleStemPrimaryEarlyShortPress()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 2874
    :try_start_e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception v0

    .line 2877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    iget p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " from recents"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WindowManager"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    return-void
.end method
