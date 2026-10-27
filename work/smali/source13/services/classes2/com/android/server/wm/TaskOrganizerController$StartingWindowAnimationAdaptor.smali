.class Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartingWindowAnimationAdaptor"
.end annotation


# instance fields
.field mAnimationLeash:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StartingWindowAnimationAdaptor mCapturedLeash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 476
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 477
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 481
    return-void
.end method

.method public getDurationHint()J
    .registers 3

    .line 464
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 3

    .line 469
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    if-ne v0, p1, :cond_7

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    .line 460
    :cond_7
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 5
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "type"    # I
    .param p4, "finishCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 452
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    .line 453
    return-void
.end method
