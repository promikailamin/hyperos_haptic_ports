.class public interface abstract Lcom/android/server/wm/ScreenRotationAnimationStub;
.super Ljava/lang/Object;
.source "ScreenRotationAnimationStub.java"


# static fields
.field public static final MIUI_SCREEN_ROTATION_ANIMATION_180:I = 0x4

.field public static final MIUI_SCREEN_ROTATION_ANIMATION_90:I = 0x2

.field public static final MIUI_SCREEN_ROTATION_ANIMATION_DEFAULT:I = 0x0

.field public static final MIUI_SCREEN_ROTATION_ANIMATION_OLD:I = 0x3

.field public static final MIUI_SCREEN_ROTATION_ANIMATION_PAD:I = 0x1

.field public static final MIUI_SCREEN_ROTATION_ANIMATION_PHONE:I = 0x2


# direct methods
.method public static get()Lcom/android/server/wm/ScreenRotationAnimationStub;
    .registers 1

    .line 18
    const-class v0, Lcom/android/server/wm/ScreenRotationAnimationStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ScreenRotationAnimationStub;

    return-object v0
.end method


# virtual methods
.method public abstract createScreenRotationSpec(Landroid/view/animation/Animation;II)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
.end method

.method public abstract getDisplayRoundCornerRadius()I
.end method

.method public abstract getScreenRotationAnimationMode()I
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public isEmbeddingAndNeedOpaque(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isOpaqueHasVideo(Lcom/android/server/wm/DisplayContent;)Z
.end method

.method public abstract kill(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract loadEnterAnimation(IIIILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)Landroid/view/animation/Animation;
.end method

.method public abstract loadExitAnimation(IIII)Landroid/view/animation/Animation;
.end method

.method public abstract loadRotation180Enter()Landroid/view/animation/Animation;
.end method

.method public abstract loadRotation180Exit()Landroid/view/animation/Animation;
.end method
