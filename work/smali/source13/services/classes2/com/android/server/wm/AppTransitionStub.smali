.class public interface abstract Lcom/android/server/wm/AppTransitionStub;
.super Ljava/lang/Object;
.source "AppTransitionStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/AppTransitionStub;
    .registers 1

    .line 19
    const-class v0, Lcom/android/server/wm/AppTransitionStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppTransitionStub;

    return-object v0
.end method


# virtual methods
.method public abstract allowCustomTaskAnimation(Ljava/lang/String;)Z
.end method

.method public abstract calculateMiuiActivityThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public abstract calculateScaleUpDownThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public createMiuiClipAnimation(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;ZZZLandroid/graphics/Rect;Landroid/graphics/Rect;FFIF)Landroid/view/animation/Animation;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "enter"    # Z
    .param p4, "isClipEnter"    # Z
    .param p5, "isClipWithScale"    # Z
    .param p6, "clipFromRect"    # Landroid/graphics/Rect;
    .param p7, "clipToRect"    # Landroid/graphics/Rect;
    .param p8, "fromCornerRadius"    # F
    .param p9, "toCornerRadius"    # F
    .param p10, "interpolatorId"    # I
    .param p11, "clipDuration"    # F

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public createMiuiRoundAnimation(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;ZZFFIF)Landroid/view/animation/Animation;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "enter"    # Z
    .param p4, "isRoundEnter"    # Z
    .param p5, "fromCornerRadius"    # F
    .param p6, "toCornerRadius"    # F
    .param p7, "interpolatorId"    # I
    .param p8, "roundDuration"    # F

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public deferTransitionForMultiWindow(Landroid/util/ArraySet;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 110
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public dimAnimationDimmerAboveIfNeeded(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public dimAnimationDimmerBelowIfNeeded(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract dimSplitDimmerAboveIfNeeded(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
.end method

.method public abstract isMiuiAppTransitionType(I)Z
.end method

.method public abstract isNeedgetDefaultNextAppTransitionStartRect(I)Z
.end method

.method public isUseFloatingAnimation(Landroid/view/animation/Animation;)Z
    .registers 3
    .param p1, "a"    # Landroid/view/animation/Animation;

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public isUseMiuiClipAnimation(Landroid/view/animation/Animation;)Z
    .registers 3
    .param p1, "a"    # Landroid/view/animation/Animation;

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public abstract loadFullSplitAnimation(IZLandroid/graphics/Rect;ILcom/android/server/wm/ActivityRecord;Z)Landroid/view/animation/Animation;
.end method

.method public abstract loadKeyguardUnOccludeAnimation(Landroid/content/Context;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
.end method

.method public abstract loadMiuiAnimation(IZLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/os/Handler;ZLandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)Landroid/view/animation/Animation;
.end method

.method public abstract loadMiuiDefaultAnimationNotCheck(Landroid/view/WindowManager$LayoutParams;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowManagerService;)Landroid/view/animation/Animation;
.end method

.method public abstract loadSplitAnimation(IZLandroid/graphics/Rect;ILcom/android/server/wm/ActivityRecord;)Landroid/view/animation/Animation;
.end method

.method public abstract loadSplitFullAnimation(IZLandroid/graphics/Rect;ILcom/android/server/wm/ActivityRecord;Z)Landroid/view/animation/Animation;
.end method

.method public setFloatingCornerRadius(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Z
    .registers 5
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "leash"    # Landroid/view/SurfaceControl;

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public setFreeformSurfaceRotation(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;JLcom/android/server/wm/MiuiFreeFormTransformation;)V
    .registers 7
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "leash"    # Landroid/view/SurfaceControl;
    .param p4, "currentPlayTime"    # J
    .param p6, "miuiFreeFormTransformation"    # Lcom/android/server/wm/MiuiFreeFormTransformation;

    .line 131
    return-void
.end method

.method public setMiuiClipCornerRadius(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Z
    .registers 5
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "leash"    # Landroid/view/SurfaceControl;

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public setMiuiRoundCornerRadius(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Z
    .registers 5
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "leash"    # Landroid/view/SurfaceControl;

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public abstract shouldActivityTransitionRoundCorner(IZ)Z
.end method

.method public stepAnimationDimmerIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 4
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public abstract stepSplitDimmerIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)Z
.end method

.method public stopAnimationDimmer(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 69
    return-void
.end method

.method public abstract stopSplitDimmer(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)V
.end method

.method public switchTransitType(Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p3, "service"    # Lcom/android/server/wm/WindowManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Lcom/android/server/wm/WindowManagerService;",
            ")V"
        }
    .end annotation

    .line 73
    .local p1, "openingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "closingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    return-void
.end method

.method public updateAnimationIfNeed(Landroid/view/animation/Animation;Landroid/view/WindowManager$LayoutParams;IZLandroid/graphics/Rect;ZLcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowManagerService;)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "transit"    # I
    .param p4, "enter"    # Z
    .param p5, "frame"    # Landroid/graphics/Rect;
    .param p6, "freeform"    # Z
    .param p7, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p8, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 82
    return-object p1
.end method

.method public updateAnimationZBoostIfNeed(ZIZLcom/android/server/wm/WindowContainer;)Z
    .registers 5
    .param p1, "needsZBoost"    # Z
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 94
    return p1
.end method

.method public updateLpIfNeeded(Lcom/android/server/wm/WindowContainer;ZI)Landroid/view/WindowManager$LayoutParams;
    .registers 5
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "enter"    # Z
    .param p3, "transit"    # I

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract useDefaultAnimationAttr(Landroid/view/WindowManager$LayoutParams;IIZZ)Z
.end method
