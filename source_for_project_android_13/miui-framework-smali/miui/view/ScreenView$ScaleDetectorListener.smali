.class Lmiui/view/ScreenView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# static fields
.field private static final blacklist VALID_PINCH_IN_RATIO:F = 0.8f

.field private static final blacklist VALID_PINCH_OUT_RATIO:F = 1.2f

.field private static final blacklist VALID_PINCH_RATIO:F = 0.95f

.field private static final blacklist VALID_PINCH_TIME:F = 200.0f


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/ScreenView;


# direct methods
.method private constructor blacklist <init>(Lmiui/view/ScreenView;)V
    .registers 2

    .line 2369
    iput-object p1, p0, Lmiui/view/ScreenView$ScaleDetectorListener;->this$0:Lmiui/view/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/view/ScreenView;Lmiui/view/ScreenView$ScaleDetectorListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/ScreenView$ScaleDetectorListener;-><init>(Lmiui/view/ScreenView;)V

    return-void
.end method


# virtual methods
.method public whitelist onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 2389
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 2390
    .local v0, "scale":F
    iget-object v1, p0, Lmiui/view/ScreenView$ScaleDetectorListener;->this$0:Lmiui/view/ScreenView;

    invoke-static {v1}, Lmiui/view/ScreenView;->-$$Nest$fgetmTouchState(Lmiui/view/ScreenView;)I

    move-result v1

    if-nez v1, :cond_2c

    .line 2391
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_25

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_25

    const v1, 0x3f86bca2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2c

    .line 2394
    :cond_25
    iget-object v1, p0, Lmiui/view/ScreenView$ScaleDetectorListener;->this$0:Lmiui/view/ScreenView;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lmiui/view/ScreenView;->-$$Nest$msetTouchState(Lmiui/view/ScreenView;Landroid/view/MotionEvent;I)V

    .line 2396
    :cond_2c
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    if-gez v1, :cond_3a

    .line 2397
    iget-object v1, p0, Lmiui/view/ScreenView$ScaleDetectorListener;->this$0:Lmiui/view/ScreenView;

    invoke-virtual {v1, p1}, Lmiui/view/ScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    .line 2398
    return v2

    .line 2400
    :cond_3a
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_47

    .line 2401
    iget-object v1, p0, Lmiui/view/ScreenView$ScaleDetectorListener;->this$0:Lmiui/view/ScreenView;

    invoke-virtual {v1, p1}, Lmiui/view/ScreenView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    .line 2402
    return v2

    .line 2404
    :cond_47
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 2381
    iget-object v0, p0, Lmiui/view/ScreenView$ScaleDetectorListener;->this$0:Lmiui/view/ScreenView;

    invoke-static {v0}, Lmiui/view/ScreenView;->-$$Nest$fgetmTouchState(Lmiui/view/ScreenView;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 2385
    iget-object v0, p0, Lmiui/view/ScreenView$ScaleDetectorListener;->this$0:Lmiui/view/ScreenView;

    invoke-virtual {v0}, Lmiui/view/ScreenView;->finishCurrentGesture()V

    .line 2386
    return-void
.end method
