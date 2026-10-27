.class public Lcom/android/server/wm/AppWindowAnimatorHelper;
.super Ljava/lang/Object;
.source "AppWindowAnimatorHelper.java"


# static fields
.field static final NEXT_TRANSIT_TYPE_BACK_WITH_SCALED_THUMB:I = 0x6a

.field static final NEXT_TRANSIT_TYPE_LAUNCH_BACK_ROUNDED_VIEW:I = 0x68

.field static final NEXT_TRANSIT_TYPE_LAUNCH_CLIP_WINDOW:I = 0x6b

.field static final NEXT_TRANSIT_TYPE_LAUNCH_FROM_ROUNDED_VIEW:I = 0x67

.field static final NEXT_TRANSIT_TYPE_LAUNCH_ROUND_WINDOW:I = 0x6c

.field static final NEXT_TRANSIT_TYPE_LAUNCH_WITH_SCALED_THUMB:I = 0x69


# instance fields
.field private final mAppRect:Landroid/graphics/Rect;

.field private mHasNotifyMiuiThumbnailAnimEnd:Z

.field private mHasNotifyMiuiThumbnailAnimStart:Z

.field private mIsMiuiActivityScaledThumbnail:Z

.field private final mMiuiThumbnailRect:Landroid/graphics/Rect;

.field private mThumbnailLeash:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "appRect"    # Landroid/graphics/Rect;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    .line 21
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 29
    return-void
.end method


# virtual methods
.method destoryMiuiActivityThumbnailLeash(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnailLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 88
    :cond_b
    monitor-exit p0

    .line 89
    return-void

    .line 88
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getAppRect()Landroid/graphics/Rect;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method getLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnailLeash:Landroid/view/SurfaceControl;

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isMiuiActivityScaledThumbnail()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mIsMiuiActivityScaledThumbnail:Z

    return v0
.end method

.method public setIsMiuiActivityScaledThumbnail(Z)V
    .registers 2
    .param p1, "isMiuiActivityScaledThumbnail"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mIsMiuiActivityScaledThumbnail:Z

    .line 43
    return-void
.end method

.method setLeash(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "leash"    # Landroid/view/SurfaceControl;

    .line 50
    monitor-enter p0

    .line 51
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 52
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setMiuiThumbnailRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "thumbnailRect"    # Landroid/graphics/Rect;

    .line 32
    monitor-enter p0

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 34
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method stepMiuiActivityThumbnailAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;F)V
    .registers 13
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "appTransformation"    # Landroid/view/animation/Transformation;
    .param p3, "radius"    # F

    .line 62
    monitor-enter p0

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    .local v0, "alpha":F
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 64
    move v6, p3

    move-object v7, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/server/wm/AppTransitionStub;->calculateMiuiActivityThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 66
    .end local v0    # "alpha":F
    monitor-exit p0

    .line 67
    return-void

    .line 66
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method stepScaleUpDownAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;Z)V
    .registers 13
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "appTransformation"    # Landroid/view/animation/Transformation;
    .param p3, "isScaledThumbnail"    # Z

    .line 70
    monitor-enter p0

    .line 71
    if-eqz p3, :cond_18

    .line 72
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    .line 73
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 72
    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/AppTransitionStub;->calculateScaleUpDownThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_2f

    .line 75
    :cond_18
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    .line 76
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 75
    move-object v7, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/server/wm/AppTransitionStub;->calculateMiuiActivityThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 79
    :goto_2f
    monitor-exit p0

    .line 80
    return-void

    .line 79
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method
