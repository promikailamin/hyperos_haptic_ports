.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# instance fields
.field public mAlwaysOnMagnificationEnabled:Z

.field public final mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplays:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mMagnificationConnectionStateSupplier:Ljava/util/function/Supplier;

.field public mMagnificationFollowKeyboardEnabled:Z

.field public mMagnificationFollowTypingEnabled:Z

.field public final mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

.field public final mMagnificationThumbnailFeatureFlag:Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

.field public final mMainThreadId:J

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field public final mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

.field public final mScrollerSupplier:Ljava/util/function/Supplier;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mThumbnailSupplier:Ljava/util/function/Supplier;

.field public final mTimeAnimatorSupplier:Ljava/util/function/Supplier;


# direct methods
.method public static synthetic $r8$lambda$7n_dN5UiM5usi00tn_UsqKkiJYM(IZLcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .registers 3

    .line 2076
    invoke-interface {p2, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onImeWindowVisibilityChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$K3AE0MkA_GL-moLGxj_xSVHI3_s(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)Lcom/android/server/accessibility/magnification/MagnificationThumbnail;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->lambda$new$1(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LzH4H8xN2RuqUsumAAtmD1fOgXg(Landroid/content/Context;)Landroid/widget/Scroller;
    .registers 2

    .line 1141
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$NbPaDhBfYnK_t-HFau9nBUtkYsk(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onMagnificationThumbnailFeatureFlagChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMagnificationConnectionStateSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationConnectionStateSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMagnificationInfoChangedCallbacks(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMainThreadId(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmScrollerSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScrollerSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThumbnailSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mThumbnailSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeAnimatorSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTimeAnimatorSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->logTrace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monScreenTurnedOff(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtraceEnabled(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->traceEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$munregisterCallbackLocked(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterCallbackLocked(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smtransformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)V
    .registers 18

    .line 1128
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 1132
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    const-class v1, Lcom/android/server/input/InputManagerInternal;

    .line 1133
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/input/InputManagerInternal;

    new-instance v5, Landroid/os/Handler;

    .line 1134
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/input/InputManagerInternal;Landroid/os/Handler;J)V

    new-instance v7, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {v7, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda3;-><init>()V

    const/4 v5, 0x0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object v1, v0

    move-object v0, p0

    .line 1128
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;",
            "Ljava/lang/Object;",
            "Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;",
            "Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/accessibility/magnification/MagnificationThumbnail;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "Landroid/widget/Scroller;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/animation/TimeAnimator;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowKeyboardEnabled:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mAlwaysOnMagnificationEnabled:Z

    .line 1158
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 1159
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 1160
    iput-object p7, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScrollerSupplier:Ljava/util/function/Supplier;

    .line 1161
    iput-object p8, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTimeAnimatorSupplier:Ljava/util/function/Supplier;

    .line 1162
    iput-object p9, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationConnectionStateSupplier:Ljava/util/function/Supplier;

    .line 1163
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p7

    iput-wide p7, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    .line 1164
    new-instance p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-direct {p2, p7, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    .line 1165
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->addInfoChangedCallback(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V

    .line 1166
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 1167
    const-class p2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1168
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

    invoke-direct {p2}, Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationThumbnailFeatureFlag:Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

    .line 1169
    new-instance p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    invoke-virtual {p2, p6, p3}, Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;->addOnChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    if-eqz p5, :cond_6a

    .line 1172
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mThumbnailSupplier:Ljava/util/function/Supplier;

    return-void

    .line 1174
    :cond_6a
    new-instance p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mThumbnailSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public static transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;
    .registers 1

    if-eqz p0, :cond_5

    .line 2573
    sget-object p0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addInfoChangedCallback(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .registers 3

    .line 2141
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2142
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2143
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getCenterX(I)F
    .registers 3

    .line 1532
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1533
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1535
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1537
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    move-result p0

    monitor-exit v0

    return p0

    .line 1538
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public getCenterY(I)F
    .registers 3

    .line 1655
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1656
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1658
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1660
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    move-result p0

    monitor-exit v0

    return p0

    .line 1661
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public getFullScreenMagnificationData(ILcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;)V
    .registers 4

    .line 1431
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1432
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_13

    .line 1434
    invoke-virtual {p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->reset()V

    goto :goto_52

    :catchall_11
    move-exception p0

    goto :goto_54

    .line 1436
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->-$$Nest$fputmActivated(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;Z)V

    .line 1437
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->-$$Nest$fputmScale(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V

    .line 1438
    invoke-static {p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->-$$Nest$fgetmBounds(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 1439
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetX()F

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->-$$Nest$fputmOffsetX(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V

    .line 1440
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetXLocked()F

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->-$$Nest$fputmMinOffsetX(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V

    .line 1441
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetXLocked()F

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->-$$Nest$fputmMaxOffsetX(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V

    .line 1442
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetY()F

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->-$$Nest$fputmOffsetY(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V

    .line 1443
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetYLocked()F

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->-$$Nest$fputmMinOffsetY(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V

    .line 1444
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetYLocked()F

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->-$$Nest$fputmMaxOffsetY(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V

    .line 1446
    :goto_52
    monitor-exit v0

    return-void

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_11

    throw p0
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .registers 3

    .line 1932
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1933
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, -0x1

    .line 1935
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1937
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result p0

    monitor-exit v0

    return p0

    .line 1938
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public getLastActivatedScale(I)F
    .registers 2

    .line 1504
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result p0

    return p0
.end method

.method public getMagnificationBounds(ILandroid/graphics/Rect;)V
    .registers 4

    .line 1459
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1460
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_11

    .line 1462
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_16

    .line 1464
    :cond_11
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 1465
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_f

    throw p0
.end method

.method public getMagnificationRegion(ILandroid/graphics/Region;)V
    .registers 4

    .line 1477
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1478
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_11

    .line 1480
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_16

    .line 1482
    :cond_11
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 1483
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_f

    throw p0
.end method

.method public getPersistedScale(I)F
    .registers 3

    .line 1966
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result p0

    const p1, 0x3fa66666    # 1.3f

    sget v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    invoke-static {p0, p1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public getScale(I)F
    .registers 3

    .line 1494
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1495
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_13

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1497
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    goto :goto_19

    .line 1499
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result p0

    monitor-exit v0

    return p0

    .line 1500
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_11

    throw p0
.end method

.method public imeRegionContains(IFF)Z
    .registers 5

    .line 1413
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1414
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1416
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1418
    :cond_12
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->imeRegionContains(FF)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1419
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public isActivated(I)Z
    .registers 3

    .line 1374
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1375
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1377
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1379
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1380
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public isAlwaysOnMagnificationEnabled()Z
    .registers 1

    .line 1311
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mAlwaysOnMagnificationEnabled:Z

    return p0
.end method

.method public isAtBottomEdge(IF)Z
    .registers 4

    .line 1621
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1622
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1624
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1626
    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtBottomEdge(F)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1627
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public isAtEdge(I)Z
    .registers 3

    .line 1549
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1550
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1552
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1554
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtEdge()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1555
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public isAtLeftEdge(IF)Z
    .registers 4

    .line 1567
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1568
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1570
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1572
    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtLeftEdge(F)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1573
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public isAtRightEdge(IF)Z
    .registers 4

    .line 1585
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1586
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1588
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1590
    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtRightEdge(F)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1591
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public isAtTopEdge(IF)Z
    .registers 4

    .line 1603
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1604
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1606
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1608
    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtTopEdge(F)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1609
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public isRegistered(I)Z
    .registers 3

    .line 1359
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1362
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1364
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1365
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public isZoomedOutFromService(I)Z
    .registers 3

    .line 1995
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1996
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-eqz p0, :cond_1c

    .line 1997
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1c

    .line 2000
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isZoomedOutFromService()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_1f

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    .line 1998
    monitor-exit v0

    return p0

    .line 2001
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1a

    throw p0
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)Lcom/android/server/accessibility/magnification/MagnificationThumbnail;
    .registers 5

    .line 1175
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationThumbnailFeatureFlag:Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;->isFeatureFlagEnabled()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 1176
    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 1177
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1178
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/os/Handler;

    .line 1179
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/os/Handler;)V

    return-object p0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final logTrace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2158
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowManagerInternal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x200

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public magnificationRegionContains(IFF)Z
    .registers 5

    .line 1394
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1395
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1397
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1399
    :cond_12
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->magnificationRegionContains(FF)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1400
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public notifyImeWindowVisibilityChanged(IZ)V
    .registers 5

    .line 2074
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2075
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda5;-><init>(IZ)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2078
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public notifyScaleForInput(IF)V
    .registers 3

    .line 2012
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getInputManager()Lcom/android/server/input/InputManagerInternal;

    move-result-object p0

    .line 2013
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->setAccessibilityPointerIconScaleFactor(IF)V

    return-void
.end method

.method public offsetMagnifiedRegion(IFFI)V
    .registers 6

    .line 1880
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1881
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_11

    .line 1883
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_16

    .line 1885
    :cond_11
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 1886
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_f

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 1344
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1345
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 1346
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final onMagnificationThumbnailFeatureFlagChanged()V
    .registers 4

    .line 1188
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1189
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 1190
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onMagnificationThumbnailFeatureFlagChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 1192
    :cond_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public final onMagnificationThumbnailFeatureFlagChanged(I)V
    .registers 3

    .line 1196
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1197
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_11

    .line 1199
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_16

    .line 1201
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onThumbnailFeatureFlagChanged()V

    .line 1202
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_f

    throw p0
.end method

.method public onRectangleOnScreenRequested(IIIIII)V
    .registers 8

    .line 1259
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_3
    invoke-virtual {p0, p6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->shouldFollow(I)Z

    move-result p6

    if-nez p6, :cond_d

    .line 1261
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_33

    .line 1263
    :cond_d
    iget-object p6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p1, :cond_19

    .line 1265
    monitor-exit v0

    return-void

    .line 1267
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result p6

    if-nez p6, :cond_21

    .line 1268
    monitor-exit v0

    return-void

    .line 1270
    :cond_21
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 1271
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 1272
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 1273
    monitor-exit v0

    return-void

    .line 1275
    :cond_2e
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onRectangleOnScreenRequested(IIII)V

    .line 1276
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_b

    throw p0
.end method

.method public final onScreenTurnedOff()V
    .registers 3

    .line 2082
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;-><init>()V

    .line 2083
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2082
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2084
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserContextChanged(I)V
    .registers 5

    .line 1322
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1324
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_30

    .line 1327
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isAlwaysOnMagnificationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1328
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111020c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1330
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->zoomOutFromService(I)V

    goto :goto_2e

    :cond_2a
    const/4 v1, 0x1

    .line 1333
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 1335
    :cond_2e
    :goto_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_b

    throw p0
.end method

.method public persistScale(I)V
    .registers 4

    .line 1949
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    .line 1950
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->notifyScaleForInput(IF)V

    const v1, 0x3fa66666    # 1.3f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_f

    return-void

    .line 1955
    :cond_f
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    return-void
.end method

.method public register(I)V
    .registers 5

    .line 1215
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez v1, :cond_15

    .line 1218
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;I)V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_2f

    .line 1220
    :cond_15
    :goto_15
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1221
    monitor-exit v0

    return-void

    .line 1223
    :cond_1d
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->register()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1224
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1225
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->registerIfNecessary()V

    .line 1227
    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_13

    throw p0
.end method

.method public removeInfoChangedCallback(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .registers 3

    .line 2147
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2148
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2149
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 4

    .line 1690
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1691
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1693
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 1695
    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1696
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public reset(IZ)Z
    .registers 3

    if-eqz p2, :cond_5

    .line 1675
    sget-object p2, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_6

    :cond_5
    const/4 p2, 0x0

    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public resetAllIfNeeded(I)V
    .registers 5

    .line 2022
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2023
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 2024
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 2026
    :cond_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public resetAllIfNeeded(Z)V
    .registers 5

    .line 2092
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2093
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 2094
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(IZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 2096
    :cond_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public resetIfNeeded(II)Z
    .registers 4

    .line 2055
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2056
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-eqz p0, :cond_22

    .line 2057
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 2058
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result p1

    if-eq p2, p1, :cond_1a

    goto :goto_22

    :cond_1a
    const/4 p1, 0x1

    .line 2061
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    .line 2062
    monitor-exit v0

    return p1

    :catchall_20
    move-exception p0

    goto :goto_25

    :cond_22
    :goto_22
    const/4 p0, 0x0

    .line 2059
    monitor-exit v0

    return p0

    .line 2063
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_20

    throw p0
.end method

.method public resetIfNeeded(IZ)Z
    .registers 4

    .line 2037
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2038
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-eqz p0, :cond_1c

    .line 2039
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1c

    .line 2042
    :cond_14
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    const/4 p0, 0x1

    .line 2043
    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_1f

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    .line 2040
    monitor-exit v0

    return p0

    .line 2044
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1a

    throw p0
.end method

.method public setAlwaysOnMagnificationEnabled(Z)V
    .registers 2

    .line 1307
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mAlwaysOnMagnificationEnabled:Z

    return-void
.end method

.method public setCenter(IFFZI)Z
    .registers 15

    .line 1749
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1750
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez v2, :cond_14

    const/4 p0, 0x0

    .line 1752
    monitor-exit v1

    return p0

    :catchall_11
    move-exception v0

    move-object p0, v0

    goto :goto_28

    :cond_14
    if-eqz p4, :cond_1a

    .line 1755
    sget-object p0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    :goto_18
    move-object v7, p0

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_18

    :goto_1c
    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v6, 0x1

    move v4, p2

    move v5, p3

    move v8, p5

    .line 1754
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 1756
    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_11

    throw p0
.end method

.method public setMagnificationFollowKeyboardEnabled(Z)V
    .registers 2

    .line 1299
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowKeyboardEnabled:Z

    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .registers 2

    .line 1291
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    return-void
.end method

.method public setOffset(IFFI)V
    .registers 6

    .line 1857
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1858
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_11

    .line 1860
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_16

    .line 1862
    :cond_11
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setOffset(FFI)V

    .line 1863
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_f

    throw p0
.end method

.method public setScale(IFFFZZI)Z
    .registers 10

    .line 1722
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1723
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p1, :cond_14

    const/4 p0, 0x0

    .line 1725
    monitor-exit v1

    return p0

    :catchall_11
    move-exception v0

    move-object p0, v0

    goto :goto_1a

    .line 1727
    :cond_14
    invoke-virtual/range {p1 .. p7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScale(FFFZZI)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 1728
    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_11

    throw p0
.end method

.method public setScaleAndCenter(IFFFZI)Z
    .registers 15

    const/4 v5, 0x0

    .line 1779
    invoke-static {p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p6

    .line 1778
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    return p0
.end method

.method public setScaleAndCenter(IFFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .registers 10

    .line 1834
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1835
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p1, :cond_14

    const/4 p0, 0x0

    .line 1837
    monitor-exit v1

    return p0

    :catchall_11
    move-exception v0

    move-object p0, v0

    goto :goto_1a

    .line 1839
    :cond_14
    invoke-virtual/range {p1 .. p7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 1841
    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_11

    throw p0
.end method

.method public setScaleAndCenter(IFFFZZI)Z
    .registers 8

    .line 1806
    invoke-static {p6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object p6

    .line 1805
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    return p0
.end method

.method public final shouldFollow(I)Z
    .registers 4

    .line 1281
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    if-nez p1, :cond_b

    :cond_a
    return v1

    .line 1286
    :cond_b
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowKeyboardEnabled:Z

    if-eqz p0, :cond_13

    const/4 p0, 0x3

    if-ne p1, p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2165
    const-string v1, "MagnificationController["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    const-string v1, ", mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2167
    const-string v1, ", mScaleProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2168
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final traceEnabled()Z
    .registers 3

    .line 2153
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object p0

    const-wide/16 v0, 0x200

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public unregister(I)V
    .registers 4

    .line 1237
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1238
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 1239
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public unregisterAll()V
    .registers 6

    .line 1246
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1249
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 1250
    :goto_b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1d

    .line 1251
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_1b
    move-exception p0

    goto :goto_1f

    .line 1253
    :cond_1d
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1b

    throw p0
.end method

.method public final unregisterCallbackLocked(IZ)V
    .registers 4

    if-eqz p2, :cond_7

    .line 2124
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_7
    const/4 p1, 0x0

    move p2, p1

    .line 2128
    :goto_9
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 2129
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 2130
    invoke-virtual {p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result p2

    if-eqz p2, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_23
    :goto_23
    if-nez p2, :cond_2a

    .line 2136
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->unregister()V

    :cond_2a
    return-void
.end method

.method public final unregisterLocked(IZ)V
    .registers 5

    .line 2100
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez v0, :cond_b

    goto :goto_18

    .line 2104
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_19

    if-eqz p2, :cond_18

    .line 2106
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_18
    :goto_18
    return-void

    .line 2110
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result p0

    if-nez p0, :cond_23

    .line 2111
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregister(Z)V

    return-void

    .line 2113
    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregisterPending(Z)V

    return-void
.end method

.method public final zoomOutFromService(I)V
    .registers 3

    .line 1980
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1981
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-eqz p0, :cond_1b

    .line 1982
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1b

    .line 1985
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->zoomOutFromService()V

    .line 1986
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 1983
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    .line 1986
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    throw p0
.end method
