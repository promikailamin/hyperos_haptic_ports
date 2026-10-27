.class public interface abstract Lcom/android/server/wm/DragStateStub;
.super Ljava/lang/Object;
.source "DragStateStub.java"


# direct methods
.method public static newInstance()Lcom/android/server/wm/DragStateStub;
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/wm/DragStateStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DragStateStub;

    return-object v0
.end method


# virtual methods
.method public abstract createDragEndedAnimationLocked(Lcom/android/server/wm/DragState;Landroid/graphics/Point;)Landroid/animation/Animator;
.end method

.method public abstract isDropSuccessAnimEnabled()Z
.end method

.method public needFinishAnimator()Z
    .registers 2

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public abstract setFreeformDragBound(Landroid/graphics/Rect;)V
.end method

.method public abstract setIsDropSuccessAnimEnabled(Z)V
.end method

.method public abstract setPendingDragEndedLoc(IIII)V
.end method
