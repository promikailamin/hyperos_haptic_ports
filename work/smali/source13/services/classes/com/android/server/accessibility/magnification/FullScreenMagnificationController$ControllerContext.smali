.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerContext"
.end annotation


# instance fields
.field private final mAnimationDuration:Ljava/lang/Long;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/Handler;J)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "traceManager"    # Lcom/android/server/accessibility/AccessibilityTraceManager;
    .param p3, "windowManager"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "animationDuration"    # J

    .line 1567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1568
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    .line 1569
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 1570
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 1571
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    .line 1572
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mAnimationDuration:Ljava/lang/Long;

    .line 1573
    return-void
.end method


# virtual methods
.method public getAnimationDuration()J
    .registers 3

    .line 1621
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mAnimationDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1580
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 1604
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;
    .registers 2

    .line 1588
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object v0
.end method

.method public getWindowManager()Lcom/android/server/wm/WindowManagerInternal;
    .registers 2

    .line 1596
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method public newValueAnimator()Landroid/animation/ValueAnimator;
    .registers 2

    .line 1614
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    return-object v0
.end method
