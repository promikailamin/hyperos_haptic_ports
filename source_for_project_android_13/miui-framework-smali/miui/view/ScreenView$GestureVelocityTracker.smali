.class Lmiui/view/ScreenView$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureVelocityTracker"
.end annotation


# static fields
.field private static final blacklist mMinFoldDist:F = 3.0f


# instance fields
.field private blacklist mPointerId:I

.field private blacklist mPrevX:F

.field private blacklist mStartX:F

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic blacklist this$0:Lmiui/view/ScreenView;


# direct methods
.method private constructor blacklist <init>(Lmiui/view/ScreenView;)V
    .registers 2

    .line 2122
    iput-object p1, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->this$0:Lmiui/view/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    const/4 p1, -0x1

    iput p1, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 2130
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mStartX:F

    .line 2132
    iput p1, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPrevX:F

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/view/ScreenView;Lmiui/view/ScreenView$GestureVelocityTracker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/ScreenView$GestureVelocityTracker;-><init>(Lmiui/view/ScreenView;)V

    return-void
.end method

.method private blacklist reset()V
    .registers 2

    .line 2168
    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPointerId:I

    int-to-float v0, v0

    iput v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mStartX:F

    iput v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPrevX:F

    .line 2169
    return-void
.end method


# virtual methods
.method public blacklist addMovement(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2143
    iget-object v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 2144
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2146
    :cond_a
    iget-object v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2148
    .local v0, "curX":F
    iget v1, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_25

    .line 2149
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2150
    .local v1, "pIndex":I
    if-eq v1, v2, :cond_23

    .line 2151
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    goto :goto_25

    .line 2153
    :cond_23
    iput v2, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 2156
    .end local v1    # "pIndex":I
    :cond_25
    :goto_25
    iget v1, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mStartX:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2f

    .line 2157
    iput v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mStartX:F

    .line 2158
    return-void

    .line 2160
    :cond_2f
    iget v1, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_38

    .line 2161
    iput v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPrevX:F

    .line 2162
    return-void

    .line 2164
    :cond_38
    iput v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPrevX:F

    .line 2165
    return-void
.end method

.method public blacklist getFlingDirection(F)I
    .registers 5
    .param p1, "velocity"    # F

    .line 2187
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_28

    .line 2188
    iget v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v1, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mStartX:F

    sub-float/2addr v0, v1

    .line 2189
    .local v0, "dist":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->this$0:Lmiui/view/ScreenView;

    invoke-static {v2}, Lmiui/view/ScreenView;->-$$Nest$fgetmTouchSlop(Lmiui/view/ScreenView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_26

    iget v1, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v2, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_24

    const/4 v1, 0x1

    goto :goto_27

    :cond_24
    const/4 v1, 0x2

    goto :goto_27

    .line 2190
    :cond_26
    const/4 v1, 0x3

    .line 2189
    :goto_27
    return v1

    .line 2192
    .end local v0    # "dist":F
    :cond_28
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getXVelocity(III)F
    .registers 6
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # I
    .param p3, "pointerId"    # I

    .line 2182
    iget-object v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2183
    iget-object v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public blacklist init(I)V
    .registers 3
    .param p1, "pointerId"    # I

    .line 2172
    iget-object v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 2173
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    .line 2175
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2177
    :goto_e
    invoke-direct {p0}, Lmiui/view/ScreenView$GestureVelocityTracker;->reset()V

    .line 2178
    iput p1, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 2179
    return-void
.end method

.method public blacklist recycle()V
    .registers 2

    .line 2135
    iget-object v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 2136
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2137
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2139
    :cond_a
    invoke-direct {p0}, Lmiui/view/ScreenView$GestureVelocityTracker;->reset()V

    .line 2140
    return-void
.end method
