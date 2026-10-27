.class public Lcom/android/server/accessibility/magnification/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;
.implements Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# static fields
.field public static final KEYBOARD_REPEAT_INTERVAL_MS:I = 0x3c


# instance fields
.field public final mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

.field public mActivePanDirections:[Z

.field public mActivePanDisplay:I

.field public mActiveZoomDirection:I

.field public mActiveZoomDisplay:I

.field public final mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

.field public mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public final mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

.field public final mHandler:Landroid/os/Handler;

.field public mInitialKeyboardRepeatIntervalMs:I

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field public final mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

.field public mLastMotionEventTriggeredUiChangeTime:J

.field public mLastPannedTime:J

.field public final mLock:Ljava/lang/Object;

.field public mMagnificationCapabilities:I

.field public mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

.field public final mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

.field public final mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;

.field public mRepeatKeysEnabled:Z

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field public final mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

.field public final mSupportWindowMagnification:Z

.field public mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

.field public final mTempPoint:Landroid/graphics/PointF;

.field public final mTransitionModes:Landroid/util/SparseArray;

.field public mUserId:I

.field public final mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;


# direct methods
.method public static synthetic $r8$lambda$-JjdcX8hsnJgy97WdKBAPK8G4lU(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->maybeContinueZoom()V

    return-void
.end method

.method public static synthetic $r8$lambda$R3k8N3qbC-xGQ3K5bFGkfo5pSVk(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->maybeContinuePan()V

    return-void
.end method

.method public static synthetic $r8$lambda$RK4GNS1IfZDRx9pPFHvEPIoaYjc(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Boolean;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->lambda$getFullScreenMagnificationController$1()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hDLBh-fi6zCVpWqZQdsbmMSqy4A(Lcom/android/server/accessibility/magnification/MagnificationController;IIZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationController;->lambda$transitionMagnificationConfigMode$0(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAms(Lcom/android/server/accessibility/magnification/MagnificationController;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetDisableMagnificationCallbackLocked(Lcom/android/server/accessibility/magnification/MagnificationController;ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTransitionState(Lcom/android/server/accessibility/magnification/MagnificationController;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMagnificationUIControls(Lcom/android/server/accessibility/magnification/MagnificationController;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;)V
    .registers 17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 362
    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;)V

    .line 363
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 364
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-object/from16 p1, p9

    .line 365
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;)V
    .registers 11

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 113
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v1, 0x4

    .line 124
    new-array v1, v1, [Z

    fill-array-data v1, :array_b8

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    const/4 v1, -0x1

    .line 125
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const-wide/16 v2, 0x0

    .line 129
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    .line 130
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMotionEventTriggeredUiChangeTime:J

    .line 131
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    .line 134
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    const/16 v1, 0x190

    .line 136
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    .line 141
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    .line 143
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    .line 146
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 147
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 149
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 151
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    .line 163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 337
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 338
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 339
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    .line 340
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 341
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 342
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    .line 343
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController-IA;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    .line 344
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 345
    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->setUiChangesForAccessibilityCallbacks(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;)V

    .line 346
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p4, "android.software.window_magnification"

    invoke-virtual {p2, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    .line 348
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationScaleStepProvider;

    invoke-direct {p2}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationScaleStepProvider;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

    .line 349
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;

    invoke-direct {p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;

    .line 351
    new-instance p2, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    invoke-direct {p2, p3}, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    .line 353
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 352
    invoke-virtual {p2, p5, p0}, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->addOnChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    return-void

    :array_b8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final assignMagnificationWindowManagerDelegateByMode(II)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    .line 788
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 789
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    .line 788
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_d
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1a

    .line 791
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 792
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    .line 791
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 794
    :cond_1a
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public final disableFullScreenMagnificationIfNeeded(I)V
    .registers 4

    .line 927
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 930
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    move-result v1

    if-lez v1, :cond_b

    goto :goto_12

    :cond_b
    const/4 v1, 0x1

    .line 931
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result p0

    if-eqz p0, :cond_16

    :goto_12
    const/4 p0, 0x0

    .line 933
    invoke-virtual {v0, p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    :cond_16
    return-void
.end method

.method public final disableWindowMagnificationIfNeeded(I)V
    .registers 4

    .line 970
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    const/4 v1, 0x2

    .line 971
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    .line 972
    invoke-virtual {v0, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z

    :cond_f
    return-void
.end method

.method public final getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_22

    .line 1205
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz p2, :cond_21

    .line 1206
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_21

    .line 1209
    :cond_f
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterX(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 1210
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterY(I)F

    move-result p1

    .line 1209
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3e

    :cond_21
    :goto_21
    return-object v1

    .line 1212
    :cond_22
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz p2, :cond_41

    .line 1213
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result p2

    if-nez p2, :cond_2d

    goto :goto_41

    .line 1216
    :cond_2d
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 1217
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result p1

    .line 1216
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 1219
    :goto_3e
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    return-object p0

    :cond_41
    :goto_41
    return-object v1
.end method

.method public final getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    .registers 2

    .line 1118
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    return-object p0
.end method

.method public getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .registers 11

    .line 1150
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1151
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v0, :cond_26

    .line 1152
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1154
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    iget-object v8, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)V

    iput-object v2, v6, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    goto :goto_27

    :catchall_23
    move-exception v0

    move-object p0, v0

    goto :goto_2b

    :cond_26
    move-object v6, p0

    .line 1162
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_23

    .line 1163
    iget-object p0, v6, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    return-object p0

    .line 1162
    :goto_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_23

    throw p0
.end method

.method public getInitialKeyboardRepeatIntervalMs()I
    .registers 1

    .line 535
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    return p0
.end method

.method public getLastMagnificationActivatedMode(I)I
    .registers 4

    .line 990
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 993
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .registers 9

    .line 1187
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1188
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-nez v0, :cond_1f

    .line 1189
    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1190
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    iput-object v2, v5, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    goto :goto_20

    :catchall_1c
    move-exception v0

    move-object p0, v0

    goto :goto_24

    :cond_1f
    move-object v5, p0

    .line 1193
    :goto_20
    iget-object p0, v5, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    monitor-exit v1

    return-object p0

    .line 1194
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_1c

    throw p0
.end method

.method public final getTargetModeScaleFromCurrentMagnification(II)F
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 757
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result p0

    return p0

    .line 759
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result p0

    return p0
.end method

.method public final handleUserInteractionChanged(IIZ)V
    .registers 10

    .line 539
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    goto :goto_19

    :cond_6
    if-nez p3, :cond_9

    goto :goto_1c

    .line 545
    :cond_9
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {p3}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 546
    iget-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMotionEventTriggeredUiChangeTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long p3, v2, v4

    if-gez p3, :cond_1a

    :goto_19
    return-void

    .line 550
    :cond_1a
    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMotionEventTriggeredUiChangeTime:J

    .line 553
    :goto_1c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void
.end method

.method public hasDisableMagnificationCallback(I)Z
    .registers 3

    .line 769
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    .line 773
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    goto :goto_11

    .line 775
    :cond_e
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    throw p0
.end method

.method public isActivated(II)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_17

    .line 1233
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1234
    :try_start_7
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez p0, :cond_f

    .line 1235
    monitor-exit v0

    return v1

    :catchall_d
    move-exception p0

    goto :goto_15

    .line 1237
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result p0

    .line 1238
    monitor-exit v0

    return p0

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_d

    throw p0

    :cond_17
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2d

    .line 1240
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1241
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-nez p0, :cond_25

    .line 1242
    monitor-exit p2

    return v1

    :catchall_23
    move-exception p0

    goto :goto_2b

    .line 1244
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p0

    .line 1245
    monitor-exit p2

    return p0

    :goto_2b
    monitor-exit p2
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_23

    throw p0

    :cond_2d
    return v1
.end method

.method public isAlwaysOnMagnificationFeatureFlagEnabled()Z
    .registers 1

    .line 1113
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->isFeatureFlagEnabled()Z

    move-result p0

    return p0
.end method

.method public isAnyMagnificationActivated(I)Z
    .registers 3

    .line 477
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 478
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public isFullScreenMagnificationControllerInitialized()Z
    .registers 2

    .line 1176
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 1178
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isMagnificationActivated(I)Z
    .registers 2

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isAnyMagnificationActivated(I)Z

    move-result p0

    return p0
.end method

.method public final isMagnificationConnectionManagerInitialized()Z
    .registers 2

    .line 1198
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1199
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 1200
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final isMagnificationSystemUIConnectionReady()Z
    .registers 2

    .line 1167
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->isMagnificationConnectionManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$getFullScreenMagnificationController$1()Ljava/lang/Boolean;
    .registers 1

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->isMagnificationSystemUIConnectionReady()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$transitionMagnificationConfigMode$0(IIZ)V
    .registers 4

    .line 696
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    return-void
.end method

.method public logMagnificationModeWithIme(I)V
    .registers 2

    .line 1017
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationModeWithImeOn(I)V

    return-void
.end method

.method public final logMagnificationModeWithImeOnIfNeeded(I)V
    .registers 6

    .line 1133
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1134
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1136
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_1c

    if-nez v1, :cond_15

    goto :goto_1c

    .line 1140
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    .line 1141
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithIme(I)V

    return-void

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 1138
    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit v0

    return-void

    .line 1140
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method public logMagnificationUsageState(IJF)V
    .registers 5

    .line 1006
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationUsageState(IJF)V

    return-void
.end method

.method public final maybeContinuePan()V
    .registers 5

    .line 500
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_2e

    .line 503
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    .line 504
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->panMagnificationByStep(I[Z)V

    .line 506
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz v0, :cond_2e

    .line 507
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;-><init>()V

    .line 508
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 507
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final maybeContinueZoom()V
    .registers 4

    .line 514
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 515
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->scaleMagnificationByStep(II)V

    .line 516
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz v0, :cond_1e

    .line 517
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;-><init>()V

    .line 518
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x3c

    .line 517
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1e
    return-void
.end method

.method public onAccessibilityActionPerformed(I)V
    .registers 3

    const/4 v0, 0x2

    .line 387
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void
.end method

.method public onChangeMagnificationMode(II)V
    .registers 3

    .line 857
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 1057
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1058
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_d

    .line 1059
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onDisplayRemoved(I)V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_2f

    .line 1061
    :cond_d
    :goto_d
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz v1, :cond_14

    .line 1062
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onDisplayRemoved(I)V

    .line 1064
    :cond_14
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1065
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1066
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1067
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1068
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_b

    .line 1069
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onDisplayRemoved(I)V

    return-void

    .line 1068
    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_b

    throw p0
.end method

.method public onFullScreenMagnificationActivationState(IZ)V
    .registers 8

    .line 939
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    .line 940
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onFullscreenMagnificationActivationChanged(IZ)Z

    const/4 v0, 0x1

    if-eqz p2, :cond_2b

    .line 943
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 944
    :try_start_d
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v2}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 945
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 947
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    monitor-exit p2
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_28

    .line 950
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 951
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableWindowMagnificationIfNeeded(I)V

    goto :goto_49

    :catchall_28
    move-exception p0

    .line 949
    :try_start_29
    monitor-exit p2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0

    .line 955
    :cond_2b
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x0

    .line 956
    :try_start_2f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 958
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 959
    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 960
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getLastActivatedScale(I)F

    move-result v3

    .line 961
    monitor-exit p2
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_4d

    .line 962
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJF)V

    .line 965
    :goto_49
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void

    :catchall_4d
    move-exception p0

    .line 961
    :try_start_4e
    monitor-exit p2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 7

    const/4 v0, 0x1

    .line 881
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 883
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 884
    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v2

    .line 883
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onUserMagnificationScaleChanged(IIF)Z

    .line 886
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    :cond_17
    return-void
.end method

.method public onImeWindowVisibilityChanged(IZ)V
    .registers 5

    .line 978
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 979
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 980
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    .line 981
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onImeWindowVisibilityChanged(IZ)V

    .line 982
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    return-void

    :catchall_14
    move-exception p0

    .line 980
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onKeyboardInteractionStop()V
    .registers 2

    const/4 v0, -0x1

    .line 461
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    .line 462
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const/4 v0, 0x4

    .line 463
    new-array v0, v0, [Z

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    return-void

    :array_e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public onMouseMove(II)V
    .registers 4

    const/4 v0, 0x1

    .line 402
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(IIZ)V

    return-void
.end method

.method public onPanMagnificationStart(II)V
    .registers 6

    .line 409
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 410
    :goto_9
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    .line 411
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    aput-boolean v2, v1, p2

    .line 413
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->panMagnificationByStep(I[Z)V

    if-nez v0, :cond_29

    .line 414
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz p1, :cond_29

    .line 415
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;-><init>()V

    .line 416
    invoke-static {p2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    int-to-long v0, p0

    .line 415
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_29
    return-void
.end method

.method public onPanMagnificationStop(I)V
    .registers 4

    .line 424
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 425
    aget-boolean p1, v0, v1

    if-nez p1, :cond_1b

    const/4 p1, 0x1

    aget-boolean p1, v0, p1

    if-nez p1, :cond_1b

    const/4 p1, 0x2

    aget-boolean p1, v0, p1

    if-nez p1, :cond_1b

    const/4 p1, 0x3

    aget-boolean p1, v0, p1

    if-nez p1, :cond_1b

    const/4 p1, -0x1

    .line 430
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    :cond_1b
    return-void
.end method

.method public onPerformScaleAction(IFZ)V
    .registers 13

    .line 370
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 371
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    xor-int/lit8 v6, p3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZZI)Z

    if-eqz p3, :cond_41

    .line 375
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->persistScale(I)V

    return-void

    :cond_25
    move v2, p1

    move v3, p2

    .line 377
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 378
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScale(IF)V

    if-eqz p3, :cond_41

    .line 380
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->persistScale(I)V

    :cond_41
    return-void
.end method

.method public onRectangleOnScreenRequested(IIIIII)V
    .registers 16

    .line 803
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;

    .line 805
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19

    if-eqz v2, :cond_18

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 808
    invoke-interface/range {v2 .. v8}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;->onRectangleOnScreenRequested(IIIIII)V

    :cond_18
    return-void

    :catchall_19
    move-exception v0

    move-object p0, v0

    .line 805
    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_19

    throw p0
.end method

.method public onRequestMagnificationSpec(II)V
    .registers 4

    .line 820
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x1

    .line 821
    :try_start_4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 822
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 823
    monitor-exit p2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_11

    if-eqz p0, :cond_10

    const/4 p2, 0x0

    .line 825
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z

    :cond_10
    return-void

    :catchall_11
    move-exception p0

    .line 823
    :try_start_12
    monitor-exit p2
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onScaleMagnificationStart(II)V
    .registers 5

    .line 437
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_22

    .line 442
    :cond_6
    iput p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    .line 443
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->scaleMagnificationByStep(II)V

    .line 445
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz p1, :cond_22

    .line 446
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;-><init>()V

    .line 447
    invoke-static {p2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    int-to-long v0, p0

    .line 446
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_22
    :goto_22
    return-void
.end method

.method public onScaleMagnificationStop(I)V
    .registers 3

    .line 454
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    if-ne p1, v0, :cond_7

    const/4 p1, -0x1

    .line 455
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    :cond_7
    return-void
.end method

.method public onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 7

    const/4 v0, 0x2

    .line 862
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 864
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 865
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v3

    .line 864
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onUserMagnificationScaleChanged(IIF)Z

    .line 867
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 868
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 870
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v1

    .line 869
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 871
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 872
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 873
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v0

    .line 874
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    :cond_55
    return-void
.end method

.method public onTouchInteractionEnd(II)V
    .registers 4

    const/4 v0, 0x0

    .line 397
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(IIZ)V

    return-void
.end method

.method public onTouchInteractionStart(II)V
    .registers 4

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(IIZ)V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 2

    .line 1076
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onUserRemoved(I)V

    return-void
.end method

.method public onWindowMagnificationActivationState(IZ)V
    .registers 8

    const/4 v0, 0x2

    if-eqz p2, :cond_24

    .line 832
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 833
    :try_start_6
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v2}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 834
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 836
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 838
    monitor-exit p2
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_21

    .line 839
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 840
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableFullScreenMagnificationIfNeeded(I)V

    goto :goto_42

    :catchall_21
    move-exception p0

    .line 838
    :try_start_22
    monitor-exit p2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0

    .line 844
    :cond_24
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x0

    .line 845
    :try_start_28
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 847
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 848
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getLastActivatedScale(I)F

    move-result v3

    .line 849
    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_28 .. :try_end_3f} :catchall_46

    .line 850
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJF)V

    .line 852
    :goto_42
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void

    :catchall_46
    move-exception p0

    .line 849
    :try_start_47
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final panMagnificationByStep(I[Z)V
    .registers 14

    .line 1285
    array-length v3, p2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_c

    .line 1286
    const-string v0, "MagnificationController"

    const-string v1, "Invalid number of panning directions"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1290
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v3

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v4

    if-nez v3, :cond_21

    if-nez v4, :cond_21

    goto :goto_32

    :cond_21
    const/4 v4, 0x0

    .line 1297
    aget-boolean v5, p2, v4

    const/4 v6, 0x1

    .line 1298
    aget-boolean v7, p2, v6

    add-int/2addr v5, v7

    const/4 v7, 0x2

    .line 1299
    aget-boolean v8, p2, v7

    add-int/2addr v5, v8

    const/4 v8, 0x3

    .line 1300
    aget-boolean v9, p2, v8

    add-int/2addr v5, v9

    if-nez v5, :cond_33

    :goto_32
    return-void

    :cond_33
    if-eqz v3, :cond_3e

    .line 1306
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v9

    goto :goto_46

    .line 1307
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v9

    .line 1308
    :goto_46
    iget-object v10, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;

    invoke-interface {v10, v9, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;->nextPanStep(FI)F

    move-result v10

    if-ne v5, v7, :cond_55

    const/high16 v5, 0x40000000    # 2.0f

    .line 1316
    invoke-static {v5}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v5

    div-float/2addr v10, v5

    .line 1323
    :cond_55
    aget-boolean v4, p2, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5d

    sub-float v4, v5, v10

    goto :goto_5e

    :cond_5d
    move v4, v5

    .line 1326
    :goto_5e
    aget-boolean v6, p2, v6

    if-eqz v6, :cond_63

    add-float/2addr v4, v10

    .line 1329
    :cond_63
    aget-boolean v6, p2, v7

    if-eqz v6, :cond_68

    sub-float/2addr v5, v10

    .line 1332
    :cond_68
    aget-boolean v1, p2, v8

    if-eqz v1, :cond_6d

    add-float/2addr v5, v10

    :cond_6d
    if-eqz v3, :cond_8e

    .line 1337
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v1

    .line 1338
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v3

    move v6, v1

    .line 1339
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    add-float/2addr v4, v6

    add-float/2addr v5, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v2, p1

    move v3, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    goto :goto_95

    .line 1342
    :cond_8e
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnification(IFF)V

    .line 1346
    :goto_95
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    return-void
.end method

.method public final scaleMagnificationByStep(II)V
    .registers 12

    .line 1257
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1258
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    .line 1260
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

    invoke-interface {v1, v0, p2}, Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;->nextScaleStep(FI)F

    move-result v4

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    goto :goto_28

    :cond_27
    move v3, p1

    .line 1267
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 1268
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result p1

    .line 1270
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;->nextScaleStep(FI)F

    move-result p1

    .line 1272
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScale(IF)V

    :cond_47
    return-void
.end method

.method public setAlwaysOnMagnificationEnabled(Z)V
    .registers 2

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setAlwaysOnMagnificationEnabled(Z)V

    return-void
.end method

.method public final setCurrentMagnificationModeAndSwitchDelegate(II)V
    .registers 4

    .line 781
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->assignMagnificationWindowManagerDelegateByMode(II)V

    return-void
.end method

.method public final setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .registers 3

    .line 1123
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMagnificationCapabilities(I)V
    .registers 2

    .line 1080
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    return-void
.end method

.method public setMagnificationFollowKeyboardEnabled(Z)V
    .registers 3

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setMagnificationFollowKeyboardEnabled(Z)V

    .line 1100
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setMagnificationFollowKeyboardEnabled(Z)V

    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .registers 3

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setMagnificationFollowTypingEnabled(Z)V

    .line 1090
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setMagnificationFollowTypingEnabled(Z)V

    return-void
.end method

.method public setRepeatKeysEnabled(Z)V
    .registers 2

    .line 526
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    return-void
.end method

.method public setRepeatKeysTimeoutMs(I)V
    .registers 2

    .line 530
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    return-void
.end method

.method public final setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    .line 744
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_f

    if-nez p1, :cond_f

    .line 746
    :try_start_7
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    goto :goto_18

    :catchall_d
    move-exception p0

    goto :goto_1a

    .line 748
    :cond_f
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 750
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_d

    throw p0
.end method

.method public final shouldNotifyMagnificationChange(II)Z
    .registers 8

    .line 903
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    .line 905
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v3

    goto :goto_14

    :catchall_11
    move-exception p0

    goto :goto_4a

    :cond_13
    move v1, v2

    .line 906
    :goto_14
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz v4, :cond_20

    .line 907
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_20

    move v4, v3

    goto :goto_21

    :cond_20
    move v4, v2

    .line 908
    :goto_21
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-ne p2, v3, :cond_2d

    if-nez v1, :cond_32

    :cond_2d
    const/4 p1, 0x2

    if-ne p2, p1, :cond_36

    if-eqz v4, :cond_36

    :cond_32
    if-nez p0, :cond_36

    .line 912
    monitor-exit v0

    return v3

    :cond_36
    if-nez v1, :cond_3e

    if-nez v4, :cond_3e

    if-nez p0, :cond_3e

    .line 916
    monitor-exit v0

    return v3

    :cond_3e
    if-eqz p0, :cond_48

    .line 918
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p2, p0, :cond_48

    .line 919
    monitor-exit v0

    return v3

    .line 921
    :cond_48
    monitor-exit v0

    return v2

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_11

    throw p0
.end method

.method public supportWindowMagnification()Z
    .registers 1

    .line 583
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    return p0
.end method

.method public transitionMagnificationConfigMode(ILandroid/accessibilityservice/MagnificationConfig;ZI)V
    .registers 17

    .line 665
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    :try_start_3
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v2

    .line 667
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->isActivated()Z

    move-result v0

    .line 668
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v3

    .line 669
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz v3, :cond_47

    .line 671
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 672
    iget v5, v3, Landroid/graphics/PointF;->x:F

    goto :goto_33

    :catchall_2b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ee

    .line 673
    :cond_2f
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v5

    .line 674
    :goto_33
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 675
    iget v3, v3, Landroid/graphics/PointF;->y:F

    goto :goto_44

    .line 676
    :cond_40
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v3

    .line 677
    :goto_44
    invoke-virtual {v4, v5, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 681
    :cond_47
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 683
    const-string v5, "MagnificationController"

    const-string v6, "Discard previous animation request"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->setExpiredAndRemoveFromListLocked()V

    .line 687
    :cond_57
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    .line 689
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v5

    .line 690
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 691
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getTargetModeScaleFromCurrentMagnification(II)F

    move-result p2

    :goto_6d
    move v7, p2

    goto :goto_74

    .line 692
    :cond_6f
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result p2
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_2b

    goto :goto_6d

    :goto_74
    const/4 p2, 0x0

    .line 694
    :try_start_75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    if-eqz p3, :cond_8b

    .line 696
    new-instance v6, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;II)V

    move-object v9, v6

    goto :goto_8c

    :catchall_89
    move-exception v0

    goto :goto_df

    :cond_8b
    move-object v9, p2

    :goto_8c
    const/4 v6, 0x2

    const/4 v8, 0x0

    if-ne v2, v6, :cond_a5

    .line 700
    invoke-virtual {v3, p1, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    if-eqz v0, :cond_a1

    .line 702
    iget v8, v4, Landroid/graphics/PointF;->x:F

    move-object v10, v9

    iget v9, v4, Landroid/graphics/PointF;->y:F

    move v6, p1

    move/from16 v11, p4

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    goto :goto_cf

    .line 706
    :cond_a1
    invoke-virtual {v5, p1, v8}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z

    goto :goto_cf

    :cond_a5
    move-object v10, v9

    const/4 v9, 0x1

    if-ne v2, v9, :cond_cf

    .line 709
    invoke-virtual {v5, p1, v8, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    if-eqz v0, :cond_c6

    .line 712
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_b7

    .line 713
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 715
    :cond_b7
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v0, v4, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    move v4, p1

    move v5, v7

    move-object v9, v10

    move/from16 v10, p4

    move v7, v0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    goto :goto_cf

    .line 719
    :cond_c6
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 720
    invoke-virtual {v3, p1, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z
    :try_end_cf
    .catchall {:try_start_75 .. :try_end_cf} :catchall_89

    :cond_cf
    :goto_cf
    if-nez p3, :cond_d6

    .line 726
    :try_start_d1
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p3, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 729
    :cond_d6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 731
    monitor-exit v1

    return-void

    :goto_df
    if-nez p3, :cond_e6

    .line 726
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p3, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 729
    :cond_e6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 730
    throw v0

    .line 731
    :goto_ee
    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_d1 .. :try_end_ef} :catchall_2b

    throw p0
.end method

.method public transitionMagnificationModeLocked(IILcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;)V
    .registers 14

    .line 597
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 598
    invoke-interface {p3, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    return-void

    .line 602
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v8

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v0

    if-nez v8, :cond_1b

    if-nez v0, :cond_1b

    .line 607
    invoke-interface {p3, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    return-void

    .line 611
    :cond_1b
    const-string v2, "MagnificationController"

    if-eqz v0, :cond_2f

    .line 612
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->-$$Nest$fgetmCurrentMode(Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)I

    move-result p0

    if-ne p0, p2, :cond_29

    .line 613
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->restoreToCurrentMagnificationMode()V

    return-void

    .line 616
    :cond_29
    const-string p0, "discard duplicate request"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    if-nez v8, :cond_3a

    .line 622
    const-string p0, "Invalid center, ignore it"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-interface {p3, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    return-void

    .line 627
    :cond_3a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 630
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 632
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    .line 633
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getTargetModeScaleFromCurrentMagnification(II)F

    move-result v7

    .line 634
    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    const/4 v9, 0x1

    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;IIFLandroid/graphics/PointF;Z)V

    .line 638
    invoke-virtual {v3, v5, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    const/4 p0, 0x2

    if-ne v6, p0, :cond_65

    .line 641
    invoke-virtual {v0, v5, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    return-void

    :cond_65
    const/4 p0, 0x0

    .line 643
    invoke-virtual {v1, v5, p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    return-void
.end method

.method public final updateMagnificationUIControls(II)V
    .registers 9

    .line 557
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    .line 560
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v0, :cond_14

    .line 561
    :try_start_c
    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    if-ne v5, v4, :cond_14

    move v5, v3

    goto :goto_15

    :catchall_12
    move-exception p0

    goto :goto_3b

    :cond_14
    move v5, v2

    :goto_15
    if-eqz v0, :cond_1f

    .line 563
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    if-eq v0, v4, :cond_1e

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1f

    :cond_1e
    move v2, v3

    .line 566
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_12

    if-eqz v5, :cond_2a

    .line 569
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->showMagnificationButton(II)Z

    goto :goto_31

    .line 571
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationButton(I)Z

    :goto_31
    if-nez v2, :cond_3a

    .line 577
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationSettingsPanel(I)Z

    :cond_3a
    return-void

    .line 566
    :goto_3b
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_12

    throw p0
.end method

.method public updateUserIdIfNeeded(I)V
    .registers 6

    .line 1027
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    if-ne v0, p1, :cond_5

    goto :goto_33

    .line 1030
    :cond_5
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 1033
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1034
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 1035
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 1036
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1037
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 1038
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 1039
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1040
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_34

    .line 1042
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onUserChanged(I)V

    if-eqz v1, :cond_2e

    const/4 p0, 0x0

    .line 1044
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(Z)V

    :cond_2e
    if-eqz v2, :cond_33

    .line 1047
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableAllWindowMagnifiers()V

    :cond_33
    :goto_33
    return-void

    :catchall_34
    move-exception p0

    .line 1040
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public zoomInFullScreenMagnification(I)V
    .registers 10

    .line 487
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    move-result v3

    .line 488
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    return-void
.end method
