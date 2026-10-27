.class public abstract Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# instance fields
.field public final mTargetDisplayId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 266
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p1, p0, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->mTargetDisplayId:I

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
.end method

.method public onAppTransitionPendingLocked()V
    .registers 1

    .line 0
    return-void
.end method

.method public onAppTransitionStartingLocked(JJ)I
    .registers 5

    .line 0
    const/4 p0, 0x0

    return p0
.end method
