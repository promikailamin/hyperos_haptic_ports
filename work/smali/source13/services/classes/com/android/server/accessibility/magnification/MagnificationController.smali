.class public Lcom/android/server/accessibility/magnification/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;
.implements Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;,
        Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MagnificationController"


# instance fields
.field private final mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

.field private mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field private final mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

.field private final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field private final mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationCapabilities:I

.field private final mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field private final mSupportWindowMagnification:Z

.field private final mTempPoint:Landroid/graphics/PointF;

.field private final mTransitionModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I

.field private mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

.field private final mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAms(Lcom/android/server/accessibility/magnification/MagnificationController;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetDisableMagnificationCallbackLocked(Lcom/android/server/accessibility/magnification/MagnificationController;ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTransitionState(Lcom/android/server/accessibility/magnification/MagnificationController;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMagnificationButton(Lcom/android/server/accessibility/magnification/MagnificationController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .registers 7
    .param p1, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "fullScreenMagnificationController"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .param p5, "windowMagnificationManager"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .param p6, "scaleProvider"    # Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 159
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    .line 160
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 161
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .registers 7
    .param p1, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "scaleProvider"    # Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 102
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    .line 104
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 108
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 110
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 112
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 144
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 145
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 146
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    .line 147
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 148
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 149
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->setUiChangesForAccessibilityCallbacks(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;)V

    .line 150
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.window_magnification"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    .line 152
    return-void
.end method

.method private assignMagnificationWindowManagerDelegateByMode(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 386
    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    .line 387
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 388
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    .line 387
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    .line 389
    :cond_d
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1a

    .line 390
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    .line 392
    :cond_1a
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 394
    :goto_1f
    return-void
.end method

.method private disableFullScreenMagnificationIfNeeded(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 509
    nop

    .line 510
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 512
    .local v0, "fullScreenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    nop

    .line 513
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    .line 514
    .local v1, "isMagnifyByExternalRequest":Z
    :goto_11
    if-nez v1, :cond_19

    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 516
    :cond_19
    invoke-virtual {v0, p1, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 518
    :cond_1c
    return-void
.end method

.method private disableWindowMagnificationIfNeeded(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 546
    nop

    .line 547
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    .line 548
    .local v0, "windowMagnificationManager":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 549
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    .line 551
    :cond_10
    return-void
.end method

.method private getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "targetMode"    # I

    .line 739
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_22

    .line 740
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz v1, :cond_21

    .line 741
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_21

    .line 744
    :cond_f
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterX(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 745
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterY(I)F

    move-result v2

    .line 744
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3e

    .line 742
    :cond_21
    :goto_21
    return-object v0

    .line 747
    :cond_22
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_41

    .line 748
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_41

    .line 751
    :cond_2d
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 752
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v2

    .line 751
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 754
    :goto_3e
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    return-object v0

    .line 749
    :cond_41
    :goto_41
    return-object v0
.end method

.method private getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    .registers 3
    .param p1, "displayId"    # I

    .line 671
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    return-object v0
.end method

.method private getTargetModeScaleFromCurrentMagnification(II)F
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "targetMode"    # I

    .line 355
    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 356
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    return v0

    .line 358
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result v0

    return v0
.end method

.method private handleUserInteractionChanged(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 186
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 187
    return-void

    .line 189
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 190
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->showMagnificationButton(II)Z

    .line 192
    :cond_13
    return-void
.end method

.method private logMagnificationModeWithImeOnIfNeeded(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 686
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 689
    .local v1, "currentActivateMode":I
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-nez v1, :cond_15

    goto :goto_1a

    .line 693
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1c

    .line 694
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithIme(I)V

    .line 695
    return-void

    .line 691
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v0

    return-void

    .line 693
    .end local v1    # "currentActivateMode":I
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private setCurrentMagnificationModeAndSwitchDelegate(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 380
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->assignMagnificationWindowManagerDelegateByMode(II)V

    .line 382
    return-void
.end method

.method private setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "callback"    # Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    .line 676
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 681
    return-void
.end method

.method private setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "displayId"    # Ljava/lang/Integer;
    .param p2, "targetMode"    # Ljava/lang/Integer;

    .line 343
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    if-nez p2, :cond_d

    if-nez p1, :cond_d

    .line 345
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_16

    .line 347
    :cond_d
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    :goto_16
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private shouldNotifyMagnificationChange(II)Z
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "changeMode"    # I

    .line 486
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    .line 488
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v2

    .line 489
    .local v1, "fullScreenMagnifying":Z
    :goto_12
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz v4, :cond_1e

    .line 490
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v3

    goto :goto_1f

    :cond_1e
    move v4, v2

    .line 491
    .local v4, "windowEnabled":Z
    :goto_1f
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 492
    .local v5, "transitionMode":Ljava/lang/Integer;
    if-ne p2, v3, :cond_2b

    if-nez v1, :cond_30

    :cond_2b
    const/4 v6, 0x2

    if-ne p2, v6, :cond_34

    if-eqz v4, :cond_34

    :cond_30
    if-nez v5, :cond_34

    .line 495
    monitor-exit v0

    return v3

    .line 497
    :cond_34
    if-nez v1, :cond_3c

    if-nez v4, :cond_3c

    if-nez v5, :cond_3c

    .line 499
    monitor-exit v0

    return v3

    .line 501
    :cond_3c
    if-eqz v5, :cond_46

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne p2, v6, :cond_46

    .line 502
    monitor-exit v0

    return v3

    .line 504
    .end local v1    # "fullScreenMagnifying":Z
    .end local v4    # "windowEnabled":Z
    .end local v5    # "transitionMode":Ljava/lang/Integer;
    :cond_46
    monitor-exit v0

    .line 505
    return v2

    .line 504
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private updateMagnificationButton(II)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    .line 197
    .local v0, "isActivated":Z
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    if-eqz v0, :cond_12

    :try_start_9
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    .line 200
    :catchall_10
    move-exception v2

    goto :goto_26

    .line 198
    :cond_12
    const/4 v2, 0x0

    .line 200
    .local v2, "showButton":Z
    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_10

    .line 201
    if-eqz v2, :cond_1e

    .line 202
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->showMagnificationButton(II)Z

    goto :goto_25

    .line 204
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->removeMagnificationButton(I)Z

    .line 206
    :goto_25
    return-void

    .line 200
    .end local v2    # "showButton":Z
    :goto_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_10

    throw v2
.end method


# virtual methods
.method public getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .registers 9

    .line 703
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v1, :cond_1c

    .line 705
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 706
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    move-object v2, v1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 708
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_20

    .line 709
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    return-object v0

    .line 708
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public getLastMagnificationActivatedMode(I)I
    .registers 5
    .param p1, "displayId"    # I

    .line 567
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 570
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .registers 9

    .line 728
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-nez v1, :cond_1c

    .line 730
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 731
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 734
    :cond_1c
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    monitor-exit v0

    return-object v1

    .line 735
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public hasDisableMagnificationCallback(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 368
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    nop

    .line 370
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v1

    .line 371
    .local v1, "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    if-eqz v1, :cond_d

    .line 372
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 374
    .end local v1    # "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    :cond_d
    monitor-exit v0

    .line 375
    const/4 v0, 0x0

    return v0

    .line 374
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isActivated(II)Z
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "isActivated":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_26

    .line 768
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 769
    :try_start_8
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v4, :cond_e

    .line 770
    monitor-exit v3

    return v2

    .line 772
    :cond_e
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 773
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isForceShowMagnifiableBounds(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_1f

    :cond_1d
    move v1, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    nop

    :goto_20
    move v0, v1

    .line 775
    monitor-exit v3

    goto :goto_3c

    :catchall_23
    move-exception v1

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v1

    .line 776
    :cond_26
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3c

    .line 777
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 778
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-nez v3, :cond_32

    .line 779
    monitor-exit v1

    return v2

    .line 781
    :cond_32
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v2

    move v0, v2

    .line 782
    monitor-exit v1

    goto :goto_3c

    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_39

    throw v2

    .line 784
    :cond_3c
    :goto_3c
    return v0
.end method

.method public isFullScreenMagnificationControllerInitialized()Z
    .registers 3

    .line 717
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 719
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public logMagnificationModeWithIme(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 593
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationModeWithImeOn(I)V

    .line 594
    return-void
.end method

.method public logMagnificationUsageState(IJ)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "duration"    # J

    .line 582
    invoke-static {p1, p2, p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationUsageState(IJ)V

    .line 583
    return-void
.end method

.method public onAccessibilityActionPerformed(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 172
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    .line 173
    return-void
.end method

.method public onChangeMagnificationMode(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "magnificationMode"    # I

    .line 450
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 451
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 633
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_a

    .line 635
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onDisplayRemoved(I)V

    .line 637
    :cond_a
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz v1, :cond_11

    .line 638
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->onDisplayRemoved(I)V

    .line 640
    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 641
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 642
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 643
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 644
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2c

    .line 645
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onDisplayRemoved(I)V

    .line 646
    return-void

    .line 644
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public onFullScreenMagnificationActivationState(IZ)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "activated"    # Z

    .line 522
    const/4 v0, 0x1

    if-eqz p2, :cond_22

    .line 523
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 524
    :try_start_6
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 525
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 527
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 529
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1f

    .line 530
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 531
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableWindowMagnificationIfNeeded(I)V

    goto :goto_38

    .line 529
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 534
    :cond_22
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 535
    const/4 v2, 0x0

    :try_start_26
    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 537
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 538
    invoke-virtual {v4, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 539
    .local v2, "duration":J
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_3c

    .line 540
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJ)V

    .line 542
    .end local v2    # "duration":J
    :goto_38
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    .line 543
    return-void

    .line 539
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 468
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 469
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 471
    :cond_c
    return-void
.end method

.method public onImeWindowVisibilityChanged(IZ)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "shown"    # Z

    .line 555
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 557
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    .line 558
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->onImeWindowVisibilityChanged(IZ)V

    .line 559
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 560
    return-void

    .line 557
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onPerformScaleAction(IF)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 166
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setScale(IF)V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->persistScale(I)V

    .line 168
    return-void
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 401
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;

    .line 403
    .local v1, "delegate":Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_18

    .line 404
    if-eqz v1, :cond_17

    .line 405
    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;->onRectangleOnScreenRequested(IIIII)V

    .line 407
    :cond_17
    return-void

    .line 403
    .end local v1    # "delegate":Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onRequestMagnificationSpec(II)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "serviceId"    # I

    .line 412
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    if-nez p2, :cond_7

    .line 414
    :try_start_5
    monitor-exit v0

    return-void

    .line 416
    :cond_7
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    .line 417
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-object v2, v1

    .line 418
    .local v2, "windowMagnificationManager":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    .line 419
    if-eqz v2, :cond_15

    .line 420
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    .line 422
    :cond_15
    return-void

    .line 418
    .end local v2    # "windowMagnificationManager":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 455
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 456
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 457
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 458
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 459
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 460
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v0

    .line 461
    .local v0, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 463
    .end local v0    # "config":Landroid/accessibilityservice/MagnificationConfig;
    :cond_3a
    return-void
.end method

.method public onTouchInteractionEnd(II)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    .line 183
    return-void
.end method

.method public onTouchInteractionStart(II)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    .line 178
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 652
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onUserRemoved(I)V

    .line 653
    return-void
.end method

.method public onWindowMagnificationActivationState(IZ)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "activated"    # Z

    .line 426
    const/4 v0, 0x2

    if-eqz p2, :cond_22

    .line 427
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_6
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 429
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 431
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 433
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1f

    .line 434
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 435
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableFullScreenMagnificationIfNeeded(I)V

    goto :goto_38

    .line 433
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 438
    :cond_22
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    const/4 v2, 0x0

    :try_start_26
    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 442
    .local v2, "duration":J
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_3c

    .line 443
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJ)V

    .line 445
    .end local v2    # "duration":J
    :goto_38
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    .line 446
    return-void

    .line 442
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public setMagnificationCapabilities(I)V
    .registers 2
    .param p1, "capabilities"    # I

    .line 656
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 657
    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 665
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setMagnificationFollowTypingEnabled(Z)V

    .line 666
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setMagnificationFollowTypingEnabled(Z)V

    .line 667
    return-void
.end method

.method public supportWindowMagnification()Z
    .registers 2

    .line 210
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    return v0
.end method

.method public transitionMagnificationConfigMode(ILandroid/accessibilityservice/MagnificationConfig;ZI)V
    .registers 24
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/accessibilityservice/MagnificationConfig;
    .param p3, "animate"    # Z
    .param p4, "id"    # I

    .line 283
    move-object/from16 v1, p0

    move/from16 v12, p1

    iget-object v13, v1, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 284
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v0

    move v14, v0

    .line 285
    .local v14, "targetMode":I
    invoke-direct {v1, v12, v14}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v0

    move-object v15, v0

    .line 286
    .local v15, "currentCenter":Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v11, v0

    .line 287
    .local v11, "magnificationCenter":Landroid/graphics/PointF;
    if-eqz v15, :cond_48

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 289
    iget v0, v15, Landroid/graphics/PointF;->x:F

    goto :goto_32

    .line 290
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v0

    :goto_32
    nop

    .line 291
    .local v0, "centerX":F
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 292
    iget v2, v15, Landroid/graphics/PointF;->y:F

    goto :goto_44

    .line 293
    :cond_40
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v2

    :goto_44
    nop

    .line 294
    .local v2, "centerY":F
    invoke-virtual {v11, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 297
    .end local v0    # "centerX":F
    .end local v2    # "centerY":F
    :cond_48
    nop

    .line 298
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v0

    move-object/from16 v16, v0

    .line 299
    .local v16, "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    if-eqz v16, :cond_5b

    .line 300
    const-string v0, "MagnificationController"

    const-string v2, "Discard previous animation request"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->setExpiredAndRemoveFromListLocked()V

    .line 303
    :cond_5b
    nop

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    move-object v10, v0

    .line 305
    .local v10, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    move-object v9, v0

    .line 306
    .local v9, "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 307
    invoke-direct {v1, v12, v14}, Lcom/android/server/accessibility/magnification/MagnificationController;->getTargetModeScaleFromCurrentMagnification(II)F

    move-result v0

    move v4, v0

    goto :goto_7b

    .line 308
    :cond_76
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v0
    :try_end_7a
    .catchall {:try_start_7 .. :try_end_7a} :catchall_113

    move v4, v0

    :goto_7b
    nop

    .line 310
    .local v4, "targetScale":F
    const/4 v8, 0x0

    :try_start_7d
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_88
    .catchall {:try_start_7d .. :try_end_88} :catchall_102

    .line 312
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-ne v14, v0, :cond_be

    .line 313
    :try_start_8c
    invoke-virtual {v10, v12, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 314
    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v6, v11, Landroid/graphics/PointF;->y:F
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_b4

    .line 316
    if-eqz p3, :cond_a3

    :try_start_95
    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;
    :try_end_97
    .catchall {:try_start_95 .. :try_end_97} :catchall_99

    move-object v7, v0

    goto :goto_a4

    .line 328
    :catchall_99
    move-exception v0

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v18, v11

    move-object/from16 v17, v15

    move-object v15, v8

    goto/16 :goto_10a

    .line 316
    :cond_a3
    move-object v7, v8

    .line 314
    :goto_a4
    move-object v2, v9

    move/from16 v3, p1

    move-object/from16 v17, v15

    move-object v15, v8

    .end local v15    # "currentCenter":Landroid/graphics/PointF;
    .local v17, "currentCenter":Landroid/graphics/PointF;
    move/from16 v8, p4

    :try_start_ac
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_d1

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v18, v11

    goto :goto_f8

    .line 328
    .end local v17    # "currentCenter":Landroid/graphics/PointF;
    .restart local v15    # "currentCenter":Landroid/graphics/PointF;
    :catchall_b4
    move-exception v0

    move-object/from16 v17, v15

    move-object v15, v8

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v18, v11

    .end local v15    # "currentCenter":Landroid/graphics/PointF;
    .restart local v17    # "currentCenter":Landroid/graphics/PointF;
    goto/16 :goto_10a

    .line 317
    .end local v17    # "currentCenter":Landroid/graphics/PointF;
    .restart local v15    # "currentCenter":Landroid/graphics/PointF;
    :cond_be
    move-object/from16 v17, v15

    move-object v15, v8

    .end local v15    # "currentCenter":Landroid/graphics/PointF;
    .restart local v17    # "currentCenter":Landroid/graphics/PointF;
    const/4 v0, 0x1

    if-ne v14, v0, :cond_f4

    .line 318
    :try_start_c4
    invoke-virtual {v9, v12, v2, v15}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 319
    invoke-virtual {v10, v12}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v0
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_ee

    if-nez v0, :cond_d7

    .line 320
    :try_start_cd
    invoke-virtual {v10, v12}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_d1

    goto :goto_d7

    .line 328
    :catchall_d1
    move-exception v0

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v18, v11

    goto :goto_10a

    .line 322
    :cond_d7
    :goto_d7
    :try_start_d7
    iget v8, v11, Landroid/graphics/PointF;->x:F

    iget v0, v11, Landroid/graphics/PointF;->y:F
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_ee

    move-object v5, v10

    move/from16 v6, p1

    move v7, v4

    move-object v2, v9

    .end local v9    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .local v2, "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    move v9, v0

    move-object v3, v10

    .end local v10    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .local v3, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    move/from16 v10, p3

    move-object/from16 v18, v11

    .end local v11    # "magnificationCenter":Landroid/graphics/PointF;
    .local v18, "magnificationCenter":Landroid/graphics/PointF;
    move/from16 v11, p4

    :try_start_e8
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_f8

    .line 328
    :catchall_ec
    move-exception v0

    goto :goto_10a

    .end local v2    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .end local v3    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v18    # "magnificationCenter":Landroid/graphics/PointF;
    .restart local v9    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .restart local v10    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .restart local v11    # "magnificationCenter":Landroid/graphics/PointF;
    :catchall_ee
    move-exception v0

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v18, v11

    .end local v9    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .end local v10    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v11    # "magnificationCenter":Landroid/graphics/PointF;
    .restart local v2    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .restart local v3    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .restart local v18    # "magnificationCenter":Landroid/graphics/PointF;
    goto :goto_10a

    .line 317
    .end local v2    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .end local v3    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v18    # "magnificationCenter":Landroid/graphics/PointF;
    .restart local v9    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .restart local v10    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .restart local v11    # "magnificationCenter":Landroid/graphics/PointF;
    :cond_f4
    move-object v2, v9

    move-object v3, v10

    move-object/from16 v18, v11

    .line 328
    .end local v9    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .end local v10    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v11    # "magnificationCenter":Landroid/graphics/PointF;
    .restart local v2    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .restart local v3    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .restart local v18    # "magnificationCenter":Landroid/graphics/PointF;
    :goto_f8
    :try_start_f8
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v15}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 329
    nop

    .line 330
    .end local v2    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .end local v3    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v4    # "targetScale":F
    .end local v14    # "targetMode":I
    .end local v16    # "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    .end local v17    # "currentCenter":Landroid/graphics/PointF;
    .end local v18    # "magnificationCenter":Landroid/graphics/PointF;
    monitor-exit v13

    .line 331
    return-void

    .line 328
    .restart local v4    # "targetScale":F
    .restart local v9    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .restart local v10    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .restart local v11    # "magnificationCenter":Landroid/graphics/PointF;
    .restart local v14    # "targetMode":I
    .restart local v15    # "currentCenter":Landroid/graphics/PointF;
    .restart local v16    # "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    :catchall_102
    move-exception v0

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v18, v11

    move-object/from16 v17, v15

    move-object v15, v8

    .end local v9    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .end local v10    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v11    # "magnificationCenter":Landroid/graphics/PointF;
    .end local v15    # "currentCenter":Landroid/graphics/PointF;
    .restart local v2    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .restart local v3    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .restart local v17    # "currentCenter":Landroid/graphics/PointF;
    .restart local v18    # "magnificationCenter":Landroid/graphics/PointF;
    :goto_10a
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5, v15}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 329
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/magnification/MagnificationController;
    .end local p1    # "displayId":I
    .end local p2    # "config":Landroid/accessibilityservice/MagnificationConfig;
    .end local p3    # "animate":Z
    .end local p4    # "id":I
    throw v0

    .line 330
    .end local v2    # "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .end local v3    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v4    # "targetScale":F
    .end local v14    # "targetMode":I
    .end local v16    # "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    .end local v17    # "currentCenter":Landroid/graphics/PointF;
    .end local v18    # "magnificationCenter":Landroid/graphics/PointF;
    .restart local p0    # "this":Lcom/android/server/accessibility/magnification/MagnificationController;
    .restart local p1    # "displayId":I
    .restart local p2    # "config":Landroid/accessibilityservice/MagnificationConfig;
    .restart local p3    # "animate":Z
    .restart local p4    # "id":I
    :catchall_113
    move-exception v0

    monitor-exit v13
    :try_end_115
    .catchall {:try_start_f8 .. :try_end_115} :catchall_113

    throw v0
.end method

.method public transitionMagnificationModeLocked(IILcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;)V
    .registers 22
    .param p1, "displayId"    # I
    .param p2, "targetMode"    # I
    .param p3, "transitionCallBack"    # Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;

    .line 223
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v12

    .line 224
    .local v12, "currentCenter":Landroid/graphics/PointF;
    nop

    .line 225
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v13

    .line 227
    .local v13, "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    const/4 v0, 0x1

    if-nez v12, :cond_1a

    if-nez v13, :cond_1a

    .line 228
    invoke-interface {v11, v9, v0}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    .line 229
    return-void

    .line 232
    :cond_1a
    const-string v1, "MagnificationController"

    if-eqz v13, :cond_2e

    .line 233
    invoke-static {v13}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->-$$Nest$fgetmCurrentMode(Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)I

    move-result v0

    if-ne v0, v10, :cond_28

    .line 234
    invoke-virtual {v13}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->restoreToCurrentMagnificationMode()V

    .line 235
    return-void

    .line 237
    :cond_28
    const-string v0, "discard duplicate request"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 242
    :cond_2e
    if-nez v12, :cond_39

    .line 243
    const-string v2, "Invalid center, ignore it"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-interface {v11, v9, v0}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    .line 245
    return-void

    .line 248
    :cond_39
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 250
    nop

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v14

    .line 252
    .local v14, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v15

    .line 253
    .local v15, "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getTargetModeScaleFromCurrentMagnification(II)F

    move-result v16

    .line 254
    .local v16, "scale":F
    new-instance v17, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    const/4 v7, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, v16

    move-object v6, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;IIFLandroid/graphics/PointF;Z)V

    .line 257
    .local v0, "animationEndCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    const/4 v1, 0x2

    if-ne v10, v1, :cond_6b

    .line 258
    invoke-virtual {v14, v9, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_6f

    .line 260
    :cond_6b
    const/4 v1, 0x0

    invoke-virtual {v15, v9, v1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 263
    :goto_6f
    invoke-direct {v8, v9, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    .line 264
    return-void
.end method

.method public updateUserIdIfNeeded(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 603
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    if-ne v0, p1, :cond_5

    .line 604
    return-void

    .line 606
    :cond_5
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 609
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 611
    .local v1, "fullMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 612
    .local v2, "windowMagnificationManager":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 613
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 614
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 615
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 616
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_34

    .line 618
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onUserChanged(I)V

    .line 619
    if-eqz v1, :cond_2e

    .line 620
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(Z)V

    .line 622
    :cond_2e
    if-eqz v2, :cond_33

    .line 623
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableAllWindowMagnifiers()V

    .line 625
    :cond_33
    return-void

    .line 616
    .end local v1    # "fullMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v2    # "windowMagnificationManager":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method
