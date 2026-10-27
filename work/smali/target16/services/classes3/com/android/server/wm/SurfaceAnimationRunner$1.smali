.class public Lcom/android/server/wm/SurfaceAnimationRunner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SurfaceAnimationRunner.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final synthetic val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 3

    .line 227
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 241
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->-$$Nest$fgetmLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 242
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v1, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->-$$Nest$fgetmCancelLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_34

    .line 244
    :try_start_19
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->-$$Nest$fgetmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 247
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->-$$Nest$fgetmAnimationThreadHandler(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_36

    .line 249
    :cond_31
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_2f

    .line 250
    :try_start_32
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception p0

    goto :goto_38

    .line 249
    :goto_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_2f

    :try_start_37
    throw p0

    .line 250
    :goto_38
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_34

    throw p0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 230
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->-$$Nest$fgetmCancelLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 231
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->-$$Nest$fgetmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->-$$Nest$fgetmFrameTransaction(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_23

    .line 236
    :cond_21
    :goto_21
    monitor-exit p1

    return-void

    :goto_23
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_1f

    throw p0
.end method
