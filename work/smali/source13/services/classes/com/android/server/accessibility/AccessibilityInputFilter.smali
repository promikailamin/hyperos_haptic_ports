.class Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final FEATURES_AFFECTING_MOTION_EVENTS:I = 0x3db

.field static final FLAG_FEATURE_AUTOCLICK:I = 0x8

.field static final FLAG_FEATURE_CONTROL_SCREEN_MAGNIFIER:I = 0x20

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_INJECT_MOTION_EVENTS:I = 0x10

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field static final FLAG_FEATURE_TRIGGERED_SCREEN_MAGNIFIER:I = 0x40

.field static final FLAG_REQUEST_2_FINGER_PASSTHROUGH:I = 0x200

.field static final FLAG_REQUEST_MULTI_FINGER_GESTURES:I = 0x100

.field static final FLAG_SEND_MOTION_EVENTS:I = 0x400

.field static final FLAG_SERVICE_HANDLES_DOUBLE_TAP:I = 0x80

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

.field private final mContext:Landroid/content/Context;

.field private mEnabledFeatures:I

.field private final mEventHandler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/EventStreamTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalled:Z

.field private mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

.field private mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private final mMagnificationGestureHandler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mMotionEventInjectors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MotionEventInjector;",
            ">;"
        }
    .end annotation
.end field

.field private final mMouseStreamStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/os/PowerManager;

.field private final mTouchExplorer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/gestures/TouchExplorer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchScreenStreamStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 186
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;)V

    .line 187
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/accessibility/AccessibilityManagerService;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/EventStreamTransformation;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p3, "eventHandler":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/EventStreamTransformation;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 162
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 179
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    .line 192
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 194
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 195
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 196
    return-void
.end method

.method private addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "handler"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 529
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 530
    .local v0, "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v0, :cond_e

    .line 531
    invoke-interface {p2, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_11

    .line 533
    :cond_e
    invoke-interface {p2, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 535
    :goto_11
    move-object v0, p2

    .line 536
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    return-void
.end method

.method private clearEventStreamHandler(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "eventSource"    # I

    .line 326
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 327
    .local v0, "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v0, :cond_d

    .line 328
    invoke-interface {v0, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 330
    :cond_d
    return-void
.end method

.method private createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    .registers 25
    .param p1, "displayId"    # I
    .param p2, "displayContext"    # Landroid/content/Context;

    .line 594
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_e

    move v11, v5

    goto :goto_f

    :cond_e
    move v11, v4

    .line 596
    .local v11, "detectControlGestures":Z
    :goto_f
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_15

    move v12, v5

    goto :goto_16

    :cond_15
    move v12, v4

    .line 599
    .local v12, "triggerable":Z
    :goto_16
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationMode(I)I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_45

    .line 601
    const/16 v2, 0x7f7

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v2

    .line 603
    .local v2, "uiContext":Landroid/content/Context;
    new-instance v4, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 604
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v8

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v9

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 605
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v10

    move-object v6, v4

    move-object v7, v2

    move/from16 v13, p1

    invoke-direct/range {v6 .. v13}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZI)V

    move-object v2, v4

    .line 607
    .local v2, "magnificationGestureHandler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    goto :goto_78

    .line 608
    .end local v2    # "magnificationGestureHandler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    :cond_45
    const/16 v2, 0x7eb

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v2

    .line 610
    .local v2, "uiContext":Landroid/content/Context;
    new-instance v4, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 611
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v15

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 612
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v16

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 613
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v17

    new-instance v5, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    iget v6, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v5, v1, v6}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;-><init>(Landroid/content/Context;I)V

    move-object v13, v4

    move-object v14, v2

    move/from16 v18, v11

    move/from16 v19, v12

    move-object/from16 v20, v5

    move/from16 v21, p1

    invoke-direct/range {v13 .. v21}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZLcom/android/server/accessibility/magnification/WindowMagnificationPromptController;I)V

    move-object v2, v4

    .line 616
    .local v2, "magnificationGestureHandler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    :goto_78
    return-object v2
.end method

.method private disableDisplayIndependentFeatures()V
    .registers 3

    .line 581
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 582
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController;->onDestroy()V

    .line 583
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 586
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v0, :cond_13

    .line 587
    invoke-virtual {v0}, Lcom/android/server/accessibility/KeyboardInterceptor;->onDestroy()V

    .line 588
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 590
    :cond_13
    return-void
.end method

.method private disableFeatures()V
    .registers 4

    .line 540
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 542
    .local v0, "displaysList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_1e

    .line 543
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(I)V

    .line 542
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 545
    .end local v1    # "i":I
    :cond_1e
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjectors(Landroid/util/SparseArray;)V

    .line 546
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableDisplayIndependentFeatures()V

    .line 548
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetAllStreamState()V

    .line 549
    return-void
.end method

.method private disableFeaturesForDisplay(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 556
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/MotionEventInjector;

    .line 557
    .local v0, "injector":Lcom/android/server/accessibility/MotionEventInjector;
    if-eqz v0, :cond_12

    .line 558
    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->onDestroy()V

    .line 559
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 562
    :cond_12
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 563
    .local v1, "explorer":Lcom/android/server/accessibility/gestures/TouchExplorer;
    if-eqz v1, :cond_24

    .line 564
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDestroy()V

    .line 565
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 568
    :cond_24
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 569
    .local v2, "handler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    if-eqz v2, :cond_36

    .line 570
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onDestroy()V

    .line 571
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 574
    :cond_36
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 575
    .local v3, "eventStreamTransformation":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v3, :cond_45

    .line 576
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 578
    :cond_45
    return-void
.end method

.method private enableDisplayIndependentFeatures()V
    .registers 4

    .line 507
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    .line 508
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjectors(Landroid/util/SparseArray;)V

    .line 511
    :cond_d
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    .line 512
    new-instance v0, Lcom/android/server/accessibility/KeyboardInterceptor;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-class v2, Lcom/android/server/policy/WindowManagerPolicy;

    .line 513
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 517
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 519
    :cond_28
    return-void
.end method

.method private enableFeatures()V
    .registers 4

    .line 444
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetAllStreamState()V

    .line 446
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 448
    .local v0, "displaysList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_1d

    .line 449
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    .line 448
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 451
    .end local v1    # "i":I
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableDisplayIndependentFeatures()V

    .line 452
    return-void
.end method

.method private enableFeaturesForDisplay(Landroid/view/Display;)V
    .registers 8
    .param p1, "display"    # Landroid/view/Display;

    .line 459
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 460
    .local v0, "displayContext":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 462
    .local v1, "displayId":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2a

    .line 463
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    if-nez v2, :cond_25

    .line 464
    new-instance v2, Lcom/android/server/accessibility/AutoclickController;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 465
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/accessibility/AutoclickController;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 467
    :cond_25
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 470
    :cond_2a
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_64

    .line 471
    new-instance v2, Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v2, v0, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 472
    .local v2, "explorer":Lcom/android/server/accessibility/gestures/TouchExplorer;
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v3, v3, 0x80

    const/4 v4, 0x1

    if-eqz v3, :cond_41

    .line 473
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceHandlesDoubleTap(Z)V

    .line 475
    :cond_41
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_4a

    .line 476
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setMultiFingerGesturesEnabled(Z)V

    .line 478
    :cond_4a
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_53

    .line 479
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setTwoFingerPassthroughEnabled(Z)V

    .line 481
    :cond_53
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_5c

    .line 482
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setSendMotionEventsEnabled(Z)V

    .line 484
    :cond_5c
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 485
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    .end local v2    # "explorer":Lcom/android/server/accessibility/gestures/TouchExplorer;
    :cond_64
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_72

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_72

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7f

    .line 491
    :cond_72
    nop

    .line 492
    invoke-direct {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    move-result-object v2

    .line 494
    .local v2, "magnificationGestureHandler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 495
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    .end local v2    # "magnificationGestureHandler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    :cond_7f
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9e

    .line 499
    new-instance v2, Lcom/android/server/accessibility/MotionEventInjector;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 500
    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;-><init>(Landroid/os/Looper;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    .line 501
    .local v2, "injector":Lcom/android/server/accessibility/MotionEventInjector;
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 502
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    .end local v2    # "injector":Lcom/android/server/accessibility/MotionEventInjector;
    :cond_9e
    return-void
.end method

.method private getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 295
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_45

    .line 296
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDisplayId()I

    move-result v0

    .line 298
    .local v0, "displayId":I
    const/16 v1, 0x1002

    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 299
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 300
    .local v1, "touchScreenStreamState":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    if-nez v1, :cond_25

    .line 301
    new-instance v2, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;-><init>()V

    move-object v1, v2

    .line 302
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    :cond_25
    return-object v1

    .line 306
    .end local v1    # "touchScreenStreamState":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    :cond_26
    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 307
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 308
    .local v1, "mouseStreamState":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    if-nez v1, :cond_43

    .line 309
    new-instance v2, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;-><init>()V

    move-object v1, v2

    .line 310
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    :cond_43
    return-object v1

    .line 306
    .end local v0    # "displayId":I
    .end local v1    # "mouseStreamState":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    :cond_44
    goto :goto_5f

    .line 314
    :cond_45
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_5f

    .line 315
    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 316
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_5c

    .line 317
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 319
    :cond_5c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 314
    :cond_5f
    :goto_5f
    nop

    .line 322
    :cond_60
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 360
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 361
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 362
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    .line 363
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->isDisplayIdValid(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v3, v1

    :cond_1b
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 364
    invoke-interface {v2, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 365
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 366
    return-void
.end method

.method private isDisplayIdValid(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 369
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V
    .registers 6
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 346
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 347
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 348
    return-void

    .line 353
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 354
    return-void
.end method

.method private processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 333
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessScroll()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 334
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 335
    return-void

    .line 338
    :cond_12
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 339
    return-void

    .line 342
    :cond_19
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    .line 343
    return-void
.end method

.method private switchEventStreamTransformation(ILcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "oldStreamTransformation"    # Lcom/android/server/accessibility/EventStreamTransformation;
    .param p3, "currentStreamTransformation"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 680
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 681
    .local v0, "eventStreamTransformation":Lcom/android/server/accessibility/EventStreamTransformation;
    if-nez v0, :cond_b

    .line 682
    return-void

    .line 684
    :cond_b
    if-ne v0, p2, :cond_1a

    .line 685
    invoke-interface {p2}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 686
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_32

    .line 688
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_32

    .line 689
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    if-ne v1, p2, :cond_2d

    .line 690
    invoke-interface {v0, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 691
    invoke-interface {p2}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 692
    return-void

    .line 694
    :cond_2d
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    goto :goto_1a

    .line 698
    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 2
    .param p1, "inputSource"    # I

    .line 403
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 936
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 937
    return-void

    .line 939
    :cond_5
    const-string v0, "A11yInputFilter Info : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 940
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 942
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 943
    .local v0, "displaysList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8f

    .line 944
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 945
    .local v2, "displayId":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 946
    .local v3, "next":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v3, :cond_89

    .line 947
    const-string v4, "Enabled features of Display ["

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 948
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 949
    const-string v4, "] = "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 951
    new-instance v4, Ljava/util/StringJoiner;

    const-string v5, ","

    const-string v6, "["

    const-string v7, "]"

    invoke-direct {v4, v5, v6, v7}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 953
    .local v4, "joiner":Ljava/util/StringJoiner;
    :goto_4a
    if-eqz v3, :cond_82

    .line 954
    instance-of v5, v3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz v5, :cond_56

    .line 955
    const-string v5, "MagnificationGesture"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7d

    .line 956
    :cond_56
    instance-of v5, v3, Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v5, :cond_60

    .line 957
    const-string v5, "KeyboardInterceptor"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7d

    .line 958
    :cond_60
    instance-of v5, v3, Lcom/android/server/accessibility/gestures/TouchExplorer;

    if-eqz v5, :cond_6a

    .line 959
    const-string v5, "TouchExplorer"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7d

    .line 960
    :cond_6a
    instance-of v5, v3, Lcom/android/server/accessibility/AutoclickController;

    if-eqz v5, :cond_74

    .line 961
    const-string v5, "AutoclickController"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7d

    .line 962
    :cond_74
    instance-of v5, v3, Lcom/android/server/accessibility/MotionEventInjector;

    if-eqz v5, :cond_7d

    .line 963
    const-string v5, "MotionEventInjector"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 965
    :cond_7d
    :goto_7d
    invoke-interface {v3}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v3

    goto :goto_4a

    .line 967
    :cond_82
    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 969
    .end local v4    # "joiner":Ljava/util/StringJoiner;
    :cond_89
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 943
    .end local v2    # "displayId":I
    .end local v3    # "next":Lcom/android/server/accessibility/EventStreamTransformation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 971
    .end local v1    # "i":I
    :cond_8f
    return-void
.end method

.method public getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 2

    .line 397
    const/4 v0, 0x0

    return-object v0
.end method

.method notifyAccessibilityButtonClicked(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 433
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 434
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 435
    .local v0, "handler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    if-eqz v0, :cond_15

    .line 436
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->notifyShortcutTriggered()V

    .line 439
    .end local v0    # "handler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    :cond_15
    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 425
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 426
    .local v1, "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v1, :cond_16

    .line 427
    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 424
    .end local v1    # "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 388
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 648
    return-void
.end method

.method onDisplayAdded(Landroid/view/Display;)V
    .registers 3
    .param p1, "display"    # Landroid/view/Display;

    .line 220
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_e

    .line 221
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    .line 224
    :cond_e
    return-void
.end method

.method onDisplayRemoved(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 227
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_a

    .line 228
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(I)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    .line 231
    :cond_a
    return-void
.end method

.method public onDoubleTap(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 921
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 922
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTap()V

    .line 924
    :cond_13
    return-void
.end method

.method public onDoubleTapAndHold(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 927
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 928
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTapAndHold()V

    .line 930
    :cond_13
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 239
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 241
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".onInputEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";policyFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 245
    :cond_49
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_55

    .line 247
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 248
    return-void

    .line 251
    :cond_55
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    move-result-object v0

    .line 252
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    if-nez v0, :cond_5f

    .line 253
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 254
    return-void

    .line 257
    :cond_5f
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    .line 258
    .local v1, "eventSource":I
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDisplayId()I

    move-result v2

    .line 259
    .local v2, "displayId":I
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p2

    if-nez v3, :cond_76

    .line 260
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 261
    invoke-direct {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->clearEventStreamHandler(II)V

    .line 262
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 263
    return-void

    .line 266
    :cond_76
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->updateInputSource(I)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 267
    invoke-direct {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->clearEventStreamHandler(II)V

    .line 270
    :cond_83
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->inputSourceValid()Z

    move-result v3

    if-nez v3, :cond_8d

    .line 271
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 272
    return-void

    .line 275
    :cond_8d
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_a2

    .line 276
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v3, v3, 0x3db

    if-eqz v3, :cond_9e

    .line 277
    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    .line 278
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v0, v3, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V

    .line 279
    return-void

    .line 281
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    :cond_9e
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_ac

    .line 283
    :cond_a2
    instance-of v3, p1, Landroid/view/KeyEvent;

    if-eqz v3, :cond_ac

    .line 284
    move-object v3, p1

    check-cast v3, Landroid/view/KeyEvent;

    .line 285
    .local v3, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, v3, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V

    .line 287
    .end local v3    # "keyEvent":Landroid/view/KeyEvent;
    :cond_ac
    :goto_ac
    return-void
.end method

.method public onInstalled()V
    .registers 2

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 204
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 205
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 206
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 207
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 381
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "transformedEvent"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 375
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 376
    return-void
.end method

.method public onUninstalled()V
    .registers 2

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 215
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 216
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 217
    return-void
.end method

.method public refreshMagnificationMode(Landroid/view/Display;)V
    .registers 6
    .param p1, "display"    # Landroid/view/Display;

    .line 658
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 659
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 660
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 661
    .local v1, "magnificationGestureHandler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    if-nez v1, :cond_f

    .line 662
    return-void

    .line 664
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationMode(I)I

    move-result v3

    if-ne v2, v3, :cond_1c

    .line 665
    return-void

    .line 667
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onDestroy()V

    .line 668
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 670
    invoke-virtual {v2, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    .line 669
    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    move-result-object v2

    .line 671
    .local v2, "currentMagnificationGestureHandler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->switchEventStreamTransformation(ILcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 673
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 674
    return-void
.end method

.method public requestDelegating(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 915
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 916
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->requestDelegating()V

    .line 918
    :cond_13
    return-void
.end method

.method public requestDragging(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "pointerId"    # I

    .line 909
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 910
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->requestDragging(I)V

    .line 912
    :cond_13
    return-void
.end method

.method public requestTouchExploration(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 903
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 904
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->requestTouchExploration()V

    .line 906
    :cond_13
    return-void
.end method

.method resetAllStreamState()V
    .registers 4

    .line 620
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 622
    .local v0, "displaysList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_1e

    .line 623
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    .line 622
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 626
    .end local v1    # "i":I
    :cond_1e
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v1, :cond_25

    .line 627
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 629
    :cond_25
    return-void
.end method

.method resetStreamStateForDisplay(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 632
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 633
    .local v0, "touchScreenStreamState":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    if-eqz v0, :cond_12

    .line 634
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 635
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 638
    :cond_12
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 639
    .local v1, "mouseStreamState":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    if-eqz v1, :cond_24

    .line 640
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 641
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 643
    :cond_24
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 885
    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 886
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setGestureDetectionPassthroughRegion(Landroid/graphics/Region;)V

    .line 888
    :cond_15
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "sink"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 393
    return-void
.end method

.method public setServiceDetectsGesturesEnabled(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "mode"    # Z

    .line 897
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 898
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceDetectsGestures(Z)V

    .line 900
    :cond_13
    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 891
    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 892
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setTouchExplorationPassthroughRegion(Landroid/graphics/Region;)V

    .line 894
    :cond_15
    return-void
.end method

.method setUserAndEnabledFeatures(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "enabledFeatures"    # I

    .line 410
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    if-ne v0, p2, :cond_9

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    if-ne v0, p1, :cond_9

    .line 411
    return-void

    .line 413
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_10

    .line 414
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 416
    :cond_10
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 417
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 418
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_1b

    .line 419
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 421
    :cond_1b
    return-void
.end method
