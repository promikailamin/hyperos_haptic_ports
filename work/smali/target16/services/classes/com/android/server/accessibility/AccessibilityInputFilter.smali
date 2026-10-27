.class public Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public mAutoclickController:Lcom/android/server/accessibility/autoclick/AutoclickController;

.field public mCombinedGenericMotionEventSources:I

.field public mCombinedMotionEventObservedSources:I

.field public final mContext:Landroid/content/Context;

.field public mEnabledFeatures:I

.field public final mEventHandler:Landroid/util/SparseArray;

.field public mFullScreenMagnificationPointerMotionEventFilter:Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;

.field public mGenericMotionEventStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

.field public final mInputDebugger:Lcom/android/server/accessibility/AccessibilityInputDebugger;

.field public mInstalled:Z

.field public mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

.field public mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field public mLastActiveDeviceMotionEvent:Landroid/view/MotionEvent;

.field public final mMagnificationGestureHandler:Landroid/util/SparseArray;

.field public mMagnificationKeyHandler:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;

.field public final mMotionEventInjectors:Landroid/util/SparseArray;

.field public mMouseKeysInterceptor:Lcom/android/server/accessibility/MouseKeysInterceptor;

.field public final mMouseStreamStates:Landroid/util/SparseArray;

.field public final mPm:Landroid/os/PowerManager;

.field public mServiceDetectsGestures:Landroid/util/SparseArray;

.field public final mTouchExplorer:Landroid/util/SparseArray;

.field public final mTouchScreenStreamStates:Landroid/util/SparseArray;

.field public mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAms(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$manyServiceWantsGenericMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->anyServiceWantsGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$manyServiceWantsToObserveMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->anyServiceWantsToObserveMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 81
    const-string v0, "A11yInputFilter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 6

    .line 306
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 7

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 217
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 234
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 235
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    .line 237
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    .line 241
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedGenericMotionEventSources:I

    .line 242
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedMotionEventObservedSources:I

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mLastActiveDeviceMotionEvent:Landroid/view/MotionEvent;

    .line 313
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 314
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 315
    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 316
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 317
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 319
    sget-boolean p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-nez p1, :cond_4f

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 320
    :cond_4f
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputDebugger;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputDebugger;-><init>()V

    .line 321
    :cond_54
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInputDebugger:Lcom/android/server/accessibility/AccessibilityInputDebugger;

    return-void
.end method


# virtual methods
.method public final addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 4

    .line 865
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_e

    .line 867
    invoke-interface {p2, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_11

    .line 869
    :cond_e
    invoke-interface {p2, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 872
    :goto_11
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final anyServiceWantsGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const/16 v0, 0x1002

    .line 1323
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1324
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->canShareGenericTouchEvent()Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 1327
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    and-int/lit16 p1, p1, -0x100

    .line 1328
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedGenericMotionEventSources:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public final anyServiceWantsToObserveMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    and-int/lit16 p1, p1, -0x100

    .line 1333
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedMotionEventObservedSources:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final canShareGenericTouchEvent()Z
    .registers 3

    .line 1337
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedMotionEventObservedSources:I

    and-int/lit16 v0, v0, 0x1002

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1341
    :cond_8
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final clearEventStreamHandler(II)V
    .registers 3

    .line 490
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_d

    .line 492
    invoke-interface {p0, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_d
    return-void
.end method

.method public clearEvents(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public final createFullScreenMagnificationPointerMotionEventFilter()V
    .registers 3

    .line 995
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 996
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 997
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFullScreenMagnificationPointerMotionEventFilter:Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;

    .line 1000
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationCursorFollowingMode()I

    move-result v0

    .line 1001
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setCursorFollowingMode(I)V

    return-void
.end method

.method public final createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1048
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_e

    move v11, v5

    goto :goto_f

    :cond_e
    move v11, v4

    :goto_f
    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_15

    move v12, v5

    goto :goto_16

    :cond_15
    move v12, v4

    :goto_16
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1c

    move v13, v5

    goto :goto_1d

    :cond_1c
    move v13, v4

    .line 1055
    :goto_1d
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v14, p1

    invoke-virtual {v2, v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationMode(I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_47

    const/16 v2, 0x7f7

    .line 1057
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v7

    .line 1059
    new-instance v6, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1060
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v8

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v9

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1061
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v10

    invoke-direct/range {v6 .. v14}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZZI)V

    return-object v6

    :cond_47
    const/16 v2, 0x7eb

    .line 1066
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v7

    .line 1068
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;

    invoke-direct {v2, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;-><init>(Landroid/content/Context;)V

    .line 1070
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1071
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v8

    .line 1072
    new-instance v6, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1076
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v9

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1077
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v10

    new-instance v14, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v14, v1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;-><init>(Landroid/content/Context;I)V

    move/from16 v15, p1

    move-object/from16 v16, v2

    invoke-direct/range {v6 .. v16}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZZLcom/android/server/accessibility/magnification/WindowMagnificationPromptController;ILcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;)V

    return-object v6
.end method

.method public final disableDisplayIndependentFeatures()V
    .registers 3

    .line 962
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/autoclick/AutoclickController;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 963
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->onDestroy()V

    .line 964
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/autoclick/AutoclickController;

    .line 967
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v0, :cond_13

    .line 968
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->onDestroy()V

    .line 969
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 972
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseKeysInterceptor:Lcom/android/server/accessibility/MouseKeysInterceptor;

    if-eqz v0, :cond_1c

    .line 973
    invoke-virtual {v0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->onDestroy()V

    .line 974
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseKeysInterceptor:Lcom/android/server/accessibility/MouseKeysInterceptor;

    .line 977
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationKeyHandler:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;

    if-eqz v0, :cond_25

    .line 978
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->onDestroy()V

    .line 979
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationKeyHandler:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;

    :cond_25
    return-void
.end method

.method public final disableFeatures(I)V
    .registers 5

    .line 884
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_1e

    .line 887
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 889
    :cond_1e
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjectors(Landroid/util/SparseArray;)V

    .line 890
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableDisplayIndependentFeatures()V

    .line 892
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetAllStreamState()V

    const/4 p1, 0x0

    .line 894
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->registerPointerMotionFilter(Z)V

    return-void
.end method

.method public final disableFeaturesForDisplay(II)V
    .registers 5

    .line 915
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableFeaturesForDisplay() : display Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A11yInputFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_1a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/MotionEventInjector;

    if-eqz v0, :cond_2c

    .line 921
    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->onDestroy()V

    .line 922
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 925
    :cond_2c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    if-eqz v0, :cond_3e

    .line 927
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDestroy()V

    .line 928
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 931
    :cond_3e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz v0, :cond_56

    .line 937
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->isAnyMagnificationEnabled(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 936
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onDestroy(Z)V

    .line 938
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 941
    :cond_56
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p2, :cond_65

    .line 943
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_65
    return-void
.end method

.method public disableFeaturesForDisplayIfInstalled(I)V
    .registers 3

    .line 955
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 956
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(II)V

    .line 957
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    :cond_b
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 1457
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    if-nez p1, :cond_6

    goto/16 :goto_9b

    .line 1460
    :cond_6
    const-string p1, "A11yInputFilter Info : "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1461
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1463
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p3, 0x0

    .line 1464
    :goto_15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_9b

    .line 1465
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 1466
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_94

    .line 1468
    const-string v2, "Enabled features of Display ["

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1469
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1470
    const-string v0, "] = "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1472
    new-instance v0, Ljava/util/StringJoiner;

    const-string v2, "["

    const-string v3, "]"

    const-string v4, ","

    invoke-direct {v0, v4, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_4b
    if-eqz v1, :cond_8d

    .line 1475
    instance-of v2, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz v2, :cond_57

    .line 1476
    const-string v2, "MagnificationGesture"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_88

    .line 1477
    :cond_57
    instance-of v2, v1, Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v2, :cond_61

    .line 1478
    const-string v2, "KeyboardInterceptor"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_88

    .line 1479
    :cond_61
    instance-of v2, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;

    if-eqz v2, :cond_6b

    .line 1480
    const-string v2, "TouchExplorer"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_88

    .line 1481
    :cond_6b
    instance-of v2, v1, Lcom/android/server/accessibility/autoclick/AutoclickController;

    if-eqz v2, :cond_75

    .line 1482
    const-string v2, "AutoclickController"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_88

    .line 1483
    :cond_75
    instance-of v2, v1, Lcom/android/server/accessibility/MotionEventInjector;

    if-eqz v2, :cond_7f

    .line 1484
    const-string v2, "MotionEventInjector"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_88

    .line 1485
    :cond_7f
    instance-of v2, v1, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;

    if-eqz v2, :cond_88

    .line 1486
    const-string v2, "MagnificationKeyHandler"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1488
    :cond_88
    :goto_88
    invoke-interface {v1}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    goto :goto_4b

    .line 1490
    :cond_8d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1492
    :cond_94
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_15

    :cond_9b
    :goto_9b
    return-void
.end method

.method public final enableDisplayIndependentFeatures()V
    .registers 10

    .line 790
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    .line 791
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjectors(Landroid/util/SparseArray;)V

    .line 794
    :cond_d
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 797
    new-instance v0, Lcom/android/server/accessibility/KeyboardInterceptor;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-class v3, Lcom/android/server/input/InputManagerInternal;

    .line 798
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/InputManagerInternal;

    invoke-direct {v0, v2, v3}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/input/InputManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 802
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 805
    :cond_28
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_4c

    .line 806
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseKeysInterceptor:Lcom/android/server/accessibility/MouseKeysInterceptor;

    if-nez v0, :cond_4c

    .line 807
    new-instance v7, Lcom/android/server/accessibility/AccessibilityInputFilter$2;

    invoke-direct {v7, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$2;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    .line 813
    new-instance v2, Lcom/android/server/accessibility/MouseKeysInterceptor;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 815
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x0

    iget v8, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/MouseKeysInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;Landroid/os/Looper;ILcom/android/server/accessibility/TimeSource;I)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseKeysInterceptor:Lcom/android/server/accessibility/MouseKeysInterceptor;

    .line 819
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 823
    :cond_4c
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->isAnyMagnificationEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 824
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 825
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v0, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;-><init>(Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationKeyHandler:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;

    .line 826
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    :cond_66
    return-void
.end method

.method public final enableFeatures()V
    .registers 4

    .line 690
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "A11yInputFilter"

    const-string v1, "enableFeatures()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetAllStreamState()V

    .line 694
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 696
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1a
    if-ltz v1, :cond_28

    .line 697
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 699
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableDisplayIndependentFeatures()V

    .line 701
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->isAnyFullScreenMagnificationEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->registerPointerMotionFilter(Z)V

    return-void
.end method

.method public final enableFeaturesForDisplay(Landroid/view/Display;)V
    .registers 7

    .line 705
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableFeaturesForDisplay() : display Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A11yInputFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 710
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 711
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isDisplayProxyed(I)Z

    move-result v1

    if-eqz v1, :cond_32

    goto/16 :goto_eb

    .line 714
    :cond_32
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 715
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 717
    :cond_41
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_61

    .line 718
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/autoclick/AutoclickController;

    if-nez v1, :cond_5c

    .line 719
    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 720
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/accessibility/autoclick/AutoclickController;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/autoclick/AutoclickController;

    .line 722
    :cond_5c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 725
    :cond_61
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_aa

    .line 726
    new-instance v1, Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 727
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v2, v2, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_78

    .line 728
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceHandlesDoubleTap(Z)V

    .line 730
    :cond_78
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_81

    .line 731
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setMultiFingerGesturesEnabled(Z)V

    .line 733
    :cond_81
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_8a

    .line 734
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setTwoFingerPassthroughEnabled(Z)V

    .line 736
    :cond_8a
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_93

    .line 737
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setSendMotionEventsEnabled(Z)V

    .line 739
    :cond_93
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceDetectsGestures(Z)V

    .line 740
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 741
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 744
    :cond_aa
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b8

    .line 745
    new-instance v1, Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 774
    :cond_b8
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->isAnyMagnificationEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 776
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    move-result-object v0

    .line 777
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 778
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 781
    :cond_cc
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_eb

    .line 782
    new-instance v0, Lcom/android/server/accessibility/MotionEventInjector;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 783
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/MotionEventInjector;-><init>(Landroid/os/Looper;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    .line 784
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 785
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_eb
    :goto_eb
    return-void
.end method

.method public enableFeaturesForDisplayIfInstalled(Landroid/view/Display;)V
    .registers 3

    .line 948
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_e

    .line 949
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    .line 950
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    :cond_e
    return-void
.end method

.method public final getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .registers 6

    .line 453
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    .line 454
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDisplayId()I

    move-result v0

    .line 455
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mGenericMotionEventStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

    if-nez v2, :cond_14

    .line 456
    new-instance v2, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

    invoke-direct {v2, p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;Lcom/android/server/accessibility/AccessibilityInputFilter-IA;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mGenericMotionEventStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

    .line 459
    :cond_14
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mGenericMotionEventStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 460
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mGenericMotionEventStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

    return-object p0

    :cond_22
    const/16 v2, 0x1002

    .line 462
    invoke-virtual {p1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 463
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez p1, :cond_3e

    .line 465
    new-instance p1, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;

    invoke-direct {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;-><init>()V

    .line 466
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3e
    return-object p1

    :cond_3f
    const/16 v2, 0x2002

    .line 470
    invoke-virtual {p1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 471
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez p1, :cond_5b

    .line 473
    new-instance p1, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;

    invoke-direct {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;-><init>()V

    .line 474
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5b
    return-object p1

    .line 478
    :cond_5c
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_76

    const/16 v0, 0x101

    .line 479
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 480
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez p1, :cond_73

    .line 481
    new-instance p1, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    invoke-direct {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 483
    :cond_73
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object p0

    :cond_76
    return-object v1
.end method

.method public getFullScreenMagnificationPointerMotionEventFilter()Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;
    .registers 1

    .line 987
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFullScreenMagnificationPointerMotionEventFilter:Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;

    return-object p0
.end method

.method public getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 7

    .line 590
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling motion event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", policyFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A11yInputFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_22
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 594
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    .line 596
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 597
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->isDisplayIdValid(I)Z

    move-result p0

    if-eqz p0, :cond_3d

    move v3, v1

    .line 596
    :cond_3d
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_48

    .line 599
    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 601
    :cond_48
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final isAnyFullScreenMagnificationEnabled()Z
    .registers 7

    .line 845
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->isAnyMagnificationEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 848
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_15
    if-ge v3, v2, :cond_2e

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/view/Display;

    .line 849
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationMode(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v1
.end method

.method public final isAnyMagnificationEnabled(I)Z
    .registers 2

    .line 0
    and-int/lit8 p0, p1, 0x20

    if-nez p0, :cond_13

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_13

    and-int/lit16 p0, p1, 0x1000

    if-nez p0, :cond_13

    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public final isDisplayIdValid(I)Z
    .registers 2

    .line 605
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    const/4 v0, 0x0

    .line 668
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 669
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_16

    .line 671
    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public notifyMagnificationShortcutTriggered(I)V
    .registers 3

    .line 681
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 682
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz p0, :cond_15

    .line 684
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->notifyShortcutTriggered()V

    :cond_15
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayAdded(Landroid/view/Display;)V
    .registers 2

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplayIfInstalled(Landroid/view/Display;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplayIfInstalled(I)V

    return-void
.end method

.method public onDoubleTap(I)V
    .registers 3

    .line 1442
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1443
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTap()V

    :cond_13
    return-void
.end method

.method public onDoubleTapAndHold(I)V
    .registers 3

    .line 1448
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1449
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTapAndHold()V

    :cond_13
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 8

    .line 363
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", policyFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    const-string v1, "A11yInputFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_26
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 369
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A11yInputFilter.onInputEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 380
    :cond_58
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInputDebugger:Lcom/android/server/accessibility/AccessibilityInputDebugger;

    if-eqz v0, :cond_5f

    .line 381
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityInputDebugger;->onReceiveEvent(Landroid/view/InputEvent;)V

    .line 383
    :cond_5f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onInputEventInternal(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public final onInputEventInternal(Landroid/view/InputEvent;I)V
    .registers 8

    .line 402
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v1, "A11yInputFilter"

    if-nez v0, :cond_26

    .line 403
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No mEventHandler for event "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_22
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 408
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    move-result-object v0

    if-nez v0, :cond_30

    .line 410
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 414
    :cond_30
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    .line 415
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDisplayId()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, p2

    if-nez v4, :cond_59

    .line 417
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz v0, :cond_55

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not processing event "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_55
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 424
    :cond_59
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->updateInputSource(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 425
    invoke-virtual {p0, v3, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->clearEventStreamHandler(II)V

    .line 428
    :cond_66
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->inputSourceValid()Z

    move-result v1

    if-nez v1, :cond_70

    .line 429
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 433
    :cond_70
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_84

    .line 434
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v1, v1, 0x1bdb

    if-eqz v1, :cond_80

    .line 435
    check-cast p1, Landroid/view/MotionEvent;

    .line 436
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V

    return-void

    .line 439
    :cond_80
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 441
    :cond_84
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_8d

    .line 442
    check-cast p1, Landroid/view/KeyEvent;

    .line 443
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V

    :cond_8d
    return-void
.end method

.method public onInstalled()V
    .registers 3

    .line 326
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 327
    const-string v0, "A11yInputFilter"

    const-string v1, "Accessibility input filter installed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    const/4 v1, 0x0

    .line 330
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures(I)V

    .line 331
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 332
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInputDebugger:Lcom/android/server/accessibility/AccessibilityInputDebugger;

    if-eqz v1, :cond_1c

    .line 333
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputDebugger;->clearCachedEvents()V

    .line 335
    :cond_1c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onInputFilterInstalled(Z)V

    .line 336
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 4

    .line 620
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-nez v0, :cond_d

    .line 621
    const-string p0, "A11yInputFilter"

    const-string/jumbo p1, "onKeyEvent called before input filter installed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 624
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 611
    iget-boolean p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-nez p2, :cond_d

    .line 612
    const-string p0, "A11yInputFilter"

    const-string/jumbo p1, "onMotionEvent called before input filter installed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 615
    :cond_d
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public onSendInputEventException(Ljava/lang/Exception;)V
    .registers 2

    .line 396
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInputDebugger:Lcom/android/server/accessibility/AccessibilityInputDebugger;

    if-eqz p0, :cond_7

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputDebugger;->onSendEventException(Ljava/lang/Exception;)V

    :cond_7
    return-void
.end method

.method public onUninstalled()V
    .registers 3

    .line 341
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 342
    const-string v0, "A11yInputFilter"

    const-string v1, "Accessibility input filter uninstalled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures(I)V

    .line 346
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInputDebugger:Lcom/android/server/accessibility/AccessibilityInputDebugger;

    if-eqz v1, :cond_18

    .line 347
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputDebugger;->clearCachedEvents()V

    .line 349
    :cond_18
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onInputFilterInstalled(Z)V

    .line 350
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    return-void
.end method

.method public final processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V
    .registers 6

    .line 573
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    const-string v0, "A11yInputFilter"

    if-nez p1, :cond_25

    .line 574
    sget-boolean p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz p1, :cond_21

    .line 575
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processKeyEvent: not processing: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_21
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 580
    :cond_25
    sget-boolean p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz p1, :cond_3e

    .line 581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processKeyEvent: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_3e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {p0, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public final processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 560
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessScroll()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 561
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 565
    :cond_12
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_19

    return-void

    .line 569
    :cond_19
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public refreshMagnificationMode(Landroid/view/Display;)V
    .registers 6

    .line 1127
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 1128
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 1129
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-nez v1, :cond_f

    goto :goto_1b

    .line 1133
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationMode(I)I

    move-result v3

    if-ne v2, v3, :cond_1c

    :goto_1b
    return-void

    .line 1136
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onDestroy()V

    .line 1137
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 1139
    invoke-virtual {v2, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    .line 1138
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    move-result-object p1

    .line 1140
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->switchEventStreamTransformation(ILcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 1142
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->isAnyFullScreenMagnificationEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->registerPointerMotionFilter(Z)V

    return-void
.end method

.method public registerPointerMotionFilter(Z)V
    .registers 3

    .line 1027
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFullScreenMagnificationPointerMotionEventFilter:Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-ne p1, v0, :cond_a

    goto :goto_14

    .line 1031
    :cond_a
    const-class v0, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerInternal;

    if-nez v0, :cond_15

    :goto_14
    return-void

    :cond_15
    if-eqz p1, :cond_1b

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->createFullScreenMagnificationPointerMotionEventFilter()V

    goto :goto_1e

    :cond_1b
    const/4 p1, 0x0

    .line 1039
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFullScreenMagnificationPointerMotionEventFilter:Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;

    .line 1042
    :goto_1e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFullScreenMagnificationPointerMotionEventFilter:Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerInternal;->registerAccessibilityPointerMotionFilter(Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;)V

    return-void
.end method

.method public requestDelegating(I)V
    .registers 3

    .line 1436
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1437
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->requestDelegating()V

    :cond_13
    return-void
.end method

.method public requestDragging(II)V
    .registers 4

    .line 1430
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1431
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->requestDragging(I)V

    :cond_13
    return-void
.end method

.method public requestTouchExploration(I)V
    .registers 3

    .line 1424
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1425
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->requestTouchExploration()V

    :cond_13
    return-void
.end method

.method public resetAllStreamState()V
    .registers 4

    .line 1089
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1091
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_1e

    .line 1092
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1095
    :cond_1e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz p0, :cond_25

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    :cond_25
    return-void
.end method

.method public resetServiceDetectsGestures()V
    .registers 1

    .line 1420
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public resetStreamStateForDisplay(I)V
    .registers 3

    .line 1101
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_12

    .line 1103
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 1104
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1107
    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_24

    .line 1109
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 1110
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_24
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .registers 4

    .line 388
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInputDebugger:Lcom/android/server/accessibility/AccessibilityInputDebugger;

    if-eqz v0, :cond_7

    .line 389
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityInputDebugger;->onSendEvent(Landroid/view/InputEvent;)V

    .line 391
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public setCombinedGenericMotionEventSources(I)V
    .registers 2

    .line 1349
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedGenericMotionEventSources:I

    return-void
.end method

.method public setCombinedMotionEventObservedSources(I)V
    .registers 2

    .line 1353
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedMotionEventObservedSources:I

    return-void
.end method

.method public setCursorFollowingMode(I)V
    .registers 2

    .line 1016
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFullScreenMagnificationPointerMotionEventFilter:Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;

    if-eqz p0, :cond_7

    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->setMode(I)V

    :cond_7
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 4

    if-eqz p2, :cond_15

    .line 1401
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1402
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setGestureDetectionPassthroughRegion(Landroid/graphics/Region;)V

    :cond_15
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setServiceDetectsGesturesEnabled(IZ)V
    .registers 4

    .line 1413
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1414
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceDetectsGestures(Z)V

    .line 1416
    :cond_13
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 4

    if-eqz p2, :cond_15

    .line 1407
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1408
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setTouchExplorationPassthroughRegion(Landroid/graphics/Region;)V

    :cond_15
    return-void
.end method

.method public setUserAndEnabledFeatures(II)V
    .registers 5

    .line 650
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUserAndEnabledFeatures(userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabledFeatures = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    const-string v1, "A11yInputFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_2c
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    if-ne v0, p2, :cond_35

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    if-ne v0, p1, :cond_35

    goto :goto_47

    .line 657
    :cond_35
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_3c

    .line 658
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures(I)V

    .line 660
    :cond_3c
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 661
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 662
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz p1, :cond_47

    .line 663
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    :cond_47
    :goto_47
    return-void
.end method

.method public final switchEventStreamTransformation(ILcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 5

    .line 1151
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v0, :cond_b

    goto :goto_32

    :cond_b
    if-ne v0, p2, :cond_1a

    .line 1156
    invoke-interface {p2}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 1157
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_32

    .line 1160
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object p0

    if-ne p0, p2, :cond_2d

    .line 1161
    invoke-interface {v0, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 1162
    invoke-interface {p2}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void

    .line 1165
    :cond_2d
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    goto :goto_1a

    :cond_32
    :goto_32
    return-void
.end method
