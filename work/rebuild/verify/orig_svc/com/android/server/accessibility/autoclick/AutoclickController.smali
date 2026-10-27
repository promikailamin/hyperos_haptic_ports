.class public Lcom/android/server/accessibility/autoclick/AutoclickController;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "AutoclickController.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# static fields
.field public static final DEFAULT_AUTOCLICK_DELAY_TIME:I = 0x3e8

.field public static DOUBLE_CLICK_MINIMUM_TIMEOUT:J

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final LONG_PRESS_TIMEOUT:J


# instance fields
.field final clickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

.field public mActiveClickType:I

.field public final mAutoclickEnabledTimestamp:J

.field mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

.field mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

.field mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

.field mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

.field mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

.field mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

.field public final mContext:Landroid/content/Context;

.field public mContinuousScrollHandler:Landroid/os/Handler;

.field public mContinuousScrollRunnable:Ljava/lang/Runnable;

.field public mCursorAreaSize:I

.field public mDragModeClickDownTime:J

.field public mDragModeIsDragging:Z

.field public mHasOngoingDoubleClick:Z

.field public mHasOngoingLongPress:Z

.field protected mHoveredDirection:I

.field public final mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field mInputManagerWrapper:Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;

.field public mLongPressDownTime:J

.field mScrollCursorX:F

.field mScrollCursorY:F

.field final mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mUserId:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContinuousScrollHandler(Lcom/android/server/accessibility/autoclick/AutoclickController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContinuousScrollHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCursorAreaSize(Lcom/android/server/accessibility/autoclick/AutoclickController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mCursorAreaSize:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDragModeClickDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mDragModeClickDownTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmDragModeIsDragging(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mDragModeIsDragging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasOngoingDoubleClick(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHasOngoingDoubleClick:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasOngoingLongPress(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHasOngoingLongPress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLongPressDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mLongPressDownTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCursorAreaSize(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mCursorAreaSize:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDragModeClickDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mDragModeClickDownTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDragModeIsDragging(Lcom/android/server/accessibility/autoclick/AutoclickController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mDragModeIsDragging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHasOngoingDoubleClick(Lcom/android/server/accessibility/autoclick/AutoclickController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHasOngoingDoubleClick:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHasOngoingLongPress(Lcom/android/server/accessibility/autoclick/AutoclickController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHasOngoingLongPress:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLongPressDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mLongPressDownTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelPendingClick(Lcom/android/server/accessibility/autoclick/AutoclickController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScroll(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->handleScroll(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misClickTypePanelHovered(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->isClickTypePanelHovered()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPaused(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->isPaused()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misScrollPanelHovered(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->isScrollPanelHovered()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstartContinuousScroll(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->startContinuousScroll(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopContinuousScroll(Lcom/android/server/accessibility/autoclick/AutoclickController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->stopContinuousScroll()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 99
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->DOUBLE_CLICK_MINIMUM_TIMEOUT:J

    .line 104
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    sput-wide v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->LONG_PRESS_TIMEOUT:J

    .line 106
    const-class v0, Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityTraceManager;)V
    .registers 6

    .line 321
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    const/4 v1, 0x5

    .line 149
    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    .line 153
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mDragModeIsDragging:Z

    .line 160
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHasOngoingLongPress:Z

    .line 166
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHasOngoingDoubleClick:Z

    .line 173
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$1;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->clickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    .line 217
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$2;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    .line 254
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$3;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 322
    iput-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 323
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    .line 324
    iput p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mUserId:I

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickEnabledTimestamp:J

    .line 328
    invoke-static {}, Lcom/android/server/accessibility/autoclick/AutoclickLogger;->logAutoclickEnabled()V

    return-void
.end method

.method public static synthetic access$001(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$1001(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$101(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$1101(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$1201(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$1301(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$201(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$301(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$401(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$501(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$601(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$701(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$801(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$901(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method


# virtual methods
.method public final cancelPendingClick()V
    .registers 2

    .line 542
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_7

    .line 543
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->cancel()V

    .line 545
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    if-eqz v0, :cond_e

    .line 546
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->cancel()V

    .line 548
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getIsDragging()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 549
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->onDragEnd()V

    :cond_1d
    return-void
.end method

.method public clearEvents(I)V
    .registers 3

    const/16 v0, 0x2002

    if-ne p1, v0, :cond_7

    .line 443
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    .line 446
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz v0, :cond_e

    .line 447
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->hide()V

    .line 450
    :cond_e
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public exitScrollMode()V
    .registers 2

    .line 622
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz v0, :cond_7

    .line 623
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->hide()V

    .line 625
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->stopContinuousScroll()V

    .line 628
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz p0, :cond_11

    .line 629
    invoke-static {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$mresetSelectedClickTypeIfNecessary(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)V

    :cond_11
    return-void
.end method

.method public getActiveClickTypeForTest()I
    .registers 1

    .line 666
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    return p0
.end method

.method public final handleScroll(I)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 558
    iget-object v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    if-eqz v2, :cond_12

    .line 559
    invoke-virtual {v2}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->cancel()V

    .line 560
    iget-object v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    if-eqz v2, :cond_12

    .line 561
    invoke-virtual {v2}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->clearIndicator()V

    .line 565
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v2, 0x1

    .line 568
    new-array v9, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 569
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v9, v6

    .line 570
    iput v6, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v7, 0x3

    .line 571
    iput v7, v5, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 574
    new-array v10, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 575
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v10, v6

    .line 576
    iget v8, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollCursorX:F

    iput v8, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 577
    iget v8, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollCursorY:F

    iput v8, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/16 v8, 0x9

    const/high16 v11, 0x3f000000    # 0.5f

    if-eqz v1, :cond_55

    const/high16 v12, -0x41000000    # -0.5f

    if-eq v1, v2, :cond_51

    const/4 v2, 0x2

    const/16 v8, 0xa

    if-eq v1, v2, :cond_4d

    if-eq v1, v7, :cond_49

    return-void

    .line 591
    :cond_49
    invoke-virtual {v5, v8, v12}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_58

    .line 588
    :cond_4d
    invoke-virtual {v5, v8, v11}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_58

    .line 585
    :cond_51
    invoke-virtual {v5, v8, v12}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_58

    .line 582
    :cond_55
    invoke-virtual {v5, v8, v11}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 600
    :goto_58
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v1, :cond_6c

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$fgetmLastMotionEvent(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 601
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$fgetmLastMotionEvent(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    :cond_6c
    move v15, v6

    const/16 v17, 0x2002

    const/16 v18, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    move-wide v5, v3

    .line 604
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 612
    iget-object v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-static {v2}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$fgetmEventPolicyFlags(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)I

    move-result v2

    invoke-super {v0, v1, v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 615
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public hasOngoingLongPressForTesting()Z
    .registers 1

    .line 661
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHasOngoingLongPress:Z

    return p0
.end method

.method public final initiateAutoclickIndicator(Landroid/os/Handler;)V
    .registers 7

    .line 385
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Testable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 387
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1d

    .line 390
    :cond_1b
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    .line 392
    :goto_1d
    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    .line 393
    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    .line 394
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mWindowManager:Landroid/view/WindowManager;

    .line 395
    new-instance v2, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    iget v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mUserId:I

    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->clickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;-><init>(Landroid/content/Context;Landroid/view/WindowManager;ILcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;)V

    iput-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    .line 397
    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    .line 401
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContinuousScrollHandler:Landroid/os/Handler;

    .line 402
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$4;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$4;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContinuousScrollRunnable:Ljava/lang/Runnable;

    .line 410
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->show()V

    .line 411
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 412
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {v1}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mInputManagerWrapper:Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;

    if-nez v0, :cond_89

    .line 415
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    .line 416
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;-><init>(Landroid/hardware/input/InputManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mInputManagerWrapper:Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;

    .line 418
    :cond_89
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mInputManagerWrapper:Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 420
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceChanged(I)V

    return-void
.end method

.method public final isClickTypePanelHovered()Z
    .registers 1

    .line 534
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->isHovered()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isDraggingForTesting()Z
    .registers 1

    .line 656
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mDragModeIsDragging:Z

    return p0
.end method

.method public final isPaused()Z
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 530
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->isClickTypePanelHovered()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final isScrollPanelHovered()Z
    .registers 1

    .line 538
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->isHovered()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public onChangeForTesting(ZLandroid/net/Uri;)V
    .registers 3

    .line 651
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 673
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    if-eqz v0, :cond_7

    .line 674
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 676
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    if-eqz v0, :cond_e

    .line 677
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 679
    :cond_e
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz p0, :cond_15

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_15
    return-void
.end method

.method public onDestroy()V
    .registers 7

    .line 455
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 456
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mInputManagerWrapper:Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;

    if-eqz v0, :cond_e

    .line 457
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 460
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 461
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->stop()V

    .line 462
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    .line 464
    :cond_18
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_39

    .line 466
    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$fgetmDelay(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)I

    move-result v0

    int-to-long v2, v0

    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mCursorAreaSize:I

    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-static {v4}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$fgetmIgnoreMinorCursorMovement(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-static {v5}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$fgetmRevertToLeftClick(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)Z

    move-result v5

    invoke-static {v2, v3, v0, v4, v5}, Lcom/android/server/accessibility/autoclick/AutoclickLogger;->logAutoclickSettingsState(JIZZ)V

    .line 471
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->cancel()V

    .line 472
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    .line 475
    :cond_39
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    if-eqz v0, :cond_4e

    .line 476
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->cancel()V

    .line 477
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    .line 478
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 479
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->hide()V

    .line 482
    :cond_4e
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz v0, :cond_57

    .line 483
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->hide()V

    .line 484
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    .line 487
    :cond_57
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContinuousScrollHandler:Landroid/os/Handler;

    if-eqz v0, :cond_62

    .line 488
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContinuousScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 489
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContinuousScrollHandler:Landroid/os/Handler;

    .line 493
    :cond_62
    iget-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickEnabledTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_78

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickEnabledTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    .line 496
    invoke-static {p0}, Lcom/android/server/accessibility/autoclick/AutoclickLogger;->logAutoclickSessionDuration(I)V

    :cond_78
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 9

    .line 425
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 426
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/accessibility/autoclick/AutoclickController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onKeyEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";policyFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 429
    :cond_3b
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_56

    .line 430
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 431
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->updateMetaState(I)V

    goto :goto_56

    .line 433
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    .line 437
    :cond_56
    :goto_56
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .line 0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10

    .line 333
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 334
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/accessibility/autoclick/AutoclickController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onMotionEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";rawEvent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";policyFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_43
    const/16 v0, 0x2002

    .line 337
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 338
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-nez v0, :cond_7c

    .line 339
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 341
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->initiateAutoclickIndicator(Landroid/os/Handler;)V

    .line 344
    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    sget v2, Lcom/android/server/accessibility/autoclick/AutoclickController;->DEFAULT_AUTOCLICK_DELAY_TIME:I

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    .line 346
    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mUserId:I

    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;-><init>(ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    .line 347
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    .line 348
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    .line 347
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;)V

    .line 353
    :cond_7c
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    const/4 v1, 0x7

    if-eqz v0, :cond_92

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getIsDragging()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_92

    .line 355
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->onDragMove(Landroid/view/MotionEvent;)V

    .line 358
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 359
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/autoclick/AutoclickController;->scheduleClick(Landroid/view/MotionEvent;I)V

    .line 363
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mDragModeIsDragging:Z

    if-eqz v0, :cond_b6

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_b6

    const/4 v0, 0x2

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 366
    iget-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mDragModeClickDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    const/4 v0, 0x1

    .line 367
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setButtonState(I)V

    goto :goto_b6

    .line 371
    :cond_b3
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    .line 374
    :cond_b6
    :goto_b6
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final scheduleClick(Landroid/view/MotionEvent;I)V
    .registers 5

    .line 501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_13

    const/16 p1, 0x9

    if-eq v0, p1, :cond_12

    const/16 p1, 0xa

    if-eq v0, p1, :cond_12

    .line 515
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    :cond_12
    return-void

    .line 503
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 504
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->update(Landroid/view/MotionEvent;I)V

    return-void

    .line 506
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    return-void
.end method

.method public final startContinuousScroll(I)V
    .registers 4

    .line 634
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContinuousScrollHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 635
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->handleScroll(I)V

    .line 636
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContinuousScrollHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContinuousScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method

.method public final stopContinuousScroll()V
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContinuousScrollHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 643
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContinuousScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    const/4 v0, 0x5

    .line 645
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    return-void
.end method
