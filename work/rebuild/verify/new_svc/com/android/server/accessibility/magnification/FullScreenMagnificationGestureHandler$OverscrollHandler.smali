.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"


# instance fields
.field public mEdgeCooldown:Z

.field mOverscrollState:I

.field public final mPivotEdge:Landroid/graphics/PointF;

.field public final mReachedEdgeCoord:Landroid/graphics/PointF;

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;


# direct methods
.method public static bridge synthetic -$$Nest$mclearEdgeState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monScrollStateChanged(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->onScrollStateChanged(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetScaleAndCenterToEdgeIfNeeded(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->setScaleAndCenterToEdgeIfNeeded()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V
    .registers 4

    .line 1964
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1965
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 1966
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    .line 1967
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    .line 1968
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    return-void
.end method


# virtual methods
.method public final calculateOverscrollScale(Landroid/view/MotionEvent;)F
    .registers 6

    .line 1992
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 1993
    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_13

    cmpg-float v2, v0, v3

    if-ltz v2, :cond_1a

    :cond_13
    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    cmpl-float v1, v0, v3

    if-lez v1, :cond_20

    .line 1995
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 1998
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    .line 1999
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 2000
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2001
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v1, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v2, v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationBounds(ILandroid/graphics/Rect;)V

    .line 2002
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    .line 2003
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v2

    .line 2004
    iget-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    if-eqz v2, :cond_61

    cmpl-float p1, p1, v0

    if-lez p1, :cond_61

    const/4 p1, 0x0

    .line 2005
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    :cond_61
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 2007
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->getSensitivityScale()F

    move-result v1

    mul-float/2addr v0, v1

    .line 2008
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 2012
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    move-result p0

    .line 2009
    invoke-static {v0, p1, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public final clearEdgeState()V
    .registers 4

    const/4 v0, 0x0

    .line 2119
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    .line 2120
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2121
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2122
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    return-void
.end method

.method public final getSensitivityScale()F
    .registers 3

    .line 2018
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 2019
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    move-result p0

    const v0, 0x3fd9999a    # 1.7f

    cmpg-float v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_14

    goto :goto_3a

    :cond_14
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1b

    goto :goto_3a

    :cond_1b
    const v0, 0x400ccccd    # 2.2f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_26

    const v1, 0x3f733333    # 0.95f

    goto :goto_3a

    :cond_26
    const/high16 v0, 0x40200000    # 2.5f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_30

    const v1, 0x3f8ccccd    # 1.1f

    goto :goto_3a

    :cond_30
    const v0, 0x402ccccd    # 2.7f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3a

    const v1, 0x3fa66666    # 1.3f

    :cond_3a
    :goto_3a
    mul-float/2addr p0, v1

    return p0
.end method

.method public onHorizontalOverscroll(Landroid/view/MotionEvent;)V
    .registers 4

    .line 2097
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->warpEffectReset(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2099
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget p1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 2100
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    .line 2101
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    :cond_1a
    return-void
.end method

.method public onNoOverscroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 6

    .line 2088
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, p2, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    return-void
.end method

.method public final onScrollStateChanged(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 5

    .line 2066
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isAtEdge(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2067
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->vibrateIfNeeded(Landroid/view/MotionEvent;)V

    .line 2068
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->setPivotEdge(Landroid/view/MotionEvent;)V

    .line 2070
    :cond_12
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    if-eqz v0, :cond_31

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2d

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2d

    const/4 p1, 0x3

    if-eq v0, p1, :cond_29

    .line 2082
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string p1, "Invalid overscroll state"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2075
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->onVerticalOverscroll()V

    return-void

    .line 2079
    :cond_2d
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->onHorizontalOverscroll(Landroid/view/MotionEvent;)V

    return-void

    .line 2072
    :cond_31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->onNoOverscroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onVerticalOverscroll()V
    .registers 2

    .line 2092
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    .line 2093
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    return-void
.end method

.method public final setPivotEdge(Landroid/view/MotionEvent;)V
    .registers 7

    .line 2049
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$mpointerValid(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 2050
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2051
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v1, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v2, v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationBounds(ILandroid/graphics/Rect;)V

    .line 2052
    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    .line 2053
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v4, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v3, v3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 2054
    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v3

    .line 2053
    invoke-virtual {v1, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_45

    :cond_30
    const/4 v3, 0x2

    if-ne v1, v3, :cond_45

    .line 2056
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v4, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v3, v3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 2058
    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v3

    .line 2056
    invoke-virtual {v1, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2060
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 2061
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    :cond_54
    return-void
.end method

.method public final setScaleAndCenterToEdgeIfNeeded()V
    .registers 9

    .line 2106
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 2108
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v2, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 2110
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    move-result v3

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2108
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverscrollHandler {mOverscrollState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mPivotEdge.x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mPivotEdge.y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mReachedEdgeCoord.x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mReachedEdgeCoord.y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mReachedEdgeCoord:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mEdgeCooldown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final vibrateIfNeeded(Landroid/view/MotionEvent;)V
    .registers 2

    .line 2040
    iget p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mOverscrollState:I

    if-eqz p1, :cond_5

    goto :goto_22

    .line 2043
    :cond_5
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$misAtLeftEdge(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$misAtRightEdge(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)Z

    move-result p1

    if-eqz p1, :cond_22

    :cond_15
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mEdgeCooldown:Z

    if-nez p1, :cond_22

    .line 2044
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$fgetmFullScreenMagnificationVibrationHelper(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->vibrateIfSettingEnabled()V

    :cond_22
    :goto_22
    return-void
.end method

.method public warpEffectReset(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 1972
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->calculateOverscrollScale(Landroid/view/MotionEvent;)F

    move-result v2

    const/4 p1, 0x0

    cmpg-float p1, v2, p1

    const/4 v8, 0x0

    if-gez p1, :cond_b

    return v8

    .line 1974
    :cond_b
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->mPivotEdge:Landroid/graphics/PointF;

    iget v3, p0, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZZI)Z

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v2, p0

    if-nez p0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    return v8
.end method
