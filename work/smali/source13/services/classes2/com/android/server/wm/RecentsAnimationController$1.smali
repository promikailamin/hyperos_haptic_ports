.class Lcom/android/server/wm/RecentsAnimationController$1;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "RecentsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 183
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method

.method private continueDeferredCancel()V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppTransition;->unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 200
    return-void

    .line 203
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCancelOnNextTransitionStart(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fputmCancelOnNextTransitionStart(Lcom/android/server/wm/RecentsAnimationController;Z)V

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCancelDeferredWithScreenshot(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationWithScreenshot(Z)V

    .line 207
    :cond_2b
    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(Z)V
    .registers 2
    .param p1, "keyguardGoingAway"    # Z

    .line 194
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController$1;->continueDeferredCancel()V

    .line 195
    return-void
.end method

.method public onAppTransitionStartingLocked(ZZJJJ)I
    .registers 10
    .param p1, "keyguardGoingAway"    # Z
    .param p2, "keyguardOccluding"    # Z
    .param p3, "duration"    # J
    .param p5, "statusBarAnimationStartTime"    # J
    .param p7, "statusBarAnimationDuration"    # J

    .line 188
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController$1;->continueDeferredCancel()V

    .line 189
    const/4 v0, 0x0

    return v0
.end method
