.class Lcom/android/server/wm/DisplayPolicy$2;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAppTransitionCancelled:Ljava/lang/Runnable;

.field private mAppTransitionFinished:Ljava/lang/Runnable;

.field private mAppTransitionPending:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;

.field final synthetic val$displayId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 788
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$2;->val$displayId:I

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    .line 790
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy$2;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionPending:Ljava/lang/Runnable;

    .line 797
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy$2;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionCancelled:Ljava/lang/Runnable;

    .line 804
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayPolicy$2;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionFinished:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method synthetic lambda$$0$com-android-server-wm-DisplayPolicy$2(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 791
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 792
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_b

    .line 793
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionPending(I)V

    .line 795
    :cond_b
    return-void
.end method

.method synthetic lambda$$1$com-android-server-wm-DisplayPolicy$2(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 798
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 799
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_b

    .line 800
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionCancelled(I)V

    .line 802
    :cond_b
    return-void
.end method

.method synthetic lambda$$2$com-android-server-wm-DisplayPolicy$2(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 805
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 806
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_b

    .line 807
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionFinished(I)V

    .line 809
    :cond_b
    return-void
.end method

.method synthetic lambda$onAppTransitionStartingLocked$3$com-android-server-wm-DisplayPolicy$2(JJ)V
    .registers 12
    .param p1, "statusBarAnimationStartTime"    # J
    .param p3, "statusBarAnimationDuration"    # J

    .line 821
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 822
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_18

    .line 823
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    move-object v1, v0

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionStarting(IJJ)V

    .line 826
    :cond_18
    return-void
.end method

.method public onAppTransitionCancelledLocked(Z)V
    .registers 4
    .param p1, "keyguardGoingAway"    # Z

    .line 832
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionCancelled:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 837
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 838
    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .registers 3

    .line 813
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionPending:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 814
    return-void
.end method

.method public onAppTransitionStartingLocked(ZZJJJ)I
    .registers 18
    .param p1, "keyguardGoingAway"    # Z
    .param p2, "keyguardOccluding"    # Z
    .param p3, "duration"    # J
    .param p5, "statusBarAnimationStartTime"    # J
    .param p7, "statusBarAnimationDuration"    # J

    .line 820
    move-object v6, p0

    iget-object v0, v6, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p5

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy$2;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 827
    const/4 v0, 0x0

    return v0
.end method
