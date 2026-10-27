.class public Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 0
    return-void
.end method

.method public getDurationHint()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 2

    .line 0
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 5

    .line 0
    return-void
.end method
